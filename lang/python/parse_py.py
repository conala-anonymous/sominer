import re
import ast
from astor import to_source
from tokenize import generate_tokens
from cStringIO import StringIO


def tokenize(code):
   try:
       tokens = [(token, line_no) for _, token, (line_no, _), _, _ in generate_tokens(StringIO(code).readline)
                 if token]
       return tokens
   except:
       return []


#if the code snippet was copied from an python REPL
def from_console(code, prompts=None):
    if prompts is None:
        prompts = [' >>>', '  >>> ', '>>> ', '... ', '$ ']
    for line in code.split('\n'):
        for p in prompts:
            if line.startswith(p):
                return True
    return False


#remove prompt prefixes from code
def console_extract(code, prompts=None):
    if prompts is None:
        prompts = [' >>>', '  >>> ', '>>> ', '... ', '$ ']
    lines = []
    for line in code.split('\n'):
        for p in prompts:
            if line.startswith(p):
                lines.append(line[len(p):])
                break
    return '\n'.join(lines)


#if the code snippet was copied from an ipython REPL
def from_ipython(code, patterns=None):
    if patterns is None:
        patterns = [re.compile(r'In \[\d+\]: '), re.compile(r'In \[\d+\]:')]
    for line in code.split('\n'):
        for p in patterns:
            match = p.match(line)
            if match:
                return True
    return False


#remove ipython prompt prefixes from code
def ipython_extract(code, patterns=None):
    if patterns is None:
        patterns = [re.compile(r'In \[\d+\]: '), re.compile(r'   \.\.\.\: '), re.compile(r'In \[\d+\]:'),
                    re.compile(r'   \.\.\.\:')]
    lines = []
    for line in code.split('\n'):
        for p in patterns:
            match = p.match(line)
            if match:
                lines.append(line[match.end():])
                break
    return '\n'.join(lines)


#remove comments from code
def remove_comment(code):
    lines = code.split('\n')
    for i, line in enumerate(lines):
        try:
            for toknum, tokval, (_, start), _, _  in generate_tokens(StringIO(line).readline):
                if toknum == 53:
                    lines[i] = line[:start]
        except:
            pass
    return '\n'.join(lines)


#remove unnecessary indents from code, for example:
"""
    if a == b:
        print a
"""
# =>
"""
if a == b:
    print a
"""
def remove_indents(code):
    lines = [line for line in code.split('\n') if line.strip()]
    if not lines:
        return code
    indent_length, example = min((len(line) - len(line.lstrip()), line) for line in lines)
    indent = example[:indent_length]
    for i, line in enumerate(lines):
        if not line.startswith(indent):
            return code
        lines[i] = line[indent_length:]
    return '\n'.join(lines)


#add pass statement to complete for partial-snippet (e.g. if statement without then branch)
def add_pass(code):
    striped_code = code.rstrip()
    if striped_code and striped_code[-1] == ':':
        return striped_code + 'pass'
    return code


#starts with a assign statement
def start_with_assign(root):
    if root is None or not hasattr(root, 'body'):
        return False
    for s in root.body:
        if isinstance(s, ast.ImportFrom):
            continue
        return isinstance(s, ast.Assign)
    return False


#is a literal value (e.g. True "test" 3.14)
def only_value(root):
    if root is None or not hasattr(root, 'body'):
        return False
    if len(root.body) != 1:
        return False
    exp = root.body[0]
    if not isinstance(exp, ast.Expr):
        return False
    if isinstance(exp.value, (ast.Name, ast.Num, ast.Str)):
        return True
    return False


#normalize the code-snippet for exactly match
def normalize_code(code, log_file=None):
    old_code = code
    if from_console(code):
        code = console_extract(code)
    elif from_ipython(code):
        code = ipython_extract(code)
    code = remove_comment(code)
    code = remove_indents(code)
    code = add_pass(code)
    add_future = False
    # hack: parse python3-style print statement
    if 'print(' in code and 'print_function' not in code:
        code = 'from __future__ import print_function\n' + code
        add_future = True
    try:
        result = to_source(ast.parse(code))
        result = result.strip()

        if add_future:
            result = '\n'.join(result.split('\n')[1:])
        return result
    except Exception as ex:
        if log_file:
            log_file.write('*' * 30 + '\n')
            log_file.write('Original:\n')
            log_file.write(old_code + '\n')
            log_file.write('*' * 30 + '\n')
            log_file.write('Normalized:\n')
            log_file.write(code + '\n')
        # print old_code
        # print '--------------------'
        # print code
        # print '--------------------'
        # print type(ex)
        # print ex
        # print '===================='
        return None

# normalize a piece of code selected as the response, or our annotation
# input code will be normalized by normalize_code first
print_pattern = re.compile('(if|while|for|with).*\n(    )+print.*$')
def normalize_code_response(code):
    code = normalize_code(code)
    if code:
        # remove ending print statement like:
        # if not my_list:
        #     print "it's empty!"
        m = print_pattern.search(code)
        if m:
            code = '\n'.join(code.split('\n')[:-1])
            code = add_pass(code)
            code = to_source(ast.parse(code))

    return code


# if code-snippet was annotated by user (exactly match with some special case handlers: ignore assign / print / return)
def is_annotated(code, annotation_set):
    if code in annotation_set:
        return True
    if 'print(' in code and 'print_function' not in code:
        root = ast.parse('from __future__ import print_function\n' + code)
        del root.body[0]
    else:
        root = ast.parse(code)
    if len(root.body) == 1:
        s = root.body[0]
        if isinstance(s, ast.Print):
            if len(s.values) == 1:
                return to_source(s.values[0]) in annotation_set
        elif isinstance(s, ast.Assign):
            return to_source(s.value) in annotation_set
        elif isinstance(s, ast.Return):
            return to_source(s.value) in annotation_set
    return False
# print is_annotated('b = a', set(map(normalize_code, ['a'])))
# print is_annotated('b = a', set(map(normalize_code, ['b'])))
# print is_annotated('print a', set(map(normalize_code, ['a'])))
# print is_annotated('print a', set(map(normalize_code, ['b'])))
# print is_annotated('return a', set(map(normalize_code, ['a'])))
# print is_annotated('return a', set(map(normalize_code, ['b'])))