
# coding: utf-8

# In[7]:

from attention import new_nl2code_model, new_code2nl_model, load_model
from vocab import load_vocabs, read_data, tok_type2id, START, END, UNK


# In[45]:

import argparse
from itertools import count
from collections import defaultdict
from random import shuffle, randrange
import math
import dynet as dy
import logging
from datetime import datetime


# In[3]:

def partition(pairs):
    len2set = defaultdict(list)
    for src, trg in pairs:
        len2set[len(src)].append((src, trg))
    return len2set


# In[5]:

def batch_iter(len2pairs, batch_size):
    len2pairs = {length: [p for p in pairs] for length, pairs in len2pairs.items()}
    count = 0
    for pairs in len2pairs.values():
        shuffle(pairs)
        count += len(pairs)
    while count > 0:
        cursor = randrange(count)
        prev_count = 0
        for pairs in len2pairs.values():
            if prev_count <= cursor < prev_count + len(pairs):
                batch_count = min(batch_size, len(pairs))
                yield pairs[:batch_count]
                count -= batch_count
                del pairs[:batch_count]
                break
            prev_count += len(pairs)


# In[ ]:

def main():
    parser = argparse.ArgumentParser(description='Train attention model')
    parser.add_argument('--nl_embed_dim', default=256, type=int)
    parser.add_argument('--nl_rnn_layers', default=1, type=int)
    parser.add_argument('--nl_rnn_state_dim', default=256, type=int)
    parser.add_argument('--code_embed_dim', default=256, type=int)
    parser.add_argument('--code_rnn_layers', default=1, type=int)
    parser.add_argument('--code_rnn_state_dim', default=256, type=int)
    # parser.add_argument('--rnn_token_mlp_dim', default=128, type=int)
    # parser.add_argument('--rnn_type_mlp_dim', default=32, type=int)
    # parser.add_argument('--rnn_word_mlp_dim', default=128, type=int)
    parser.add_argument('--attention_dim', default=256, type=int)
    parser.add_argument('--dropout', default=0.5, type=float)
    parser.add_argument('--rnn_dropout', default=0.2, type=float)
    parser.add_argument('--nl_to_code', default=True, action='store_true')
    parser.add_argument('--code_to_nl', dest='nl_to_code', action='store_false')
    parser.add_argument('--vocab_file', default='./vocab.dmp', type=str)
    parser.add_argument('--batch_size', default=32, type=int)
    parser.add_argument('--train_set', default='./train.txt', type=str)
    parser.add_argument('--valid_set', default='./valid.txt', type=str)
    parser.add_argument('--trainer', default='adam', choices={'sgd', 'adam', 'adagrad'}, type=str)
    parser.add_argument('--learning_rate', type=float)

    args, unknown = parser.parse_known_args()
    
    is_nl2code = args.nl_to_code
    nl_voc2wid, nl_wid2voc, code_voc2wid, code_wid2voc = load_vocabs(args.vocab_file)
    args.nl_vocab_size = len(nl_wid2voc)
    args.code_vocab_size = len(code_wid2voc)
    args.num_token_type = len(tok_type2id) + 1 # count the undifined_token for <S> and </S>
    
    if is_nl2code:
        model, translator = new_nl2code_model(args)
        config_name = 'nl2code'
    else:
        model, translator = new_code2nl_model(args)
        config_name = 'code2nl'
    
    config_name = datetime.now().strftime(config_name + '_%m%d%H%M%S')

    logging.basicConfig(filename=config_name + '.log', level=logging.DEBUG, format='%(asctime)s %(message)s', datefmt='%m/%d/%Y %I:%M:%S %p')
    
    if args.trainer == 'sgd':
        trainer = dy.SimpleSGDTrainer(model)
        learning_rate = 1.0
    elif args.trainer == 'adam':
        trainer = dy.AdamTrainer(model)
        learning_rate = .001
    elif args.trainer == 'adagrad':
        trainer = dy.AdagradTrainer(model)
        learning_rate = .01
    
    if args.learning_rate is None:
        args.learning_rate = learning_rate
    
    def lookup_nl(seqs):
        return [[START] + map(lambda w:nl_voc2wid[w], seq) + [END] for seq in seqs]
    
    def lookup_code(seqs):
        return [[START] + map(lambda w:code_voc2wid[w[1]], seq) + [END] for seq in seqs]
    
    tokenized_nl_train, tokenized_code_train = read_data(args.train_set)
    tokenized_nl_valid, tokenized_code_valid = read_data(args.valid_set)
    
    nl_train = lookup_nl(tokenized_nl_train)
    nl_valid = lookup_nl(tokenized_nl_valid)
    code_train = lookup_code(tokenized_code_train)
    code_valid = lookup_code(tokenized_code_valid)

    # get statistics
    print 'nl vocab size: %d, code vocab size: %d' % (len(nl_voc2wid), len(code_voc2wid))
    print '# train set: %d, # valid set: %d' % (len(nl_train), len(nl_valid))
    print 'avg. intent length: %f' % (sum(len(x) for x in nl_train + nl_valid) / float(len(nl_train) + len(nl_valid)))
    print 'avg. code length: %f' % (sum(len(x) for x in code_train + code_valid) / float(len(code_train) + len(code_valid)))
    
    if is_nl2code:
        train_pairs = partition(zip(nl_train, code_train))
        valid_pairs = partition(zip(nl_valid, code_valid))
    else:
        train_pairs = partition(zip(code_train, nl_train))
        valid_pairs = partition(zip(code_valid, nl_valid))
    
    def validate_loss():
        cum_loss = 0.0
        cum_trg_item_count = 0
        for batch_pairs in batch_iter(valid_pairs, args.batch_size):
            src_seqs, trg_seqs = map(list, zip(*batch_pairs))
            dy.renew_cg()
            batch_loss = translator.calc_loss(src_seqs, trg_seqs, training=False)
            cum_loss += batch_loss.value()
            cum_trg_item_count += sum(map(len, trg_seqs))
        return cum_loss, cum_trg_item_count

    logging.info('config: %s', args)
    logging.info('nl vocab size: %d, code vocab size: %d' % (len(nl_voc2wid), len(code_voc2wid)))

    min_v_cum_loss, v_cum_trg_item_count = validate_loss()
    min_v_cum_perplexity = math.exp(min_v_cum_loss / v_cum_trg_item_count)
    logging.info('epoch %d, #validation item count#\t%d' % (0, v_cum_trg_item_count))
    logging.info('epoch %d, #validation total loss#\t%f' % (0, min_v_cum_loss))
    logging.info('epoch %d, #validation per item loss#\t%f' % (0, min_v_cum_loss / v_cum_trg_item_count))
    logging.info('epoch %d, #validation perplexity#\t%f' % (0, min_v_cum_perplexity))
    
    for epoch in count(1):
        epoch_cum_loss = 0.0
        epoch_cum_trg_item_count = 0
        for batch_id, batch_pairs in enumerate(batch_iter(train_pairs, args.batch_size), 1):
            src_seqs, trg_seqs = map(list, zip(*batch_pairs))
            dy.renew_cg()
            batch_loss = translator.calc_loss(src_seqs, trg_seqs, training=True)
            batch_loss.backward()
            trainer.update(args.learning_rate)
            batch_loss_value = batch_loss.value()
            batch_trg_item_count = sum(map(len, trg_seqs))
            batch_per_item_loss = batch_loss_value / batch_trg_item_count
            epoch_cum_loss += batch_loss_value
            epoch_cum_trg_item_count += batch_trg_item_count
            epoch_cum_perplexity = math.exp(epoch_cum_loss / epoch_cum_trg_item_count)
            if batch_id % 100 == 0:
                logging.info('epoch %d, batch %d, batch_per_item_loss %f, epoch_cum_perplexity %f' %                              (epoch, batch_id, batch_per_item_loss, epoch_cum_perplexity))
        trainer.update_epoch(args.learning_rate)
    
        epoch_cum_perplexity = math.exp(epoch_cum_loss / epoch_cum_trg_item_count)
        logging.info('epoch %d, #training item count#\t%d' % (epoch, epoch_cum_trg_item_count))
        logging.info('epoch %d, #training total loss#\t%f' % (epoch, epoch_cum_loss))
        logging.info('epoch %d, #training per item loss#\t%f' % (epoch, epoch_cum_loss / epoch_cum_trg_item_count))
        logging.info('epoch %d, #training perplexity#\t%f' % (epoch, epoch_cum_perplexity))
        
        v_cum_loss, v_cum_trg_item_count = validate_loss()
        v_cum_perplexity = math.exp(v_cum_loss / v_cum_trg_item_count)
        logging.info('epoch %d, #validation item count#\t%d' % (epoch, v_cum_trg_item_count))
        logging.info('epoch %d, #validation total loss#\t%f' % (epoch, v_cum_loss))
        logging.info('epoch %d, #validation per item loss#\t%f' % (epoch, v_cum_loss / v_cum_trg_item_count))
        logging.info('epoch %d, #validation perplexity#\t%f' % (epoch, v_cum_perplexity))
        
        if v_cum_loss < min_v_cum_loss:
            min_v_cum_loss = v_cum_loss
            min_v_cum_perplexity = v_cum_perplexity
            dmp_name = config_name + '_model_dmp'
            model.save(dmp_name, [translator])
            logging.info('epoch %d, model saved to %s' % (epoch, dmp_name))


# In[ ]:

if __name__ == '__main__':
    main()

