
# coding: utf-8

# In[11]:

import pickle

import dynet as dy

from attention import load_model
from py2_tokenize import tokenize_code
from vocab import tokenize_nl, load_vocabs, tok_type2id, START, END, SKIP_TOKENS

# In[16]:
# In[4]:


# In[2]:

code2nl_model, code2nl_translator = load_model('code2nl_0817222402_model_dmp')  # 'code2nl_0816223821_model_dmp' -> bowen retrained
nl2code_model, nl2code_translator = load_model('nl2code_0817222812_model_dmp')  # 'nl2code_0816213250_model_dmp' -> bowen retrained


# In[5]:

nl_voc2wid, nl_wid2voc, code_voc2wid, code_wid2voc = load_vocabs('vocab.dmp')


# In[6]:

def lookup_nl(seqs):
    return [[START] + map(lambda w: nl_voc2wid[w], seq) + [END] for seq in seqs]

def lookup_code(seqs):
    return [[START] + map(lambda w: code_voc2wid[w[1]], seq) + [END] for seq in seqs]


# In[9]:

def bi_likelihood(nl, code):
    dy.renew_cg()
    nl = tokenize_nl(nl)
    code = [(token_type, token_literal) for token_type, token_literal in tokenize_code(code) if token_type not in SKIP_TOKENS]
    nl = lookup_nl([nl])
    code = lookup_code([code])
    nl2code_prob = -nl2code_translator.calc_loss(nl, code, training=False)
    code2nl_prob = -code2nl_translator.calc_loss(code, nl, training=False)
    return (nl2code_prob.value() / sum(map(len, code)), code2nl_prob.value() / sum(map(len, nl)))


# In[12]:

candidates = pickle.load(open('candidates.p', 'rb'))
questions = pickle.load(open('questions.p', 'rb'))


# In[ ]:

result = {}
#for post_id, intent in intents.items():
for post_id in candidates:
    intent = questions[post_id]['title']
    result[post_id] = {}
    for snippet in candidates[post_id]:
        result[post_id][snippet] = bi_likelihood(intent.encode('utf-8'), snippet.encode('utf-8'))


# In[23]:

pickle.dump(result, open('bi_likelihood.p', 'wb'))


# In[ ]:




