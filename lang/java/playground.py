import javalang
#from attention import new_nl2code_model, new_code2nl_model, load_model
# import inspect, sys
#
# clsmembers = inspect.getmembers(sys.modules['javalang.tokenizer'], inspect.isclass)
# types = [cls for cls_name, cls in clsmembers if issubclass(cls, javalang.tokenizer.JavaToken)]


# for token in javalang.tokenizer.tokenize('int asdf = 3;'):
#     print token

from parse_java import normalize_code

for token in javalang.tokenizer.tokenize('ArrayList<String> mylist = new ArrayList<String>();\nmylist.add("asdf\nasdf");'):
    print token

#v1, v2, v3, v4 = load(open('vocab.dmp', 'rb'))

print normalize_code("""
if (foo == bar) {
    System.out.println("asdfsaf");
}
""")
