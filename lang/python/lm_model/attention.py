
# coding: utf-8

# In[1]:

import dynet as dy
import numpy as np
from contextlib import contextmanager
from collections import Iterable


DROPOUT_RATE = 0.7


# In[2]:

@contextmanager
def parameters(*params, **kargs):
    trainable = 'trainable' not in kargs or kargs['trainable']
    yield tuple(map(lambda x:dy.parameter(x, update=trainable), params))


# In[3]:

class Attender(dy.Saveable):
    def __init__(self, model, input_dim, state_dim, hidden_dim):
        self.input_dim = input_dim
        self.state_dim = state_dim
        self.hidden_dim = hidden_dim

        self.W_src = model.add_parameters((hidden_dim, input_dim))
        self.W_h = model.add_parameters((hidden_dim, state_dim))
        self.b = model.add_parameters(hidden_dim)
        self.U = model.add_parameters((1, hidden_dim))
        
    def get_components(self):
        return [self.W_src, self.W_h, self.b, self.U]
    
    def restore_components(self, components):
        self.W_src, self.W_h, self.b, self.U = components

    def get_src_transformation(self, src_enc_all, training=True):
        with parameters(self.W_src, self.b, trainable=training) as (W_src, b):
            return dy.affine_transform([b, W_src, src_enc_all])
    
    def calc_attention(self, src_trans_att, h_t, training=True):
        with parameters(self.W_h, self.U, trainable=training) as (W_h, U):
            att_hidden = dy.tanh(dy.colwise_add(src_trans_att, W_h * h_t))
            att_weights = dy.transpose(U * att_hidden)
            att_weights = dy.softmax(att_weights)

            return att_weights

    def calc_context(self, src_enc_all, src_trans_att, h_t, training=True):
        att_weights = self.calc_attention(src_trans_att, h_t, training=training)
        context = src_enc_all * att_weights

        return context, att_weights


# In[4]:

class LookupEmbedder(dy.Saveable):
    def __init__(self, model, vocab_size, embed_dim):
        self.vocab_size = vocab_size
        self.embed_dim = embed_dim
        self.embeddings = model.add_lookup_parameters((vocab_size, embed_dim))

    def get_components(self):
        return [self.embeddings]
    
    def restore_components(self, components):
        self.embeddings, = components
    
    def embed_item(self, item, training=True):
        return self.embeddings.batch(item)
    
    def embed_sequence(self, sequence, training=True):
        return [self.embeddings.batch(items) for items in zip(*sequence)]


# In[5]:

class OneHotEmbedder(dy.Saveable):
    def __init__(self, vocab_size, id_index=0):
        self.vocab_size = vocab_size
        self.embed_dim = vocab_size
        self.id_index = id_index
    
    def get_components(self):
        return []
    
    def restore_components(self, components):
        return
    
    def embed_item(self, item, training=True):
        batch_size = len(item)
        e = np.zeros((self.vocab_size, batch_size))
        e[map(lambda x:x[self.id_index], item), range(batch_size)] = 1
        return dy.inputTensor(e, batched=True)
    
    def embed_sequence(self, sequence, training=True):
        seq_embed = []
        batch_size = len(sequence)
        idx = range(batch_size)
        for items in zip(*sequence):
            e = np.zeros((self.vocab_size, batch_size))
            e[map(lambda x:x[self.id_index], items), idx] = 1
            seq_embed.append(dy.inputTensor(e, batched=True))
        return seq_embed


# In[6]:

class ConcatEmbedder(dy.Saveable):
    def __init__(self, *embedders):
        self.vocab_size = tuple(map(lambda x:x.vocab_size, embedders))
        self.embed_dim = sum(map(lambda x:x.embed_dim, embedders))
        self.embedders = embedders
    
    def get_components(self):
        return self.embedders
    
    def restore_components(self, components):
        self.embedders = components
    
    def embed_item(self, item, training=True):
        return dy.concatenate(map(lambda x:x.embed_item(item, training), self.embedders))
    
    def embed_sequence(self, sequence, training=True):
        seq_embeds = map(lambda x:x.embed_sequence(sequence, training), self.embedders)
        return [dy.concatenate(list(item_embeds)) for item_embeds in zip(*seq_embeds)]


# In[7]:

class Encoder(dy.Saveable):
    def __init__(self, model, embedder, layers, state_dim, rnn_dropout):
        self.embedder = embedder
        self.input_dim = embedder.embed_dim
        self.layers = layers
        self.state_dim = state_dim
        self.rnn_dropout = rnn_dropout
        self.encoder = dy.LSTMBuilder(layers, self.input_dim, state_dim, model)
    
    def get_components(self):
        return [self.embedder, self.encoder]
    
    def restore_components(self, components):
        self.embedder, self.encoder = components
    
    def encode(self, sequence, training=True):
        seq_embed = self.embedder.embed_sequence(sequence)
        if training and self.rnn_dropout > 0.:
            self.encoder.set_dropout(self.rnn_dropout)
        else:
            self.encoder.disable_dropout()

        forward_states = self.encoder.initial_state().transduce(seq_embed)
        return forward_states
        # return dy.concatenate_cols(self.encoder.initial_state().transduce(seq_embed))


# In[8]:

class MLP(dy.Saveable):
    def __init__(self, model, input_dim, hidden_dim, output_dim):
        self.input_dim = input_dim
        self.hidden_dim = hidden_dim
        self.output_dim = output_dim
        self.W1 = model.add_parameters((hidden_dim, input_dim))
        self.b1 = model.add_parameters(hidden_dim)
        self.W2 = model.add_parameters((output_dim, hidden_dim))
        self.b2 = model.add_parameters(output_dim)
    
    def get_components(self):
        return [self.W1, self.b1, self.W2, self.b2]
    
    def restore_components(self, components):
        self.W1, self.b1, self.W2, self.b2 = components
    
    def __call__(self, x, training=True):
        with parameters(self.W1, self.b1, self.W2, self.b2, trainable=training) as (W1, b1, W2, b2):
            h = dy.tanh(dy.affine_transform([b1, W1, x]))
            if training:
                h = dy.dropout(h, DROPOUT_RATE)
            return dy.affine_transform([b2, W2, h])


# In[9]:

class Decoder(dy.Saveable):
    def __init__(self, model, embedder, layers, context_dim, state_dim, rnn_dropout, dropout):
        self.embedder = embedder
        self.layers = layers
        self.context_dim = context_dim
        self.state_dim = state_dim
        self.input_dim = embedder.embed_dim + context_dim
        self.rnn_dropout = rnn_dropout
        self.dropout = dropout
        self.decoder = dy.LSTMBuilder(layers, self.input_dim, state_dim, model)

        self.src_enc_trans_W = model.add_parameters((state_dim, context_dim))
        self.src_enc_trans_b = model.add_parameters(state_dim)
        self.W_h = model.add_parameters((self.embedder.embed_dim, self.context_dim + self.state_dim))
        self.b_h = model.add_parameters(self.embedder.embed_dim)
        self.W_y = model.add_parameters((self.embedder.vocab_size, self.embedder.embed_dim))
        self.b_y = model.add_parameters(self.embedder.vocab_size)
    
    def get_components(self):
        return [self.embedder, self.decoder] + [self.src_enc_trans_W, self.src_enc_trans_b] + \
               [self.W_h, self.b_h, self.W_y, self.b_y]
    
    def restore_components(self, components):
        self.embedder, self.decoder, \
        self.src_enc_trans_W, self.src_enc_trans_b, \
        self.W_h, self.b_h, self.W_y, self.b_y = components

    def initialize(self, src_encodings, training=True):
        if training and self.rnn_dropout > 0.:
            self.decoder.set_dropout(self.rnn_dropout)
        else:
            self.decoder.disable_dropout()

        with parameters(self.src_enc_trans_W, self.src_enc_trans_b, trainable=training) as (src_enc_trans_W, src_enc_trans_b):
            last_enc_state = src_encodings[-1]
            decoder_init_state = dy.tanh(dy.affine_transform([src_enc_trans_b, src_enc_trans_W, last_enc_state]))
            state = self.decoder.initial_state([decoder_init_state, decoder_init_state])

            return state
    
    def calc_loss(self, h_t, ctx_t, ref_y_t, training=True):
        with parameters(self.W_h, self.b_h, self.W_y, self.b_y, trainable=training) as (W_h, b_h, W_y, b_y):
            read_out = dy.tanh(dy.affine_transform([b_h, W_h, dy.concatenate([h_t, ctx_t])]))

            if training and self.dropout > 0.:
                read_out = dy.dropout(read_out, self.dropout)

            y_t = dy.affine_transform([b_y, W_y, read_out])
            loss_t = dy.pickneglogsoftmax_batch(y_t, ref_y_t)

            return loss_t


# In[10]:

class Translator(dy.Saveable):
    def __init__(self, encoder, attender, decoder):
        self.encoder = encoder
        self.attender = attender
        self.decoder = decoder
    
    def get_components(self):
        return [self.encoder, self.attender, self.decoder]
    
    def restore_components(self, components):
        self.encoder, self.attender, self.decoder = components
    
    def calc_loss(self, src_seqs, trg_seqs, training=True):
        batch_size = len(src_seqs)
        src_encodings = self.encoder.encode(src_seqs, training=training)
        src_enc_all = dy.concatenate_cols(src_encodings)
        src_trans_att = self.attender.get_src_transformation(src_enc_all, training=training)
        state = self.decoder.initialize(src_encodings, training=training)
        ctx_tm1 = dy.vecInput(self.encoder.state_dim)
        losses = []

        max_len = max(map(len, trg_seqs))
        for i in xrange(1, max_len):
            y_tm1 = [trg_seq[i - 1] if i < len(trg_seq) else trg_seq[-1] for trg_seq in trg_seqs]
            ref_y_t = [trg_seq[i] if i < len(trg_seq) else trg_seq[-1] for trg_seq in trg_seqs]
            y_tm1_embed = self.decoder.embedder.embed_item(y_tm1, training=training)

            x = dy.concatenate([y_tm1_embed, ctx_tm1])
            state = state.add_input(x)
            h_t = state.output()
            ctx_t, alpha_t = self.attender.calc_context(src_enc_all, src_trans_att, h_t, training=training)

            loss_t = self.decoder.calc_loss(h_t, ctx_t, ref_y_t, training=training)

            mask = dy.inputVector([1 if i < len(trg_seq) else 0 for trg_seq in trg_seqs])
            mask = dy.reshape(mask, (1,), batch_size)
            loss_t = dy.sum_batches(loss_t * mask)

            ctx_tm1 = ctx_t
            losses.append(loss_t)

        loss = dy.esum(losses)
        return loss


# In[14]:

def new_nl2code_model(args):
    model = dy.Model()
    src_embedder = LookupEmbedder(model, args.nl_vocab_size, args.nl_embed_dim)
    encoder = Encoder(model, src_embedder, args.nl_rnn_layers, args.nl_rnn_state_dim, args.rnn_dropout)
    # trg_onehot = OneHotEmbedder(num_token_type, 0)
    # trg_lookup = LookupEmbedder(model, code_vocab_size, code_embed_dim, 1)
    # trg_embedder = ConcatEmbedder(trg_onehot, trg_lookup)
    # trg_tok_lookup = LookupEmbedder(model, num_token_type, tok_embed_dim)
    trg_code_lookup = LookupEmbedder(model, args.code_vocab_size, args.code_embed_dim)
    # trg_embedder = ConcatEmbedder(trg_tok_lookup, trg_code_lookup)
    decoder = Decoder(model, trg_code_lookup, args.code_rnn_layers, encoder.state_dim, args.code_rnn_state_dim, args.rnn_dropout, args.dropout)
    attender = Attender(model, encoder.state_dim, decoder.state_dim, args.attention_dim)
    translator = Translator(encoder, attender, decoder)
    return model, translator


# In[15]:

def new_code2nl_model(args):
    model = dy.Model()
    # src_onehot = OneHotEmbedder(num_token_type, 0)
    # src_lookup = LookupEmbedder(model, code_vocab_size, code_embed_dim, 1)
    # src_embedder = ConcatEmbedder(src_onehot, src_lookup)
    # src_tok_lookup = LookupEmbedder(model, args.num_token_type, args.tok_embed_dim)
    src_code_lookup = LookupEmbedder(model, args.code_vocab_size, args.code_embed_dim)
    # src_embedder = ConcatEmbedder(src_tok_lookup, src_code_lookup)
    encoder = Encoder(model, src_code_lookup, args.code_rnn_layers, args.code_rnn_state_dim, args.rnn_dropout)
    trg_embedder = LookupEmbedder(model, args.nl_vocab_size, args.nl_embed_dim)
    decoder = Decoder(model, trg_embedder, args.nl_rnn_layers, encoder.state_dim, args.nl_rnn_state_dim, args.rnn_dropout, args.dropout)
    attender = Attender(model, encoder.state_dim, decoder.state_dim, args.attention_dim)
    translator = Translator(encoder, attender, decoder)
    return model, translator


# In[16]:

def load_model(dump_path):
    model, (translator,) = dy.Model.from_file(dump_path)
    return model, translator


# In[ ]:



