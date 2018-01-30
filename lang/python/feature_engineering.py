from itertools import chain

import numpy as np
from sklearn import preprocessing

from lang.python.lm_model.py2_tokenize import tokenize_code
from lang.python.lm_model.vocab import tokenize_nl
from lang.python.parse_py import start_with_assign, only_value, normalize_code_response, is_annotated, tokenize

np.random.seed(1231245)
np.seterr(all='raise')

import pickle
from collections import defaultdict
import ast

from sklearn.model_selection import KFold
from scipy.stats.mstats import zscore
from sklearn.linear_model import LogisticRegression


#generate all the contiguous sinppet candidates (after normalization)
#also generate following features for every candidate:
#start_of_line, end_of_line, end_of_block, whole_block, starts_assign, single_value
def sub_contiguous_snippets(code_snippet, full_line=True):
    tokens = tokenize(code_snippet)
    if not tokens:
        return []

    sub_snippet_set = list()
    sub_snippet_hash = set()
    for i in range(len(tokens)):
        start_of_line = i == 0 or tokens[i-1][1] != tokens[i][1]
        if full_line and not start_of_line:
            continue
        for j in range(i+1, len(tokens)+1):
            end_of_line = j == len(tokens) or tokens[j-1][1] != tokens[j][1]
            if full_line and not end_of_line:
                continue
            start_of_block = i == 0
            end_of_block = j == len(tokens)
            whole_block = i == 0 and end_of_block
            con_tokens, _ = zip(*tokens[i:j])
            cc_tokens = [' ', ]
            for t in con_tokens:
                if not cc_tokens[-1].isspace():
                    cc_tokens.append(' ')
                cc_tokens.append(t)
            sub_snippet = ''.join(cc_tokens[1:])
            normalized_sub_snippet = normalize_code_response(sub_snippet)
            if normalized_sub_snippet and len(normalized_sub_snippet) > 0:
                root = ast.parse(normalized_sub_snippet)
                starts_assign = start_with_assign(root)
                single_value = only_value(root)
                contains_import = 'import ' in normalized_sub_snippet

                # remove redundant results
                key = (normalized_sub_snippet, start_of_line, end_of_line, start_of_block, end_of_block, whole_block, starts_assign, single_value, contains_import)
                if key not in sub_snippet_hash:
                    sub_snippet_set.append((normalized_sub_snippet, {'start_of_line': start_of_line,
                                                                  'end_of_line': end_of_line,
                                                                  'start_of_block': start_of_block,
                                                                  'end_of_block': end_of_block,
                                                                  'whole_block': whole_block,
                                                                  'start_with_assign': starts_assign,
                                                                  'single_value': single_value,
                                                                  'contains_import': contains_import}))
                    sub_snippet_hash.add(key)
                else:
                    pass

                # sub_snippet_set.add((normalized_sub_snippet, start_of_line, end_of_line, end_of_block, whole_block, starts_assign, single_value))

    return sub_snippet_set


#load data
annotations = pickle.load(open('annotations.p', 'rb'))
questions = pickle.load(open('questions.p', 'rb'))
acconly_baseline = pickle.load(open('accept_only_baseline.p', 'rb'))


#get ground truth for "snippet" annotation
positive_snippets = defaultdict(set)
for a in annotations:
    post_id = a['post_id']
    if a['snippet_ref'] in positive_snippets[post_id]:
        #print a
        #print snippet_pos[post_id]
        pass
    else:
        positive_snippets[post_id].add(a['snippet_ref'])
pickle.dump(positive_snippets, open('snippet_pos.p', 'wb'))
print 'num. labeled snippets: ', sum(map(len, positive_snippets.values()))


#generate all the snippet candidates
#they are used to compute bi-log likelihood
candidates = {}
for question_id, q in questions.items():
    cs = set()
    for answer in q['answer_posts']:
        for snippet in answer['snippets']:
            cs |= set(map(lambda x:x[0], sub_contiguous_snippets(snippet['code'], True)))
    candidates[question_id] = cs
pickle.dump(candidates, open('candidates.0822.rnn512.p', 'wb'))
print 'num. contiguous code snippets: ', sum(map(len, candidates.values()))


#load bi_likelihood feature for candidates
bi_likelihood = pickle.load(open('lm_model/bi_likelihood.no_len_normalization.p', 'rb'))


def get_score_feature(score=None, all_feat=False):
    if all_feat:
        return ['post_score_0~10', 'post_score_10~20', 'post_score_20~50', 'post_score_>50']
    if 0 <= score < 10:
        return 'post_score_0~10'
    elif score < 20:
        return 'post_score_10~20'
    elif score < 50:
        return 'post_score_20~50'
    else:
        return 'post_score_>50'


def get_line_num_feature(num_lines=None, all_feat=False):
    if all_feat:
        return ['num_lines=0', 'num_lines=1', 'num_lines=2', 'num_lines=3', 'num_lines<=5', 'num_lines<=10',
                'num_lines<=15', 'num_lines>15']
    if num_lines == 0:
        return 'num_lines=0'
    elif num_lines == 1:
        return 'num_lines=1'
    elif num_lines == 2:
        return 'num_lines=2'
    elif num_lines == 3:
        return 'num_lines=3'
    elif num_lines <= 5:
        return 'num_lines<=5'
    elif num_lines <= 10:
        return 'num_lines<=10'
    elif num_lines <= 15:
        return 'num_lines<=15'
    else:
        return 'num_lines>15'


#generate float vector feature for every candidate
def generate_x_y(question_id, question_entry, pos_set):
    examples = []
    answer_post_ids = [e['id'] for e in question_entry['answer_posts']]
    question_len = len(tokenize_nl(question_entry['title']))
    max_code_snippet_id = 0
    for answer_post in question_entry['answer_posts']:
        # generate contiguous sub-snippets from the current snippet block
        post_id = answer_post['id']
        post_score = answer_post['score']
        post_rank = answer_post['rank']
        for code_snippet_entry in answer_post['snippets']:
            code_snippet = code_snippet_entry['code']
            contiguous_snippets_with_features = sub_contiguous_snippets(code_snippet, full_line=True)
            try:
                for code, features in contiguous_snippets_with_features:
                    ll = bi_likelihood[question_id][code]
                    features['ll_nl2code'] = ll[0]
                    features['ll_code2nl'] = ll[1]

                    code_len = len(tokenize_code(code))
                    features['code_len'] = code_len
                    features['ll_nl2code_norm'] = features['ll_nl2code'] / code_len
                    features['ll_code2nl_norm'] = features['ll_code2nl'] / question_len

                    num_lines = len(code.split('\n'))
                    features['num_lines'] = num_lines
                    features[get_line_num_feature(num_lines)] = 1

                    features['post_rank_%d' % post_rank] = 1
                    features[get_score_feature(post_score)] = 1
                    features['accepted_ans'] = question_entry['accepted_answer_post_id'] == post_id
                    features['only_snippet'] = len(answer_post['snippets']) == 1

                    # combinatory features
                    features['accepted_ans && only_snippet'] = features['accepted_ans'] and features['only_snippet']
                    features['accepted_ans && only_snippet && whole_block'] = features['accepted_ans'] and features[
                        'only_snippet'] and features['whole_block']
                    features['!start_with_assign && end_of_block'] = (not features['start_with_assign']) and features[
                        'end_of_block']
                    features['start_with_assign && num_lines=1'] = features['start_with_assign'] and num_lines == 1
                    features['!start_with_assign && num_lines=1'] = (not features[
                        'start_with_assign']) and num_lines == 1

                    label = is_annotated(code, pos_set[question_id])
                    examples.append({'code': code, 'features': features,
                                     'question_id': question_id, 'parent_answer_post_id': post_id, 'code_snippet_id': max_code_snippet_id,
                                     'label': label})
                # raw_likelihood = {(c, s, e, end_block, full_block, assign, one_value, answer_post_id): bi_likelihood[post_id][c] for c, s, e, end_block, full_block, assign, one_value in sub_contiguous_snippets(code_snippet, True)}
            except Exception as ex:
                print '========='
                print code_snippet
                print question_id
                raise ex

            max_code_snippet_id += 1
        # if len(raw_likelihood) == 0:
        #     print post_id
        #     print code_snippet
        #     continue
        #print raw_likelihood
        #print sub_contiguous_snippets(ss)
        #keys, likelihoods = zip(*raw_likelihood.items())
        #code, start, end, end_of_blocks, full_blocks, assigns, one_values, _snippet_ids = zip(*keys)
        # X = np.hstack([np.array(likelihoods), np.array(zip(end_of_blocks, full_blocks, assigns, one_values))])
        # features.extend((c, x) for c, x, s, e in zip(code, X, start, end) if s and e and c)
    if len(examples) == 0:
        # raise RuntimeError('no examples extracted!')
        return []

    # now we are sure that we have at least one extracted examples
    likelihoods = np.asarray(map(lambda x: (x['features']['ll_nl2code'], x['features']['ll_code2nl']), examples))
    example_num = len(examples)
    if example_num == 1:
        # default value for z_score
        z_scores = np.zeros((example_num, 2))
    else:
        z_scores = zscore(likelihoods, axis=0)

    max_z = np.amax(z_scores, axis=1)
    max_ll = np.amax(likelihoods, axis=1)
    min_z = np.amin(z_scores, axis=1)
    min_ll = np.amin(likelihoods, axis=1)

    # compute in-answer-post z-score
    in_answer_post_z_scores = np.zeros((example_num, 2))
    for answer_post_id in answer_post_ids:
        example_ids = [i for i in xrange(example_num) if examples[i]['parent_answer_post_id'] == answer_post_id]
        try:
            example_likelihoods = likelihoods[example_ids]
            cur_in_answer_post_z_scores = zscore(example_likelihoods, axis=0)
            in_answer_post_z_scores[example_ids] = cur_in_answer_post_z_scores
        except FloatingPointError:
            pass

    # compute in-snippet z-score
    in_snippet_z_scores = np.zeros((example_num, 2))
    for code_snippet_id in xrange(max_code_snippet_id):
        example_ids = [i for i in xrange(example_num) if examples[i]['code_snippet_id'] == code_snippet_id]
        try:
            example_likelihoods = likelihoods[example_ids]
            cur_in_snippet_z_scores = zscore(example_likelihoods, axis=0)
            in_snippet_z_scores[example_ids] = cur_in_snippet_z_scores
        except FloatingPointError:
            pass

    # add new features to examples
    for i in xrange(example_num):
        example = examples[i]
        example['features'].update({'ll_page_zscore_nl2code': z_scores[i][0],
                                    'll_page_zscore_code2nl': z_scores[i][1],
                                    'll_snippet_zscore_nl2code': in_snippet_z_scores[i][0],
                                    'll_snippet_zscore_code2nl': in_snippet_z_scores[i][1],
                                    'll_answer_post_zscore_nl2code': in_answer_post_z_scores[i][0],
                                    'll_answer_post_zscore_code2nl': in_answer_post_z_scores[i][1],
                                    'll_page_max_zscore': max_z[i],
                                    'll_page_min_zscore': min_z[i],
                                    'll_max': max_ll[i],
                                    'll_min': min_ll[i]})

    if np.sum(np.isnan(likelihoods)) > 0 or np.sum(np.isnan(z_scores)) > 0 or np.sum(np.isnan(in_answer_post_z_scores)) > 0:
        raise RuntimeError('nan in feature vectors!')

    return examples


# post_list = [(question_id, questions[question_id]['snippets']) for question_id, snippets in positive_snippets.items() if snippets]
post_list = []
for question_id, _ in positive_snippets.iteritems():
    snippets = list()
    for answer_post in questions[question_id]['answer_posts']:
        in_post_snippets = [entry['code'] for entry in answer_post['snippets']]
        snippets.extend(in_post_snippets)
    post_list.append((question_id, snippets))
np.random.shuffle(post_list)
pickle.dump(post_list, open('post_list.p', 'wb'))


# a dict that maps question ids to extracted examples
page_examples_map = {}
# for post_id, codes in post_list:
#     page_examples_map[post_id] = generate_x_y(post_id, codes, positive_snippets)
for question_id, question in questions.iteritems():
    page_examples_map[question_id] = generate_x_y(question_id, question, positive_snippets)
    # for answer_post in question['answer_posts']:


full_features = ['ll_nl2code', 'll_code2nl',
                 'll_nl2code_norm', 'll_code2nl_norm',
                 'll_page_zscore_nl2code', 'll_page_zscore_code2nl',
                 #'ll_snippet_zscore_nl2code', 'll_snippet_zscore_code2nl',
                 #'ll_answer_post_zscore_nl2code', 'll_answer_post_zscore_code2nl',
                 #'ll_page_max_zscore', 'll_page_min_zscore',
                 'll_max', 'll_min',
                 'start_of_block', 'end_of_block',
                 'whole_block', 'start_with_assign',
                 'single_value', 'contains_import',
                 'accepted_ans', 'only_snippet',
                 # 'accepted_ans && only_snippet',
                 'accepted_ans && only_snippet && whole_block',
                 '!start_with_assign && end_of_block',
                 #'start_with_assign && num_lines=2',
                 '!start_with_assign && num_lines=1',
                 # 'num_lines',
                 'post_rank_0', 'post_rank_1', 'post_rank_2'
                 ] + get_line_num_feature(all_feat=True) # + get_score_feature(all_feat=True)

features_name_pos_map = {name: pos for pos, name in enumerate(full_features)}

semi_features = [ 'll_nl2code', 'll_code2nl',
                  'll_nl2code_norm', 'll_code2nl_norm',
                  'll_page_zscore_nl2code', 'll_page_zscore_code2nl',
                  #'ll_snippet_zscore_nl2code', 'll_snippet_zscore_code2nl',
                 #'ll_answer_post_zscore_nl2code', 'll_answer_post_zscore_code2nl',
                 #'ll_page_max_zscore', 'll_page_min_zscore',
                  'll_max', 'll_min',
                 ]

binary_features = ['start_of_block', 'end_of_block',
                   'whole_block', 'start_with_assign',
                   'single_value', 'contains_import',
                   'accepted_ans', 'only_snippet',
                   # 'accepted_ans && only_snippet',
                   'accepted_ans && only_snippet && whole_block',
                   '!start_with_assign && end_of_block',
                   #'start_with_assign && num_lines=2',
                   '!start_with_assign && num_lines=1',
                   # 'num_lines',
                   'post_rank_0', 'post_rank_1', 'post_rank_2'
                   ] + get_line_num_feature(all_feat=True) # + get_score_feature(all_feat=True)


def to_feature_vector(feature_map, feature_names):
    if isinstance(feature_map, list):
        return np.array([map(lambda name: _feat_map[name] if name in _feat_map else 0, feature_names) for _feat_map in feature_map])
    elif isinstance(feature_map, dict):
        return np.array(map(lambda name: feature_map[name] if name in feature_map else 0, feature_names))


# cross validation
full_feature_samples = []
semi_feature_samples = []
bin_feature_samples = []

all_examples = list(chain(*page_examples_map.values()))

full_feature_weights = np.zeros(len(full_features))
semi_feature_weights = np.zeros(len(semi_features))
bin_feature_weights = np.zeros(len(binary_features))

fold_num = 5
folds = KFold(n_splits=fold_num, shuffle=True, random_state=123).split(post_list)

for fold_id, (train_set, test_set) in enumerate(folds, start=1):

    train_examples, train_y = [], []
    for i in train_set:
        pid = post_list[i][0]
        for example in page_examples_map[pid]:
            label = 1 if example['label'] else 0
            train_y.append(label)
            train_examples.append(example)

    test_examples, test_y = [], []
    for i in test_set:
        pid = post_list[i][0]
        for example in page_examples_map[pid]:
            feat_vec = to_feature_vector(example['features'], full_features)
            label = 1 if example['label'] else 0
            test_y.append(label)
            test_examples.append(example)

    print '=' * 30 + 'fold %d' % fold_id + '=' * 30
    print '[Fold %d] num. of train examples: %d, num. of test examples: %d' % (fold_id,
                                                                               len(train_examples),
                                                                               len(test_examples))
    print '[Fold %d] test questions ids: ' % fold_id, [post_list[i][0] for i in test_set]

    classifier = LogisticRegression(C=.1)
    # classifier = SVC(probability=True, C=0.5, class_weight={1: sum(train_y) * 1.0 / (len(train_y) - sum(train_y))})
    # classifier = MLPClassifier(hidden_layer_sizes=(30, ))

    #using all features
    full_feature_train_X = to_feature_vector([e['features'] for e in train_examples], full_features)
    full_feature_test_X = to_feature_vector([e['features'] for e in test_examples], full_features)

    #normalize features
    # normalizer = preprocessing.Normalizer().fit(full_feature_train_X)
    # X_all = preprocessing.scale(np.concatenate([full_feature_train_X, full_feature_test_X]))
    # full_feature_train_X = X_all[:len(train_examples)]
    # full_feature_test_X = X_all[len(train_examples):]

    if np.sum(np.isnan(full_feature_train_X)) > 0:
        raise RuntimeError('nan in feature vectors!')

    if np.sum(np.isnan(full_feature_test_X)) > 0:
        raise RuntimeError('nan in feature vectors!')

    print ' **** training full model ****'

    full_feature_clf = classifier.fit(full_feature_train_X, train_y)
    pickle.dump(full_feature_clf, open('full_feature_clf.p', 'wb'))
    predict_y = full_feature_clf.predict(full_feature_test_X)
    probas_ = full_feature_clf.predict_proba(full_feature_test_X)

    for feat_name, feat_weight in zip(full_features, full_feature_clf.coef_.flatten()):
        print feat_name, feat_weight

    full_feature_weights += full_feature_clf.coef_.flatten()

    # print full_feature_clf.coef_
    # print full_feature_clf.intercept_
    #print 'recall', recall_score(test_y, predict_y)
    #print 'precision', precision_score(test_y, predict_y)
    #print 'f1', f1_score(test_y, predict_y)

    for predict_label, prob, example in zip(predict_y, probas_, test_examples):
        full_feature_samples.append({'example': example, 'fold_id': fold_id,
                                     'predict_label': predict_label, 'probability': prob[1]})


    #using nn features
    semi_feature_selector = np.array([features_name_pos_map[x] for x in semi_features])
    semi_feature_train_X = full_feature_train_X[:, semi_feature_selector]
    semi_feature_test_X = full_feature_test_X[:, semi_feature_selector]

    print ' **** training semi-supervised model ****'

    semi_feature_clf = classifier.fit(semi_feature_train_X, train_y)
    # print semi_feature_clf.coef_
    # print semi_feature_clf.intercept_
    pickle.dump(semi_feature_clf, open('semi_feature_clf.p', 'wb'))
    predict_y = semi_feature_clf.predict(semi_feature_test_X)
    probas_ = semi_feature_clf.predict_proba(semi_feature_test_X)

    for feat_name, feat_weight in zip(semi_features, semi_feature_clf.coef_.flatten()):
        print feat_name, feat_weight

    semi_feature_weights += semi_feature_clf.coef_.flatten()

    #print 'recall', recall_score(test_y, predict_y)
    #print 'precision', precision_score(test_y, predict_y)
    #print 'f1', f1_score(test_y, predict_y)
    for predict_label, prob, example in zip(predict_y, probas_, test_examples):
        semi_feature_samples.append({'example': example, 'fold_id': fold_id,
                                     'predict_label': predict_label, 'probability': prob[1]})


    #using binary features
    bin_feature_selector = np.array([features_name_pos_map[x] for x in binary_features])
    bin_feature_train_X = full_feature_train_X[:, bin_feature_selector]
    bin_feature_test_X = full_feature_test_X[:, bin_feature_selector]

    print ' **** training binary model ****'

    bin_feature_clf = classifier.fit(bin_feature_train_X, train_y)
    # print bin_feature_clf.coef_
    # print bin_feature_clf.intercept_
    pickle.dump(bin_feature_clf, open('bin_feature_clf.p', 'wb'))
    #clf = pickle.load(open('bin_feature_clf.p', 'rb'))
    predict_y = bin_feature_clf.predict(bin_feature_test_X)
    probas_ = bin_feature_clf.predict_proba(bin_feature_test_X)

    for feat_name, feat_weight in zip(binary_features, bin_feature_clf.coef_.flatten()):
        print feat_name, feat_weight

    bin_feature_weights += bin_feature_clf.coef_.flatten()

    #print 'recall', recall_score(test_y, predict_y)
    #print 'precision', precision_score(test_y, predict_y)
    #print 'f1', f1_score(test_y, predict_y)
    for predict_label, prob, example in zip(predict_y, probas_, test_examples):
        bin_feature_samples.append({'example': example, 'fold_id': fold_id,
                                    'predict_label': predict_label, 'probability': prob[1]})


full_feature_weights /= fold_num
semi_feature_weights /= fold_num
bin_feature_weights /= fold_num

print '*' * 10 + ' averaged full feature weights ' + '*' * 10
with open('full_feature_weights.txt', 'w') as f:
    for feat_name, feat_weight in zip(full_features, full_feature_weights):
        print feat_name, feat_weight
        f.write('%s\t%f\n' % (feat_name, feat_weight))

print '*' * 10 + ' averaged binary feature weights ' + '*' * 10
with open('bin_feature_weights.txt', 'w') as f:
    for feat_name, feat_weight in zip(binary_features, bin_feature_weights):
        print feat_name, feat_weight
        f.write('%s\t%f\n' % (feat_name, feat_weight))

print '*' * 10 + ' averaged semi feature weights ' + '*' * 10
with open('semi_feature_weights.txt', 'w') as f:
    for feat_name, feat_weight in zip(semi_features, semi_feature_weights):
        print feat_name, feat_weight
        f.write('%s\t%f\n' % (feat_name, feat_weight))

full_feature_samples = sorted(full_feature_samples, key=lambda x:-x['probability'])
semi_feature_samples = sorted(semi_feature_samples, key=lambda x:-x['probability'])
bin_feature_samples = sorted(bin_feature_samples, key=lambda x:-x['probability'])

# we then train a classifier on the whole dataset
train_X = np.concatenate([full_feature_train_X, full_feature_test_X], axis=0)
train_y = np.concatenate([train_y, test_y], axis=0)
scaler = preprocessing.StandardScaler().fit(train_X)
all_data_full_feat_clf = classifier.fit(scaler.fit_transform(train_X), train_y)
pickle.dump((scaler, all_data_full_feat_clf), open('all_data_full_feat_clf.py.p', 'wb'))

print '*' * 10 + ' all data: full feature weights ' + '*' * 10
with open('all_data_full_feat_clf.weights.txt', 'w') as f:
    for feat_name, feat_weight in zip(full_features, all_data_full_feat_clf.coef_.flatten()):
        print feat_name, feat_weight
        f.write('%s\t%f\n' % (feat_name, feat_weight))

train_X = np.concatenate([bin_feature_train_X, bin_feature_test_X], axis=0)
scaler = preprocessing.StandardScaler().fit(train_X)
all_data_bin_feat_clf = classifier.fit(scaler.fit_transform(train_X), train_y)
pickle.dump((scaler, all_data_full_feat_clf), open('all_data_bin_feat_clf.py.p', 'wb'))

print '*' * 10 + ' all data: binary feature weights ' + '*' * 10
with open('all_data_bin_feat_clf.weights.txt', 'w') as f:
    for feat_name, feat_weight in zip(binary_features, all_data_bin_feat_clf.coef_.flatten()):
        print feat_name, feat_weight
        f.write('%s\t%f\n' % (feat_name, feat_weight))

# accept only baseline
acconly_baseline_samples = []
for tidx in xrange(len(post_list)):
    pid = post_list[tidx][0]
    if pid in acconly_baseline:
        code = normalize_code_response(acconly_baseline[pid])
        if code and len(code) > 0:
            acconly_baseline_samples.append({'example': {'title': questions[pid]['title'],
                                                         'code': code, 'question_id': pid,
                                                         'label': is_annotated(code, positive_snippets[pid])},
                                             'predict_label': 1})


# accept all baseline
allpost_baseline_samples = []
for qid, snippets in post_list:
    for snippet in snippets:
        code = normalize_code_response(snippet)
        if code and len(code) > 0:
            allpost_baseline_samples.append({'example': {'title': questions[qid]['title'],
                                                        'code': code, 'question_id': qid,
                                                        'label': is_annotated(code, positive_snippets[qid])},
                                            'predict_label': 1})


#random selection
random_samples = []
random_batch = range(len(all_examples))
np.random.shuffle(random_batch)
for example_id in random_batch:
    example = all_examples[example_id]
    random_samples.append({'example': example})


pickle.dump((full_feature_samples, semi_feature_samples, bin_feature_samples,
             acconly_baseline_samples, allpost_baseline_samples, random_samples), open('samples.added_feat.p', 'wb'))


# transfer learning
all_X = np.concatenate([full_feature_train_X, full_feature_test_X], axis=0)
all_examples = train_examples + test_examples
py_full_feat_scaler, py_full_feat_clf = pickle.load(open('../java/all_data_full_feat_clf.java.p', 'rb'))
predict_y = py_full_feat_clf.predict(py_full_feat_scaler.transform(all_X))
probas_ = py_full_feat_clf.predict_proba(py_full_feat_scaler.transform(all_X))
transfer_full_feature_samples = []
for predict_label, prob, example in zip(predict_y, probas_, all_examples):
    transfer_full_feature_samples.append({'example': example,
                                          'predict_label': predict_label,
                                          'probability': prob[1]})

all_X = np.concatenate([bin_feature_train_X, bin_feature_test_X], axis=0)
py_bin_feat_scaler, py_bin_feat_clf = pickle.load(open('../java/all_data_bin_feat_clf.java.p', 'rb'))
predict_y = py_bin_feat_clf.predict(py_bin_feat_scaler.transform(all_X))
probas_ = py_bin_feat_clf.predict_proba(py_bin_feat_scaler.transform(all_X))
transfer_bin_feature_samples = []
for predict_label, prob, example in zip(predict_y, probas_, all_examples):
    transfer_bin_feature_samples.append({'example': example,
                                         'predict_label': predict_label,
                                         'probability': prob[1]})

transfer_full_feature_samples = sorted(transfer_full_feature_samples, key=lambda x:-x['probability'])
transfer_bin_feature_samples = sorted(transfer_bin_feature_samples, key=lambda x:-x['probability'])
pickle.dump((transfer_full_feature_samples, transfer_bin_feature_samples), open('samples.transfer.p', 'wb'))