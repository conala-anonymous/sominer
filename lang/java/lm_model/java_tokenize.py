
# coding: utf-8

# In[1]:

# from tokenize import *
# from token import tok_name as py_token_name
from StringIO import StringIO
import javalang  # for tokenization
import inspect, sys

clsmembers = inspect.getmembers(sys.modules['javalang.tokenizer'], inspect.isclass)
token_type2name = {cls:cls_name for cls_name, cls in clsmembers if issubclass(cls, javalang.tokenizer.JavaToken)}


# In[2]:

token_id = {token_name: token_id for token_id, token_name in enumerate(sorted(token_type2name.values()))}
token_name = {token_id[token_name]: token_name for token_name in token_id}


# In[3]:

def add_token(name):
    tid = len(token_id)
    token_id[name] = tid
    token_name[tid] = name
    return tid


# In[4]:

TOKEN_NAME = 'Identifier'
TOKEN_SUBNAME = 'SUBNAME'
TOKEN_NAMECON = 'NAMECON'
SUBNAME = add_token(TOKEN_SUBNAME)
NAMECON = add_token(TOKEN_NAMECON)


# In[5]:

def tokenize_camel_case(string):
    words = []
    from_char_position = 0
    for current_char_position, (current_char, prev_char) in enumerate(zip(string,'a' + string)):
        if prev_char.isupper() and current_char.islower() and from_char_position < current_char_position - 1:
            words.append(string[from_char_position:current_char_position - 1])
            from_char_position = current_char_position - 1
    words.append(string[from_char_position:])
    return words


# In[6]:

def tokenize_underscore(string):
    words = []
    for word in string.split('_'):
        if words:
            words.append('_')
        if word:
            words.append(word)
    return words


# In[7]:

def tokenize_name(string, concat_symbol=None):
    words = []
    con = [] if concat_symbol is None else [(NAMECON, concat_symbol)]
    for sub_name in tokenize_camel_case(string):
        for word in tokenize_underscore(sub_name):
            words += [(SUBNAME, word)] + con
    if words and words[-1] == concat_symbol:
        return words[:-1]
    return words


# In[8]:

def tokenize_code(string, concat_symbol=None):
    tokens = []
    new_string = string.strip().decode('utf-8').encode('ascii', 'replace') #.decode('string_escape')
    try:
        for token in javalang.tokenizer.tokenize(new_string):
            tokval = token.value
            tokname = token_type2name[type(token)]
            if type(token) == javalang.tokenizer.Identifier:
                tokens.extend(tokenize_name(tokval, concat_symbol=concat_symbol))
            elif type(token) == javalang.tokenizer.String:
                tokens.append((token_id[tokname], '__STRING__'))
            else:
                tokens.append((token_id[tokname], tokval))
    except:
        print '*' * 60
        print("Unexpected error:", sys.exc_info())
        print string
        print '*' * 60
        raise
        
    return tokens


# In[ ]:



