
# coding: utf-8

# In[1]:

from java_tokenize import *
from collections import Counter, defaultdict
import re
import csv
from itertools import chain
import argparse


# In[2]:

from cloudpickle import dump, load
# from cPickle import load, dump


# In[3]:

# SKIP_TOKENS = {COMMENT, ENDMARKER}
SKIP_TOKENS = set()
TOKEN_TYPE_COUNT = len(token_id) - len(SKIP_TOKENS)


# In[4]:

def tokenize_nl(nl):
    nl = nl.lower()
    return re.findall(r"[\w]+|[^\s\w]", nl)


# In[21]:

tok_type2id = {token_type: token_id for token_id, token_type in enumerate(set(token_name.keys()) - SKIP_TOKENS, 1)}


# In[5]:

UNK = 0
START = 1
END = 2


# In[6]:

def build_vocab(words, unk_threshold = 0):
    word_count = Counter(words)
    voc2wid = defaultdict(lambda: UNK, {'<S>': START, '</S>': END})
    for word in word_count:
        if word_count[word] > unk_threshold:
            voc2wid[word] = len(voc2wid) + 1
    wid2voc = {voc2wid[word]: word for word in voc2wid}
    wid2voc[0] = '<UNK>'
    return voc2wid, wid2voc


# In[7]:

def read_data(path):
    tokenized_nl_list, tokenized_code_list = [], []
    with open(path, 'r') as f:
        # csv_data = csv.reader(data, dialect=csv.excel_tab, delimiter='\t')
        for line in f:
            try:
                row = line.split('\t')
                qid = int(row[0])
                rid = int(row[1])
                nl = row[2]
                code = row[3]
                weight = float(row[4])
                # qid, rid, nl, code, weight = row
                nl = nl.decode('utf-8').encode('ascii', 'replace').decode('string_escape')
                code = code.decode('utf-8').encode('ascii', 'replace').replace('##newline##', '\n') #.decode('string_escape')
                nl = tokenize_nl(nl)
                tokenzied_code = [(token_type, token_literal) for token_type, token_literal in tokenize_code(code) if token_type not in SKIP_TOKENS]
                tokenized_nl_list.append(nl)
                tokenized_code_list.append(tokenzied_code)
            except:
                print 'error loading data: ', row, path
                continue

    return tokenized_nl_list, tokenized_code_list


# In[8]:

def load_vocabs(path):
    return load(open(path, 'rb'))


# In[9]:

def main():
    parser = argparse.ArgumentParser(description='Build vocabulary')
    parser.add_argument('--dataset', default='./train.txt', type=str)
    parser.add_argument('--nl_unk_threshold', default=2, type=int)
    parser.add_argument('--code_unk_threshold', default=2, type=int)
    parser.add_argument('--save_to', default='./vocab.dmp', type=str)
    args = parser.parse_args()

    tokenized_nl_list, tokenized_code_list = read_data(args.dataset)
    nl_voc2wid, nl_wid2voc = build_vocab(chain(*tokenized_nl_list), args.nl_unk_threshold)
    code_voc2wid, code_wid2voc = build_vocab(map(lambda x: x[1], chain(*tokenized_code_list)), args.code_unk_threshold)
    dump((nl_voc2wid, nl_wid2voc, code_voc2wid, code_wid2voc), open(args.save_to, 'wb'))

# In[10]:

if __name__ == '__main__':
    main()


# In[ ]:



