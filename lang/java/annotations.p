(lp0
(dp1
S'context_text'
p2
c__builtin__
set
p3
((lp4
tp5
Rp6
sS'post_id'
p7
I8444710
sS'snippet_text'
p8
g3
((lp9
Vif(s.equals(new StringBuilder(s).reverse().toString())) // is a palindrome.\u000a
p10
atp11
Rp12
sS'intent_ref'
p13
S''
p14
sS'context_ref'
p15
NsS'snippet_ref'
p16
S'if (s.equals(new StringBuilder(s).reverse().toString())) {\n}'
p17
sS'intent_text'
p18
g3
((lp19
VEasiest way to check if a string is palindrome
p20
atp21
Rp22
sa(dp23
g2
g3
((lp24
Vpublic class Palindrome {\u000a\u000a  public static boolean isPalindrome(String stringToTest) {\u000a    String workingCopy = removeJunk(stringToTest);\u000a    String reversedCopy = reverse(workingCopy);\u000a\u000a    return reversedCopy.equalsIgnoreCase(workingCopy);\u000a  }\u000a\u000a  protected static String removeJunk(String string) {\u000a    int i, len = string.length();\u000a    StringBuffer dest = new StringBuffer(len);\u000a    char c;\u000a\u000a    for (i = (len - 1); i >= 0; i--) {\u000a      c = string.charAt(i);\u000a      if (Character.isLetterOrDigit(c)) {\u000a        dest.append(c);\u000a      }\u000a    }\u000a\u000a    return dest.toString();\u000a  }\u000a\u000a  protected static String reverse(String string) {\u000a    StringBuffer sb = new StringBuffer(string);\u000a\u000a    return sb.reverse().toString();\u000a  }\u000a\u000a  public static void main(String[] args) {\u000a    String string = "Madam, I'm Adam.";\u000a\u000a    System.out.println();\u000a    System.out.println("Testing whether the following "\u000a        + "string is a palindrome:");\u000a    System.out.println("    " + string);\u000a    System.out.println();\u000a\u000a    if (isPalindrome(string)) {\u000a      System.out.println("It IS a palindrome!");\u000a    } else {\u000a      System.out.println("It is NOT a palindrome!");\u000a    }\u000a    System.out.println();\u000a  }\u000a}\u000a
p25
atp26
Rp27
sg7
I8444710
sg8
g3
((lp28
Vpublic class Palindrome {\u000a\u000a  public static boolean isPalindrome(String stringToTest) {\u000a    String workingCopy = removeJunk(stringToTest);\u000a    String reversedCopy = reverse(workingCopy);\u000a\u000a    return reversedCopy.equalsIgnoreCase(workingCopy);\u000a  }\u000a\u000a  protected static String removeJunk(String string) {\u000a    int i, len = string.length();\u000a    StringBuffer dest = new StringBuffer(len);\u000a    char c;\u000a\u000a    for (i = (len - 1); i >= 0; i--) {\u000a      c = string.charAt(i);\u000a      if (Character.isLetterOrDigit(c)) {\u000a        dest.append(c);\u000a      }\u000a    }\u000a\u000a    return dest.toString();\u000a  }\u000a\u000a  protected static String reverse(String string) {\u000a    StringBuffer sb = new StringBuffer(string);\u000a\u000a    return sb.reverse().toString();\u000a  }\u000a\u000a  public static void main(String[] args) {\u000a    String string = "Madam, I'm Adam.";\u000a\u000a    System.out.println();\u000a    System.out.println("Testing whether the following "\u000a        + "string is a palindrome:");\u000a    System.out.println("    " + string);\u000a    System.out.println();\u000a\u000a    if (isPalindrome(string)) {\u000a      System.out.println("It IS a palindrome!");\u000a    } else {\u000a      System.out.println("It is NOT a palindrome!");\u000a    }\u000a    System.out.println();\u000a  }\u000a}\u000a
p29
atp30
Rp31
sg13
g14
sg15
S'protected static String removeJunk(String string) {\n    int i, len = string.length();\n    StringBuffer dest = new StringBuffer(len);\n    char c;\n    for (i = (len - 1); i >= 0; i--) {\n        c = string.charAt(i);\n        if (Character.isLetterOrDigit(c)) {\n            dest.append(c);\n        }\n    }\n    return dest.toString();\n}\nprotected static String reverse(String string) {\n    StringBuffer sb = new StringBuffer(string);\n    return sb.reverse().toString();\n}'
p32
sg16
S'String workingCopy = removeJunk(stringToTest);\nString reversedCopy = reverse(workingCopy);\nreturn reversedCopy.equalsIgnoreCase(workingCopy);'
p33
sg18
g3
((lp34
g20
atp35
Rp36
sa(dp37
g2
g3
((lp38
tp39
Rp40
sg7
I960431
sg8
g3
((lp41
Vint[] array = list.stream().mapToInt(i->i).toArray();\u000a
p42
atp43
Rp44
sg13
g14
sg15
Nsg16
S'int[] array = list.stream().mapToInt(i -> i).toArray();'
p45
sg18
g3
((lp46
VHow to convert List<Integer> to int[] in Java?
p47
atp48
Rp49
sa(dp50
g2
g3
((lp51
VList<Integer> list = ...\u000aint[] ints = Ints.toArray(list);\u000a
p52
atp53
Rp54
sg7
I960431
sg8
g3
((lp55
VList<Integer> list = ...\u000aint[] ints = Ints.toArray(list);\u000a
p56
atp57
Rp58
sg13
g14
sg15
Nsg16
S'int[] ints = Ints.toArray(list);'
p59
sg18
g3
((lp60
g47
atp61
Rp62
sa(dp63
g2
g3
((lp64
Vstatic final Integer[] NO_INTS = new Integer[0];\u000a   ....\u000aint[] intArray2 = ArrayUtils.toPrimitive(myList.toArray(NO_INTS));\u000a
p65
aVList<Integer> myList;\u000a ... assign and fill the list\u000aint[] intArray = ArrayUtils.toPrimitive(myList.toArray(new Integer[myList.size()]));\u000a
p66
atp67
Rp68
sg7
I960431
sg8
g3
((lp69
Vstatic final Integer[] NO_INTS = new Integer[0];\u000a   ....\u000aint[] intArray2 = ArrayUtils.toPrimitive(myList.toArray(NO_INTS));\u000a
p70
aVList<Integer> myList;\u000a ... assign and fill the list\u000aint[] intArray = ArrayUtils.toPrimitive(myList.toArray(new Integer[myList.size()]));\u000a
p71
atp72
Rp73
sg13
g14
sg15
Nsg16
S'int[] intArray = ArrayUtils.toPrimitive(myList.toArray(new Integer[myList.size()]));'
p74
sg18
g3
((lp75
g47
atp76
Rp77
sa(dp78
g2
g3
((lp79
Vstatic final Integer[] NO_INTS = new Integer[0];\u000a   ....\u000aint[] intArray2 = ArrayUtils.toPrimitive(myList.toArray(NO_INTS));\u000a
p80
aVList<Integer> myList;\u000a ... assign and fill the list\u000aint[] intArray = ArrayUtils.toPrimitive(myList.toArray(new Integer[myList.size()]));\u000a
p81
atp82
Rp83
sg7
I960431
sg8
g3
((lp84
Vstatic final Integer[] NO_INTS = new Integer[0];\u000a   ....\u000aint[] intArray2 = ArrayUtils.toPrimitive(myList.toArray(NO_INTS));\u000a
p85
aVList<Integer> myList;\u000a ... assign and fill the list\u000aint[] intArray = ArrayUtils.toPrimitive(myList.toArray(new Integer[myList.size()]));\u000a
p86
atp87
Rp88
sg13
g14
sg15
Nsg16
S'int[] intArray2 = ArrayUtils.toPrimitive(myList.toArray(NO_INTS));'
p89
sg18
g3
((lp90
g47
atp91
Rp92
sa(dp93
g2
g3
((lp94
tp95
Rp96
sg7
I7833689
sg8
g3
((lp97
VSystem.out.println("I\u005cnam\u005cna\u005cnboy");\u000a\u000aSystem.out.println("I am a boy".replaceAll("\u005c\u005cs+","\u005cn"));\u000a\u000aSystem.out.println("I am a boy".replaceAll("\u005c\u005cs+",System.getProperty("line.separator"))); // portable way\u000a
p98
atp99
Rp100
sg13
g14
sg15
Nsg16
S'System.out.println("I\\nam\\na\\nboy");'
p101
sg18
g3
((lp102
V<p>I have string like " I am a boy". I want to print like this way\u000a" I (\u005cn new line) am (\u005cn new line) a (\u005cn new line) boy".</p>\u000a\u000a<p>Can anybody help me?</p>\u000a
p103
atp104
Rp105
sa(dp106
g2
g3
((lp107
tp108
Rp109
sg7
I7833689
sg8
g3
((lp110
VSystem.out.println("I\u005cnam\u005cna\u005cnboy");\u000a\u000aSystem.out.println("I am a boy".replaceAll("\u005c\u005cs+","\u005cn"));\u000a\u000aSystem.out.println("I am a boy".replaceAll("\u005c\u005cs+",System.getProperty("line.separator"))); // portable way\u000a
p111
atp112
Rp113
sg13
g14
sg15
Nsg16
S'System.out.println("I am a boy".replaceAll("\\\\s+", "\\n"));'
p114
sg18
g3
((lp115
V<p>I have string like " I am a boy". I want to print like this way\u000a" I (\u005cn new line) am (\u005cn new line) a (\u005cn new line) boy".</p>\u000a\u000a<p>Can anybody help me?</p>\u000a
p116
atp117
Rp118
sa(dp119
g2
g3
((lp120
tp121
Rp122
sg7
I7833689
sg8
g3
((lp123
VSystem.out.println("I\u005cnam\u005cna\u005cnboy");\u000a\u000aSystem.out.println("I am a boy".replaceAll("\u005c\u005cs+","\u005cn"));\u000a\u000aSystem.out.println("I am a boy".replaceAll("\u005c\u005cs+",System.getProperty("line.separator"))); // portable way\u000a
p124
atp125
Rp126
sg13
g14
sg15
Nsg16
S'System.out.println("I am a boy".replaceAll("\\\\s+", System.getProperty("line.separator")));'
p127
sg18
g3
((lp128
V<p>I have string like " I am a boy". I want to print like this way\u000a" I (\u005cn new line) am (\u005cn new line) a (\u005cn new line) boy".</p>\u000a\u000a<p>Can anybody help me?</p>\u000a
p129
atp130
Rp131
sa(dp132
g2
g3
((lp133
tp134
Rp135
sg7
I7833689
sg8
g3
((lp136
VString x = "Hello," + System.lineSeparator() + "there";\u000a
p137
atp138
Rp139
sg13
g14
sg15
Nsg16
S'String x = "Hello," + System.lineSeparator() + "there";'
p140
sg18
g3
((lp141
V<p>I have string like " I am a boy". I want to print like this way\u000a" I (\u005cn new line) am (\u005cn new line) a (\u005cn new line) boy".</p>\u000a\u000a<p>Can anybody help me?</p>\u000a
p142
atp143
Rp144
sa(dp145
g2
g3
((lp146
tp147
Rp148
sg7
I7833689
sg8
g3
((lp149
VSystem.out.println("I\u005cnam\u005cna\u005cnboy");\u000a
p150
atp151
Rp152
sg13
g14
sg15
Nsg16
S'System.out.println("I\\nam\\na\\nboy");'
p153
sg18
g3
((lp154
V<p>I have string like " I am a boy". I want to print like this way\u000a" I (\u005cn new line) am (\u005cn new line) a (\u005cn new line) boy".</p>\u000a\u000a<p>Can anybody help me?</p>\u000a
p155
atp156
Rp157
sa(dp158
g2
g3
((lp159
tp160
Rp161
sg7
I20363719
sg8
g3
((lp162
VMap<String, Choice> result =\u000a    choices.stream().collect(Collectors.toMap(Choice::getName,\u000a                                              Function.identity()));\u000a
p163
atp164
Rp165
sg13
VJava 8 List<V> into Map<K, V>
p166
sg15
Nsg16
S'Map<String, Choice> result = choices.stream().collect(Collectors.toMap(Choice::getName, Function.identity()));'
p167
sg18
g3
((lp168
VJava 8 List<V> into Map<K, V>
p169
atp170
Rp171
sa(dp172
g2
g3
((lp173
tp174
Rp175
sg7
I20363719
sg8
g3
((lp176
VMap<String, List<Choice>> result =\u000a choices.stream().collect(Collectors.groupingBy(Choice::getName));\u000a
p177
atp178
Rp179
sg13
VJava 8 List<V> into Map<K, V>
p180
sg15
Nsg16
S'Map<String, List<Choice>> result = choices.stream().collect(Collectors.groupingBy(Choice::getName));'
p181
sg18
g3
((lp182
g169
atp183
Rp184
sa(dp185
g2
g3
((lp186
tp187
Rp188
sg7
I20363719
sg8
g3
((lp189
VMap<String, Choice> result =\u000a    choices.stream().collect(Collectors.toMap(Choice::getName, c -> c));\u000a
p190
atp191
Rp192
sg13
VJava 8 List<V> into Map<K, V>
p193
sg15
Nsg16
S'Map<String, Choice> result = choices.stream().collect(Collectors.toMap(Choice::getName, c -> c));'
p194
sg18
g3
((lp195
g169
atp196
Rp197
sa(dp198
g2
g3
((lp199
tp200
Rp201
sg7
I513832
sg8
g3
((lp202
V// These two have the same value\u000anew String("test").equals("test") // --> true \u000a\u000a// ... but they are not the same object\u000anew String("test") == "test" // --> false \u000a\u000a// ... neither are these\u000anew String("test") == new String("test") // --> false \u000a\u000a// ... but these are because literals are interned by \u000a// the compiler and thus refer to the same object\u000a"test" == "test" // --> true \u000a\u000a// ... but you should really just call Objects.equals()\u000aObjects.equals("test", new String("test")) // --> true\u000aObjects.equals(null, "test") // --> false\u000a
p203
atp204
Rp205
sg13
g14
sg15
Nsg16
S'new String("test").equals("test");'
p206
sg18
g3
((lp207
VHow do I compare strings in Java?
p208
atp209
Rp210
sa(dp211
g2
g3
((lp212
tp213
Rp214
sg7
I513832
sg8
g3
((lp215
V// These two have the same value\u000anew String("test").equals("test") // --> true \u000a\u000a// ... but they are not the same object\u000anew String("test") == "test" // --> false \u000a\u000a// ... neither are these\u000anew String("test") == new String("test") // --> false \u000a\u000a// ... but these are because literals are interned by \u000a// the compiler and thus refer to the same object\u000a"test" == "test" // --> true \u000a\u000a// ... but you should really just call Objects.equals()\u000aObjects.equals("test", new String("test")) // --> true\u000aObjects.equals(null, "test") // --> false\u000a
p216
atp217
Rp218
sg13
g14
sg15
Nsg16
S'Objects.equals("test", new String("test"));'
p219
sg18
g3
((lp220
g208
atp221
Rp222
sa(dp223
g2
g3
((lp224
tp225
Rp226
sg7
I513832
sg8
g3
((lp227
V// These two have the same value\u000anew String("test").equals("test") // --> true \u000a\u000a// ... but they are not the same object\u000anew String("test") == "test" // --> false \u000a\u000a// ... neither are these\u000anew String("test") == new String("test") // --> false \u000a\u000a// ... but these are because literals are interned by \u000a// the compiler and thus refer to the same object\u000a"test" == "test" // --> true \u000a\u000a// ... but you should really just call Objects.equals()\u000aObjects.equals("test", new String("test")) // --> true\u000aObjects.equals(null, "test") // --> false\u000a
p228
atp229
Rp230
sg13
g14
sg15
Nsg16
S'Objects.equals(null, "test");'
p231
sg18
g3
((lp232
g208
atp233
Rp234
sa(dp235
g2
g3
((lp236
tp237
Rp238
sg7
I513832
sg8
g3
((lp239
VString nullString1 = null;\u000aString nullString2 = null;\u000a\u000a// Evaluates to true\u000anullString1 == nullString2;\u000a\u000a// Throws an Exception\u000anullString1.equals(nullString2);\u000a
p240
aVString fooString1 = new String("foo");\u000aString fooString2 = new String("foo");\u000a\u000a// Evaluates to false\u000afooString1 == fooString2;\u000a\u000a// Evaluates to true\u000afooString1.equals(fooString2);\u000a\u000a// Evaluates to true, because Java uses the same object\u000a"bar" == "bar";\u000a
p241
atp242
Rp243
sg13
g14
sg15
Nsg16
S'fooString1.equals(fooString2);'
p244
sg18
g3
((lp245
g208
atp246
Rp247
sa(dp248
g2
g3
((lp249
tp250
Rp251
sg7
I513832
sg8
g3
((lp252
VString nullString1 = null;\u000aString nullString2 = null;\u000a\u000a// Evaluates to true\u000anullString1 == nullString2;\u000a\u000a// Throws an Exception\u000anullString1.equals(nullString2);\u000a
p253
aVString fooString1 = new String("foo");\u000aString fooString2 = new String("foo");\u000a\u000a// Evaluates to false\u000afooString1 == fooString2;\u000a\u000a// Evaluates to true\u000afooString1.equals(fooString2);\u000a\u000a// Evaluates to true, because Java uses the same object\u000a"bar" == "bar";\u000a
p254
atp255
Rp256
sg13
g14
sg15
Nsg16
S'nullString1.equals(nullString2);'
p257
sg18
g3
((lp258
g208
atp259
Rp260
sa(dp261
g2
g3
((lp262
tp263
Rp264
sg7
I867194
sg8
g3
((lp265
Vif (!resultSet.isBeforeFirst() ) {    \u000a    System.out.println("No data"); \u000a} \u000a
p266
atp267
Rp268
sg13
g14
sg15
Nsg16
S'if (!resultSet.isBeforeFirst()) {\n}'
p269
sg18
g3
((lp270
VJava ResultSet how to check if there are any results
p271
atp272
Rp273
sa(dp274
g2
g3
((lp275
tp276
Rp277
sg7
I867194
sg8
g3
((lp278
Vif (!resultSet.next() ) {\u000a    System.out.println("no data");\u000a} else {\u000a\u000a    do {\u000a     //statement(s)\u000a    } while (resultSet.next());\u000a}\u000a
p279
atp280
Rp281
sg13
g14
sg15
Nsg16
S'if (!resultSet.next()) {\n}'
p282
sg18
g3
((lp283
g271
atp284
Rp285
sa(dp286
g2
g3
((lp287
tp288
Rp289
sg7
I454908
sg8
g3
((lp290
VString lines[] = string.split("\u005c\u005cr?\u005c\u005cn");\u000a
p291
atp292
Rp293
sg13
VSplit Java String by New Line
p294
sg15
Nsg16
S'String[] lines = string.split("\\\\r?\\\\n");'
p295
sg18
g3
((lp296
VSplit Java String by New Line
p297
atp298
Rp299
sa(dp300
g2
g3
((lp301
tp302
Rp303
sg7
I454908
sg8
g3
((lp304
VString.split("[\u005c\u005cr\u005c\u005cn]+")\u000a
p305
atp306
Rp307
sg13
VSplit Java String by New Line
p308
sg15
Nsg16
S'String.split("[\\\\r\\\\n]+");'
p309
sg18
g3
((lp310
g297
atp311
Rp312
sa(dp313
g2
g3
((lp314
VDouble d = 5.25;\u000aInteger i = d.intValue(); // i becomes 5\u000a
p315
aVdouble d = 5.25;\u000aint i = (int) d;\u000a
p316
atp317
Rp318
sg7
I9102318
sg8
g3
((lp319
VDouble d = 5.25;\u000aInteger i = d.intValue(); // i becomes 5\u000a
p320
aVdouble d = 5.25;\u000aint i = (int) d;\u000a
p321
atp322
Rp323
sg13
VCast Double to Integer in Java
p324
sg15
S'double d = 5.25;'
p325
sg16
S'int i = (int) d;'
p326
sg18
g3
((lp327
VCast Double to Integer in Java
p328
atp329
Rp330
sa(dp331
g2
g3
((lp332
VDouble d = 5.25;\u000aInteger i = d.intValue(); // i becomes 5\u000a
p333
aVdouble d = 5.25;\u000aint i = (int) d;\u000a
p334
atp335
Rp336
sg7
I9102318
sg8
g3
((lp337
VDouble d = 5.25;\u000aInteger i = d.intValue(); // i becomes 5\u000a
p338
aVdouble d = 5.25;\u000aint i = (int) d;\u000a
p339
atp340
Rp341
sg13
VCast Double to Integer in Java
p342
sg15
S'double d = 5.25;'
p343
sg16
S'int i = (int) d;'
p344
sg18
g3
((lp345
g328
atp346
Rp347
sa(dp348
g2
g3
((lp349
Vdouble d = 9.5;\u000aint i = (int)d;\u000a//i = 9\u000a\u000aDouble D = 9.5;\u000aint i = Integer.valueOf(D.intValue());\u000a//i = 9\u000a\u000adouble d = 9.5;\u000aLong L = Math.round(d);\u000aint i = Integer.valueOf(L.intValue());\u000a//i = 10\u000a
p350
atp351
Rp352
sg7
I9102318
sg8
g3
((lp353
Vdouble d = 9.5;\u000aint i = (int)d;\u000a//i = 9\u000a\u000aDouble D = 9.5;\u000aint i = Integer.valueOf(D.intValue());\u000a//i = 9\u000a\u000adouble d = 9.5;\u000aLong L = Math.round(d);\u000aint i = Integer.valueOf(L.intValue());\u000a//i = 10\u000a
p354
atp355
Rp356
sg13
VCast Double to Integer in Java
p357
sg15
S'double d = 9.5;'
p358
sg16
S'int i = (int) d;'
p359
sg18
g3
((lp360
g328
atp361
Rp362
sa(dp363
g2
g3
((lp364
Vdouble d = 9.5;\u000aint i = (int)d;\u000a//i = 9\u000a\u000aDouble D = 9.5;\u000aint i = Integer.valueOf(D.intValue());\u000a//i = 9\u000a\u000adouble d = 9.5;\u000aLong L = Math.round(d);\u000aint i = Integer.valueOf(L.intValue());\u000a//i = 10\u000a
p365
atp366
Rp367
sg7
I9102318
sg8
g3
((lp368
Vdouble d = 9.5;\u000aint i = (int)d;\u000a//i = 9\u000a\u000aDouble D = 9.5;\u000aint i = Integer.valueOf(D.intValue());\u000a//i = 9\u000a\u000adouble d = 9.5;\u000aLong L = Math.round(d);\u000aint i = Integer.valueOf(L.intValue());\u000a//i = 10\u000a
p369
atp370
Rp371
sg13
VCast Double to Integer in Java
p372
sg15
S'Double D = 9.5;'
p373
sg16
S'int i = Integer.valueOf(D.intValue());'
p374
sg18
g3
((lp375
g328
atp376
Rp377
sa(dp378
g2
g3
((lp379
Vdouble d = 9.5;\u000aint i = (int)d;\u000a//i = 9\u000a\u000aDouble D = 9.5;\u000aint i = Integer.valueOf(D.intValue());\u000a//i = 9\u000a\u000adouble d = 9.5;\u000aLong L = Math.round(d);\u000aint i = Integer.valueOf(L.intValue());\u000a//i = 10\u000a
p380
atp381
Rp382
sg7
I9102318
sg8
g3
((lp383
Vdouble d = 9.5;\u000aint i = (int)d;\u000a//i = 9\u000a\u000aDouble D = 9.5;\u000aint i = Integer.valueOf(D.intValue());\u000a//i = 9\u000a\u000adouble d = 9.5;\u000aLong L = Math.round(d);\u000aint i = Integer.valueOf(L.intValue());\u000a//i = 10\u000a
p384
atp385
Rp386
sg13
VCast Double to Integer in Java
p387
sg15
S'double d = 9.5;'
p388
sg16
S'Long L = Math.round(d);\nint i = Integer.valueOf(L.intValue());'
p389
sg18
g3
((lp390
g328
atp391
Rp392
sa(dp393
g2
g3
((lp394
VMap<String, String> map = getMyMap();\u000aList<String> keys = new ArrayList<String>(map.keySet());\u000aCollections.sort(keys, someComparator);\u000afor (String key: keys) {\u000a    System.out.println(key + ": " + map.get(key));\u000a}\u000a
p395
aVpublic static <K, V extends Comparable<? super V>>\u000a        Comparator<K> mapValueComparator(final Map<K, V> map) {\u000a    return new Comparator<K>() {\u000a        public int compare(K key1, K key2) {\u000a            return map.get(key1).compareTo(map.get(key2));\u000a        }\u000a    };\u000a}\u000a\u000apublic static <K, V>\u000a        Comparator<K> mapValueComparator(final Map<K, V> map,\u000a                                         final Comparator<V> comparator) {\u000a    return new Comparator<K>() {\u000a        public int compare(K key1, K key2) {\u000a            return comparator.compare(map.get(key1), map.get(key2));\u000a        }\u000a    };\u000a}\u000a
p396
atp397
Rp398
sg7
I3605237
sg8
g3
((lp399
VMap<String, String> map = getMyMap();\u000aList<String> keys = new ArrayList<String>(map.keySet());\u000aCollections.sort(keys, someComparator);\u000afor (String key: keys) {\u000a    System.out.println(key + ": " + map.get(key));\u000a}\u000a
p400
aVpublic static <K, V extends Comparable<? super V>>\u000a        Comparator<K> mapValueComparator(final Map<K, V> map) {\u000a    return new Comparator<K>() {\u000a        public int compare(K key1, K key2) {\u000a            return map.get(key1).compareTo(map.get(key2));\u000a        }\u000a    };\u000a}\u000a\u000apublic static <K, V>\u000a        Comparator<K> mapValueComparator(final Map<K, V> map,\u000a                                         final Comparator<V> comparator) {\u000a    return new Comparator<K>() {\u000a        public int compare(K key1, K key2) {\u000a            return comparator.compare(map.get(key1), map.get(key2));\u000a        }\u000a    };\u000a}\u000a
p401
atp402
Rp403
sg13
g14
sg15
S'Map<String, String> map = getMyMap();'
p404
sg16
S'List<String> keys = new ArrayList<String>(map.keySet());\nCollections.sort(keys, someComparator);\nfor (String key : keys) {\n    System.out.println(key + ": " + map.get(key));\n}'
p405
sg18
g3
((lp406
VHow print out the contents of a HashMap<String, String> in ascending order based on its values?
p407
atp408
Rp409
sa(dp410
g2
g3
((lp411
tp412
Rp413
sg7
I3605237
sg8
g3
((lp414
VMap<String, String> reversedMap = new TreeMap<String, String>(codes);\u000a\u000a//then you just access the reversedMap however you like...\u000afor (Map.Entry entry : reversedMap.entrySet()) {\u000a    System.out.println(entry.getKey() + ", " + entry.getValue());\u000a}\u000a
p415
atp416
Rp417
sg13
g14
sg15
Nsg16
S'Map<String, String> reversedMap = new TreeMap<String, String>(codes);\nfor (Map.Entry entry : reversedMap.entrySet()) {\n    System.out.println(entry.getKey() + ", " + entry.getValue());\n}'
p418
sg18
g3
((lp419
g407
atp420
Rp421
sa(dp422
g2
g3
((lp423
Vtry{\u000a    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.SSS");\u000a    Date parsedDate = dateFormat.parse(yourString);\u000a    Timestamp timestamp = new java.sql.Timestamp(parsedDate.getTime());\u000a}catch(Exception e){//this generic but you can control another types of exception\u000a look the origin of excption \u000a}\u000a
p424
atp425
Rp426
sg7
I18915075
sg8
g3
((lp427
Vtry{\u000a    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.SSS");\u000a    Date parsedDate = dateFormat.parse(yourString);\u000a    Timestamp timestamp = new java.sql.Timestamp(parsedDate.getTime());\u000a}catch(Exception e){//this generic but you can control another types of exception\u000a look the origin of excption \u000a}\u000a
p428
atp429
Rp430
sg13
g14
sg15
S'SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.SSS");'
p431
sg16
S'Date parsedDate = dateFormat.parse(yourString);\nTimestamp timestamp = new java.sql.Timestamp(parsedDate.getTime());'
p432
sg18
g3
((lp433
VJava: Convert String to TimeStamp
p434
atp435
Rp436
sa(dp437
g2
g3
((lp438
Vimport java.sql.Timestamp;\u000aimport java.text.DateFormat;\u000aimport java.text.ParseException;\u000aimport java.text.SimpleDateFormat;\u000aimport java.util.Date;\u000a\u000apublic class Util{\u000a  public static Timestamp convertStringToTimestamp(String str_date) {\u000a    try {\u000a      DateFormat formatter;\u000a      formatter = new SimpleDateFormat("dd/MM/yyyy");\u000a       // you can change format of date\u000a      Date date = formatter.parse(str_date);\u000a      java.sql.Timestamp timeStampDate = new Timestamp(date.getTime());\u000a\u000a      return timeStampDate;\u000a    } catch (ParseException e) {\u000a      System.out.println("Exception :" + e);\u000a      return null;\u000a    }\u000a  }\u000a}\u000a
p439
atp440
Rp441
sg7
I18915075
sg8
g3
((lp442
Vimport java.sql.Timestamp;\u000aimport java.text.DateFormat;\u000aimport java.text.ParseException;\u000aimport java.text.SimpleDateFormat;\u000aimport java.util.Date;\u000a\u000apublic class Util{\u000a  public static Timestamp convertStringToTimestamp(String str_date) {\u000a    try {\u000a      DateFormat formatter;\u000a      formatter = new SimpleDateFormat("dd/MM/yyyy");\u000a       // you can change format of date\u000a      Date date = formatter.parse(str_date);\u000a      java.sql.Timestamp timeStampDate = new Timestamp(date.getTime());\u000a\u000a      return timeStampDate;\u000a    } catch (ParseException e) {\u000a      System.out.println("Exception :" + e);\u000a      return null;\u000a    }\u000a  }\u000a}\u000a
p443
atp444
Rp445
sg13
g14
sg15
S'DateFormat formatter;\nformatter = new SimpleDateFormat("dd/MM/yyyy");'
p446
sg16
S'Date date = formatter.parse(str_date);\njava.sql.Timestamp timeStampDate = new Timestamp(date.getTime());'
p447
sg18
g3
((lp448
g434
atp449
Rp450
sa(dp451
g2
g3
((lp452
Vif (max < numbersNeeded)\u000a{\u000a    throw new IllegalArgumentException("Can't ask for more numbers than are available");\u000a}\u000aRandom rng = new Random(); // Ideally just create one instance globally\u000a// Note: use LinkedHashSet to maintain insertion order\u000aSet<Integer> generated = new LinkedHashSet<Integer>();\u000awhile (generated.size() < numbersNeeded)\u000a{\u000a    Integer next = rng.nextInt(max) + 1;\u000a    // As we're adding to a set, this will automatically do a containment check\u000a    generated.add(next);\u000a}\u000a
p453
atp454
Rp455
sg7
I4040001
sg8
g3
((lp456
Vif (max < numbersNeeded)\u000a{\u000a    throw new IllegalArgumentException("Can't ask for more numbers than are available");\u000a}\u000aRandom rng = new Random(); // Ideally just create one instance globally\u000a// Note: use LinkedHashSet to maintain insertion order\u000aSet<Integer> generated = new LinkedHashSet<Integer>();\u000awhile (generated.size() < numbersNeeded)\u000a{\u000a    Integer next = rng.nextInt(max) + 1;\u000a    // As we're adding to a set, this will automatically do a containment check\u000a    generated.add(next);\u000a}\u000a
p457
atp458
Rp459
sg13
VCreating random numbers with no duplicates
p460
sg15
S'Random rng = new Random();'
p461
sg16
S'Set<Integer> generated = new LinkedHashSet<Integer>();\nwhile (generated.size() < numbersNeeded) {\n    Integer next = rng.nextInt(max) + 1;\n    generated.add(next);\n}'
p462
sg18
g3
((lp463
VCreating random numbers with no duplicates
p464
atp465
Rp466
sa(dp467
g2
g3
((lp468
Vimport java.util.ArrayList;\u000aimport java.util.Random;\u000a\u000apublic class Test {\u000a    public static void main(String[] args) {\u000a        int size = 20;\u000a\u000a        ArrayList<Integer> list = new ArrayList<Integer>(size);\u000a        for(int i = 1; i <= size; i++) {\u000a            list.add(i);\u000a        }\u000a\u000a        Random rand = new Random();\u000a        while(list.size() > 0) {\u000a            int index = rand.nextInt(list.size());\u000a            System.out.println("Selected: "+list.remove(index));\u000a        }\u000a    }\u000a}\u000a
p469
atp470
Rp471
sg7
I4040001
sg8
g3
((lp472
Vimport java.util.ArrayList;\u000aimport java.util.Random;\u000a\u000apublic class Test {\u000a    public static void main(String[] args) {\u000a        int size = 20;\u000a\u000a        ArrayList<Integer> list = new ArrayList<Integer>(size);\u000a        for(int i = 1; i <= size; i++) {\u000a            list.add(i);\u000a        }\u000a\u000a        Random rand = new Random();\u000a        while(list.size() > 0) {\u000a            int index = rand.nextInt(list.size());\u000a            System.out.println("Selected: "+list.remove(index));\u000a        }\u000a    }\u000a}\u000a
p473
atp474
Rp475
sg13
VCreating random numbers with no duplicates
p476
sg15
S'int size = 20;\nRandom rand = new Random();'
p477
sg16
S'ArrayList<Integer> list = new ArrayList<Integer>(size);\nfor (int i = 1; i <= size; i++) {\n    list.add(i);\n}\nwhile (list.size() > 0) {\n    int index = rand.nextInt(list.size());\n    System.out.println("Selected: " + list.remove(index));\n}'
p478
sg18
g3
((lp479
g464
atp480
Rp481
sa(dp482
g2
g3
((lp483
V//random numbers are 0,1,2,3 \u000aArrayList<Integer> numbers = new ArrayList<Integer>();   \u000aRandom randomGenerator = new Random();\u000awhile (numbers.size() < 4) {\u000a\u000a    int random = randomGenerator .nextInt(4);\u000a    if (!numbers.contains(random)) {\u000a        numbers.add(random);\u000a    }\u000a}\u000a
p484
atp485
Rp486
sg7
I4040001
sg8
g3
((lp487
V//random numbers are 0,1,2,3 \u000aArrayList<Integer> numbers = new ArrayList<Integer>();   \u000aRandom randomGenerator = new Random();\u000awhile (numbers.size() < 4) {\u000a\u000a    int random = randomGenerator .nextInt(4);\u000a    if (!numbers.contains(random)) {\u000a        numbers.add(random);\u000a    }\u000a}\u000a
p488
atp489
Rp490
sg13
VCreating random numbers with no duplicates
p491
sg15
S'Random randomGenerator = new Random();'
p492
sg16
S'ArrayList<Integer> numbers = new ArrayList<Integer>();\nwhile (numbers.size() < 4) {\n    int random = randomGenerator.nextInt(4);\n    if (!numbers.contains(random)) {\n        numbers.add(random);\n    }\n}'
p493
sg18
g3
((lp494
g464
atp495
Rp496
sa(dp497
g2
g3
((lp498
VSystem.out.println(ANSI_RED + "This text is red!" + ANSI_RESET);\u000a
p499
aVpublic static final String ANSI_BLACK_BACKGROUND = "\u005cu001B[40m";\u000apublic static final String ANSI_RED_BACKGROUND = "\u005cu001B[41m";\u000apublic static final String ANSI_GREEN_BACKGROUND = "\u005cu001B[42m";\u000apublic static final String ANSI_YELLOW_BACKGROUND = "\u005cu001B[43m";\u000apublic static final String ANSI_BLUE_BACKGROUND = "\u005cu001B[44m";\u000apublic static final String ANSI_PURPLE_BACKGROUND = "\u005cu001B[45m";\u000apublic static final String ANSI_CYAN_BACKGROUND = "\u005cu001B[46m";\u000apublic static final String ANSI_WHITE_BACKGROUND = "\u005cu001B[47m";\u000a
p500
aVSystem.out.println(ANSI_GREEN_BACKGROUND + "This text has a green background but default text!" + ANSI_RESET");\u000aSystem.out.println(ANSI_RED + "This text has red text but a default background!" + ANSI_RESET");\u000aSystem.out.println(ANSI_GREEN_BACKGROUND + ANSI_RED + "This text has a green background and red text!" + ANSI_RESET");\u000a
p501
aVpublic static final String ANSI_RESET = "\u005cu001B[0m";\u000apublic static final String ANSI_BLACK = "\u005cu001B[30m";\u000apublic static final String ANSI_RED = "\u005cu001B[31m";\u000apublic static final String ANSI_GREEN = "\u005cu001B[32m";\u000apublic static final String ANSI_YELLOW = "\u005cu001B[33m";\u000apublic static final String ANSI_BLUE = "\u005cu001B[34m";\u000apublic static final String ANSI_PURPLE = "\u005cu001B[35m";\u000apublic static final String ANSI_CYAN = "\u005cu001B[36m";\u000apublic static final String ANSI_WHITE = "\u005cu001B[37m";\u000a
p502
atp503
Rp504
sg7
I5762491
sg8
g3
((lp505
VSystem.out.println(ANSI_RED + "This text is red!" + ANSI_RESET);\u000a
p506
aVpublic static final String ANSI_BLACK_BACKGROUND = "\u005cu001B[40m";\u000apublic static final String ANSI_RED_BACKGROUND = "\u005cu001B[41m";\u000apublic static final String ANSI_GREEN_BACKGROUND = "\u005cu001B[42m";\u000apublic static final String ANSI_YELLOW_BACKGROUND = "\u005cu001B[43m";\u000apublic static final String ANSI_BLUE_BACKGROUND = "\u005cu001B[44m";\u000apublic static final String ANSI_PURPLE_BACKGROUND = "\u005cu001B[45m";\u000apublic static final String ANSI_CYAN_BACKGROUND = "\u005cu001B[46m";\u000apublic static final String ANSI_WHITE_BACKGROUND = "\u005cu001B[47m";\u000a
p507
aVSystem.out.println(ANSI_GREEN_BACKGROUND + "This text has a green background but default text!" + ANSI_RESET");\u000aSystem.out.println(ANSI_RED + "This text has red text but a default background!" + ANSI_RESET");\u000aSystem.out.println(ANSI_GREEN_BACKGROUND + ANSI_RED + "This text has a green background and red text!" + ANSI_RESET");\u000a
p508
aVpublic static final String ANSI_RESET = "\u005cu001B[0m";\u000apublic static final String ANSI_BLACK = "\u005cu001B[30m";\u000apublic static final String ANSI_RED = "\u005cu001B[31m";\u000apublic static final String ANSI_GREEN = "\u005cu001B[32m";\u000apublic static final String ANSI_YELLOW = "\u005cu001B[33m";\u000apublic static final String ANSI_BLUE = "\u005cu001B[34m";\u000apublic static final String ANSI_PURPLE = "\u005cu001B[35m";\u000apublic static final String ANSI_CYAN = "\u005cu001B[36m";\u000apublic static final String ANSI_WHITE = "\u005cu001B[37m";\u000a
p509
atp510
Rp511
sg13
g14
sg15
S'public static final String ANSI_RESET = "\x1b[0m";\npublic static final String ANSI_BLACK = "\x1b[30m";\npublic static final String ANSI_RED = "\x1b[31m";\npublic static final String ANSI_GREEN = "\x1b[32m";\npublic static final String ANSI_YELLOW = "\x1b[33m";\npublic static final String ANSI_BLUE = "\x1b[34m";\npublic static final String ANSI_PURPLE = "\x1b[35m";\npublic static final String ANSI_CYAN = "\x1b[36m";\npublic static final String ANSI_WHITE = "\x1b[37m";'
p512
sg16
S'System.out.println(ANSI_RED + "This text is red!" + ANSI_RESET);'
p513
sg18
g3
((lp514
VHow to print color in console using System.out.println?
p515
atp516
Rp517
sa(dp518
g2
g3
((lp519
tp520
Rp521
sg7
I5762491
sg8
g3
((lp522
Vprint("Hello World!", Attribute.BOLD, FColor.YELLOW, BColor.GREEN);\u000a
p523
atp524
Rp525
sg13
g14
sg15
Nsg16
S'print("Hello World!", Attribute.BOLD, FColor.YELLOW, BColor.GREEN);'
p526
sg18
g3
((lp527
g515
atp528
Rp529
sa(dp530
g2
g3
((lp531
tp532
Rp533
sg7
I75175
sg8
g3
((lp534
Vprivate static class SomeContainer<E>\u000a{\u000a    E createContents(Class<E> clazz)\u000a    {\u000a        return clazz.newInstance();\u000a    }\u000a}\u000a
p535
atp536
Rp537
sg13
VCreate instance of generic type in Java?
p538
sg15
Nsg16
S'return clazz.newInstance();'
p539
sg18
g3
((lp540
VCreate instance of generic type in Java?
p541
atp542
Rp543
sa(dp544
g2
g3
((lp545
Vpublic abstract class Foo<E> {\u000a\u000a  public E instance;  \u000a\u000a  public Foo() throws Exception {\u000a    instance = ((Class)((ParameterizedType)this.getClass().\u000a       getGenericSuperclass()).getActualTypeArguments()[0]).newInstance();\u000a    ...\u000a  }\u000a\u000a}\u000a
p546
aV// notice that this in anonymous subclass of Foo\u000aassert( new Foo<Bar>() {}.instance instanceof Bar );\u000a
p547
atp548
Rp549
sg7
I75175
sg8
g3
((lp550
Vpublic abstract class Foo<E> {\u000a\u000a  public E instance;  \u000a\u000a  public Foo() throws Exception {\u000a    instance = ((Class)((ParameterizedType)this.getClass().\u000a       getGenericSuperclass()).getActualTypeArguments()[0]).newInstance();\u000a    ...\u000a  }\u000a\u000a}\u000a
p551
aV// notice that this in anonymous subclass of Foo\u000aassert( new Foo<Bar>() {}.instance instanceof Bar );\u000a
p552
atp553
Rp554
sg13
VCreate instance of generic type in Java?
p555
sg15
Nsg16
S'new Foo<Bar>();'
p556
sg18
g3
((lp557
g541
atp558
Rp559
sa(dp560
g2
g3
((lp561
Vinterface Factory<E> {\u000a    E create();\u000a}\u000a\u000aclass SomeContainer<E> {\u000a    private final Factory<E> factory;\u000a    SomeContainer(Factory<E> factory) {\u000a        this.factory = factory;\u000a    }\u000a    E createContents() {\u000a        return factory.create();\u000a    }\u000a}\u000a
p562
atp563
Rp564
sg7
I75175
sg8
g3
((lp565
Vinterface Factory<E> {\u000a    E create();\u000a}\u000a\u000aclass SomeContainer<E> {\u000a    private final Factory<E> factory;\u000a    SomeContainer(Factory<E> factory) {\u000a        this.factory = factory;\u000a    }\u000a    E createContents() {\u000a        return factory.create();\u000a    }\u000a}\u000a
p566
atp567
Rp568
sg13
VCreate instance of generic type in Java?
p569
sg15
Nsg16
S'return factory.create();'
p570
sg18
g3
((lp571
g541
atp572
Rp573
sa(dp574
g2
g3
((lp575
tp576
Rp577
sg7
I1892765
sg8
g3
((lp578
tp579
Rp580
sg13
g14
sg15
Nsg16
S'WordUtils.capitalize(str);'
p581
sg18
g3
((lp582
VHow to capitalize the first character of each word in a string
p583
atp584
Rp585
sa(dp586
g2
g3
((lp587
tp588
Rp589
sg7
I1892765
sg8
g3
((lp590
Vpublic static String capitalizeString(String string) {\u000a  char[] chars = string.toLowerCase().toCharArray();\u000a  boolean found = false;\u000a  for (int i = 0; i < chars.length; i++) {\u000a    if (!found && Character.isLetter(chars[i])) {\u000a      chars[i] = Character.toUpperCase(chars[i]);\u000a      found = true;\u000a    } else if (Character.isWhitespace(chars[i]) || chars[i]=='.' || chars[i]=='\u005c'') { // You can add other chars here\u000a      found = false;\u000a    }\u000a  }\u000a  return String.valueOf(chars);\u000a}\u000a
p591
atp592
Rp593
sg13
g14
sg15
Nsg16
S"char[] chars = string.toLowerCase().toCharArray();\nboolean found = false;\nfor (int i = 0; i < chars.length; i++) {\n    if (!found && Character.isLetter(chars[i])) {\n        chars[i] = Character.toUpperCase(chars[i]);\n        found = true;\n    } else if (Character.isWhitespace(chars[i]) || chars[i] == '.' || chars[i] == '\\'') {\n        found = false;\n    }\n}"
p594
sg18
g3
((lp595
g583
atp596
Rp597
sa(dp598
g2
g3
((lp599
tp600
Rp601
sg7
I2364856
sg8
g3
((lp602
VBoolean[] array = new Boolean[size];\u000aArrays.fill(array, Boolean.FALSE);\u000a
p603
aVboolean[] array = new boolean[size];\u000a
p604
atp605
Rp606
sg13
Vinitializing a boolean array in java
p607
sg15
Nsg16
S'boolean[] array = new boolean[size];'
p608
sg18
g3
((lp609
Vinitializing a boolean array in java
p610
atp611
Rp612
sa(dp613
g2
g3
((lp614
VBoolean[] array = new Boolean[size];\u000aArrays.fill(array, Boolean.FALSE);\u000a
p615
aVboolean[] array = new boolean[size];\u000a
p616
atp617
Rp618
sg7
I2364856
sg8
g3
((lp619
VBoolean[] array = new Boolean[size];\u000aArrays.fill(array, Boolean.FALSE);\u000a
p620
aVboolean[] array = new boolean[size];\u000a
p621
atp622
Rp623
sg13
Vinitializing a boolean array in java
p624
sg15
S'Boolean[] array = new Boolean[size];'
p625
sg16
S'Arrays.fill(array, Boolean.FALSE);'
p626
sg18
g3
((lp627
g610
atp628
Rp629
sa(dp630
g2
g3
((lp631
tp632
Rp633
sg7
I7522022
sg8
g3
((lp634
VSystem.out.print("hello");\u000aThread.sleep(1000); // Just to give the user a chance to see "hello".\u000aSystem.out.print("\u005cb\u005cb\u005cb\u005cb\u005cb");\u000aSystem.out.print("world");\u000a
p635
atp636
Rp637
sg13
g14
sg15
Nsg16
S'System.out.print("\\b\\b\\b\\b\\b");'
p638
sg18
g3
((lp639
VHow to delete stuff printed to console by System.out.println()?
p640
atp641
Rp642
sa(dp643
g2
g3
((lp644
tp645
Rp646
sg7
I7522022
sg8
g3
((lp647
VSystem.setOut(new PrintStream(new OutputStream() {\u000a    @Override public void write(int b) throws IOException {}\u000a}));\u000a
p648
aVRuntime.getRuntime().exec("cls");\u000a
p649
atp650
Rp651
sg13
g14
sg15
Nsg16
S'Runtime.getRuntime().exec("cls");'
p652
sg18
g3
((lp653
g640
atp654
Rp655
sa(dp656
g2
g3
((lp657
VSystem.out.print(String.format("\u005c033[2J"));\u000a
p658
aVint count = 1; \u000aSystem.out.print(String.format("\u005c033[%dA",count)); // Move up\u000aSystem.out.print("\u005c033[2K"); // Erase line content\u000a
p659
atp660
Rp661
sg7
I7522022
sg8
g3
((lp662
VSystem.out.print(String.format("\u005c033[2J"));\u000a
p663
aVint count = 1; \u000aSystem.out.print(String.format("\u005c033[%dA",count)); // Move up\u000aSystem.out.print("\u005c033[2K"); // Erase line content\u000a
p664
atp665
Rp666
sg13
g14
sg15
S'int count = 1;'
p667
sg16
S'System.out.print(String.format("\\033[%dA", count));\nSystem.out.print("\\033[2K");'
p668
sg18
g3
((lp669
g640
atp670
Rp671
sa(dp672
g2
g3
((lp673
tp674
Rp675
sg7
I7522022
sg8
g3
((lp676
VSystem.out.print(String.format("\u005c033[2J"));\u000a
p677
aVint count = 1; \u000aSystem.out.print(String.format("\u005c033[%dA",count)); // Move up\u000aSystem.out.print("\u005c033[2K"); // Erase line content\u000a
p678
atp679
Rp680
sg13
g14
sg15
Nsg16
S'System.out.print(String.format("\\033[2J"));'
p681
sg18
g3
((lp682
g640
atp683
Rp684
sa(dp685
g2
g3
((lp686
VFile f = new File(filePathString);\u000aif(f.exists() && !f.isDirectory()) { \u000a    // do something\u000a}\u000a
p687
atp688
Rp689
sg7
I1816673
sg8
g3
((lp690
VFile f = new File(filePathString);\u000aif(f.exists() && !f.isDirectory()) { \u000a    // do something\u000a}\u000a
p691
atp692
Rp693
sg13
g14
sg15
S'File f = new File(filePathString);'
p694
sg16
S'if (f.exists() && !f.isDirectory()) {\n}'
p695
sg18
g3
((lp696
VHow do I check if a file exists in Java?
p697
atp698
Rp699
sa(dp700
g2
g3
((lp701
tp702
Rp703
sg7
I1816673
sg8
g3
((lp704
Vnew File("path/to/file.txt").isFile();\u000a
p705
atp706
Rp707
sg13
g14
sg15
Nsg16
S'new File("path/to/file.txt").isFile();'
p708
sg18
g3
((lp709
g697
atp710
Rp711
sa(dp712
g2
g3
((lp713
tp714
Rp715
sg7
I1816673
sg8
g3
((lp716
Vnew File("path/to/file.txt").isFile();\u000a
p717
atp718
Rp719
sg13
g14
sg15
Nsg16
S'new File("C:/").exists();'
p720
sg18
g3
((lp721
g697
atp722
Rp723
sa(dp724
g2
g3
((lp725
Vimport java.nio.file.*;\u000a\u000aPath path = Paths.get(filePathString);\u000a\u000aif (Files.exists(path)) {\u000a  // file exist\u000a}\u000a\u000aif (Files.notExists(path)) {\u000a  // file is not exist\u000a}\u000a
p726
aVif (Files.isDirectory(path)) {\u000a  // path is directory\u000a}\u000a\u000aif (Files.isRegularFile(path)) {\u000a  // path is regular file\u000a}\u000a
p727
atp728
Rp729
sg7
I1816673
sg8
g3
((lp730
Vimport java.nio.file.*;\u000a\u000aPath path = Paths.get(filePathString);\u000a\u000aif (Files.exists(path)) {\u000a  // file exist\u000a}\u000a\u000aif (Files.notExists(path)) {\u000a  // file is not exist\u000a}\u000a
p731
aVif (Files.isDirectory(path)) {\u000a  // path is directory\u000a}\u000a\u000aif (Files.isRegularFile(path)) {\u000a  // path is regular file\u000a}\u000a
p732
atp733
Rp734
sg13
g14
sg15
S'import java.nio.file.*;'
p735
sg16
S'Path path = Paths.get(filePathString);\nif (Files.exists(path)) {\n}'
p736
sg18
g3
((lp737
g697
atp738
Rp739
sa(dp740
g2
g3
((lp741
VString s = "some text here";\u000abyte[] b = s.getBytes("UTF-8");\u000a
p742
aVbyte[] b = {(byte) 99, (byte)97, (byte)116};\u000aString s = new String(b, "US-ASCII");\u000a
p743
atp744
Rp745
sg7
I88838
sg8
g3
((lp746
VString s = "some text here";\u000abyte[] b = s.getBytes("UTF-8");\u000a
p747
aVbyte[] b = {(byte) 99, (byte)97, (byte)116};\u000aString s = new String(b, "US-ASCII");\u000a
p748
atp749
Rp750
sg13
g14
sg15
S'String s = "some text here";'
p751
sg16
S'byte[] b = s.getBytes("UTF-8");'
p752
sg18
g3
((lp753
VHow to convert Strings to and from UTF8 byte arrays in Java
p754
atp755
Rp756
sa(dp757
g2
g3
((lp758
VString s = "some text here";\u000abyte[] b = s.getBytes("UTF-8");\u000a
p759
aVbyte[] b = {(byte) 99, (byte)97, (byte)116};\u000aString s = new String(b, "US-ASCII");\u000a
p760
atp761
Rp762
sg7
I88838
sg8
g3
((lp763
VString s = "some text here";\u000abyte[] b = s.getBytes("UTF-8");\u000a
p764
aVbyte[] b = {(byte) 99, (byte)97, (byte)116};\u000aString s = new String(b, "US-ASCII");\u000a
p765
atp766
Rp767
sg13
g14
sg15
S'byte[] b = { (byte) 99, (byte) 97, (byte) 116 };'
p768
sg16
S'String s = new String(b, "US-ASCII");'
p769
sg18
g3
((lp770
g754
atp771
Rp772
sa(dp773
g2
g3
((lp774
Vimport java.nio.charset.Charset;\u000a\u000aprivate final Charset UTF8_CHARSET = Charset.forName("UTF-8");\u000a\u000aString decodeUTF8(byte[] bytes) {\u000a    return new String(bytes, UTF8_CHARSET);\u000a}\u000a\u000abyte[] encodeUTF8(String string) {\u000a    return string.getBytes(UTF8_CHARSET);\u000a}\u000a
p775
atp776
Rp777
sg7
I88838
sg8
g3
((lp778
Vimport java.nio.charset.Charset;\u000a\u000aprivate final Charset UTF8_CHARSET = Charset.forName("UTF-8");\u000a\u000aString decodeUTF8(byte[] bytes) {\u000a    return new String(bytes, UTF8_CHARSET);\u000a}\u000a\u000abyte[] encodeUTF8(String string) {\u000a    return string.getBytes(UTF8_CHARSET);\u000a}\u000a
p779
atp780
Rp781
sg13
g14
sg15
Nsg16
S'return new String(bytes, UTF8_CHARSET);'
p782
sg18
g3
((lp783
g754
atp784
Rp785
sa(dp786
g2
g3
((lp787
Vimport java.nio.charset.Charset;\u000a\u000aprivate final Charset UTF8_CHARSET = Charset.forName("UTF-8");\u000a\u000aString decodeUTF8(byte[] bytes) {\u000a    return new String(bytes, UTF8_CHARSET);\u000a}\u000a\u000abyte[] encodeUTF8(String string) {\u000a    return string.getBytes(UTF8_CHARSET);\u000a}\u000a
p788
atp789
Rp790
sg7
I88838
sg8
g3
((lp791
Vimport java.nio.charset.Charset;\u000a\u000aprivate final Charset UTF8_CHARSET = Charset.forName("UTF-8");\u000a\u000aString decodeUTF8(byte[] bytes) {\u000a    return new String(bytes, UTF8_CHARSET);\u000a}\u000a\u000abyte[] encodeUTF8(String string) {\u000a    return string.getBytes(UTF8_CHARSET);\u000a}\u000a
p792
atp793
Rp794
sg13
g14
sg15
Nsg16
S'return string.getBytes(UTF8_CHARSET);'
p795
sg18
g3
((lp796
g754
atp797
Rp798
sa(dp799
g2
g3
((lp800
tp801
Rp802
sg7
I473446
sg8
g3
((lp803
VSystem.getProperty("user.name"); //platform independent \u000a
p804
aVjava.net.InetAddress localMachine = java.net.InetAddress.getLocalHost();\u000aSystem.out.println("Hostname of local machine: " + localMachine.getHostName());\u000a
p805
atp806
Rp807
sg13
g14
sg15
Nsg16
S'System.getProperty("user.name");'
p808
sg18
g3
((lp809
V<p>Is it possible to get the name of the currently logged in user (Windows/Unix) and the hostname of the machine?</p>\u000a\u000a<p>I assume it's just a property of some static environment class.</p>\u000a\u000a<p>I've found this for the user name</p>\u000a\u000a<pre><code>com.sun.security.auth.module.NTSystem NTSystem = new\u000a        com.sun.security.auth.module.NTSystem();\u000aSystem.out.println(NTSystem.getName());\u000a</code></pre>\u000a\u000a<p>and this for the machine name:</p>\u000a\u000a<pre><code>import java.net.InetAddress;\u000a...\u000aString computerName;\u000a...\u000atry {\u000a    computerName = InetAddress.getLocalHost().getHostName();\u000a}\u000a\u000acatch(Exception ex) {\u000a    ...\u000a}\u000a</code></pre>\u000a\u000a<p>Is the first one just for Windows?</p>\u000a\u000a<p>And what will the second one do, if you don't have a hostname set?</p>\u000a
p810
atp811
Rp812
sa(dp813
g2
g3
((lp814
tp815
Rp816
sg7
I473446
sg8
g3
((lp817
VSystem.getProperty("user.name"); //platform independent \u000a
p818
aVjava.net.InetAddress localMachine = java.net.InetAddress.getLocalHost();\u000aSystem.out.println("Hostname of local machine: " + localMachine.getHostName());\u000a
p819
atp820
Rp821
sg13
g14
sg15
Nsg16
S'java.net.InetAddress localMachine = java.net.InetAddress.getLocalHost();\nSystem.out.println("Hostname of local machine: " + localMachine.getHostName());'
p822
sg18
g3
((lp823
V<p>Is it possible to get the name of the currently logged in user (Windows/Unix) and the hostname of the machine?</p>\u000a\u000a<p>I assume it's just a property of some static environment class.</p>\u000a\u000a<p>I've found this for the user name</p>\u000a\u000a<pre><code>com.sun.security.auth.module.NTSystem NTSystem = new\u000a        com.sun.security.auth.module.NTSystem();\u000aSystem.out.println(NTSystem.getName());\u000a</code></pre>\u000a\u000a<p>and this for the machine name:</p>\u000a\u000a<pre><code>import java.net.InetAddress;\u000a...\u000aString computerName;\u000a...\u000atry {\u000a    computerName = InetAddress.getLocalHost().getHostName();\u000a}\u000a\u000acatch(Exception ex) {\u000a    ...\u000a}\u000a</code></pre>\u000a\u000a<p>Is the first one just for Windows?</p>\u000a\u000a<p>And what will the second one do, if you don't have a hostname set?</p>\u000a
p824
atp825
Rp826
sa(dp827
g2
g3
((lp828
tp829
Rp830
sg7
I473446
sg8
g3
((lp831
VInetAddress.getLocalHost().getHostName();\u000a
p832
aVSystem.getProperty("user.name");\u000a
p833
atp834
Rp835
sg13
g14
sg15
Nsg16
S'System.getProperty("user.name");'
p836
sg18
g3
((lp837
V<p>Is it possible to get the name of the currently logged in user (Windows/Unix) and the hostname of the machine?</p>\u000a\u000a<p>I assume it's just a property of some static environment class.</p>\u000a\u000a<p>I've found this for the user name</p>\u000a\u000a<pre><code>com.sun.security.auth.module.NTSystem NTSystem = new\u000a        com.sun.security.auth.module.NTSystem();\u000aSystem.out.println(NTSystem.getName());\u000a</code></pre>\u000a\u000a<p>and this for the machine name:</p>\u000a\u000a<pre><code>import java.net.InetAddress;\u000a...\u000aString computerName;\u000a...\u000atry {\u000a    computerName = InetAddress.getLocalHost().getHostName();\u000a}\u000a\u000acatch(Exception ex) {\u000a    ...\u000a}\u000a</code></pre>\u000a\u000a<p>Is the first one just for Windows?</p>\u000a\u000a<p>And what will the second one do, if you don't have a hostname set?</p>\u000a
p838
atp839
Rp840
sa(dp841
g2
g3
((lp842
tp843
Rp844
sg7
I473446
sg8
g3
((lp845
VInetAddress.getLocalHost().getHostName();\u000a
p846
aVSystem.getProperty("user.name");\u000a
p847
atp848
Rp849
sg13
g14
sg15
Nsg16
S'InetAddress.getLocalHost().getHostName();'
p850
sg18
g3
((lp851
V<p>Is it possible to get the name of the currently logged in user (Windows/Unix) and the hostname of the machine?</p>\u000a\u000a<p>I assume it's just a property of some static environment class.</p>\u000a\u000a<p>I've found this for the user name</p>\u000a\u000a<pre><code>com.sun.security.auth.module.NTSystem NTSystem = new\u000a        com.sun.security.auth.module.NTSystem();\u000aSystem.out.println(NTSystem.getName());\u000a</code></pre>\u000a\u000a<p>and this for the machine name:</p>\u000a\u000a<pre><code>import java.net.InetAddress;\u000a...\u000aString computerName;\u000a...\u000atry {\u000a    computerName = InetAddress.getLocalHost().getHostName();\u000a}\u000a\u000acatch(Exception ex) {\u000a    ...\u000a}\u000a</code></pre>\u000a\u000a<p>Is the first one just for Windows?</p>\u000a\u000a<p>And what will the second one do, if you don't have a hostname set?</p>\u000a
p852
atp853
Rp854
sa(dp855
g2
g3
((lp856
VString[] myarray = new String[numberofstrings];\u000amyarray[23] = string24; //this sets the 24'th (first index is 0) element to string24.\u000a
p857
aVArrayList<String> mylist = new ArrayList<String>();\u000amylist.add(mystring); //this adds an element to the list.\u000a
p858
atp859
Rp860
sg7
I15039519
sg8
g3
((lp861
VString[] myarray = new String[numberofstrings];\u000amyarray[23] = string24; //this sets the 24'th (first index is 0) element to string24.\u000a
p862
aVArrayList<String> mylist = new ArrayList<String>();\u000amylist.add(mystring); //this adds an element to the list.\u000a
p863
atp864
Rp865
sg13
g14
sg15
S'ArrayList<String> mylist = new ArrayList<String>();'
p866
sg16
S'mylist.add(mystring);'
p867
sg18
g3
((lp868
VHow to dynamically add elements to String array?
p869
atp870
Rp871
sa(dp872
g2
g3
((lp873
Vstr[0] = "value1"\u000astr[1] = "value2"\u000astr[2] = "value3"\u000astr[3] = "value4"\u000astr[4] = "value5"\u000astr[5] = "value6"\u000astr[6] = "value7"\u000astr[7] = "value8"\u000astr[8] = "value9"\u000astr[9] = "value10"\u000a
p874
aVstr.add("Value1");\u000a
p875
aVint nCount = str.size();\u000a
p876
aVString[] str = new String[10];\u000a
p877
aVString s = str.get(0);\u000a
p878
atp879
Rp880
sg7
I15039519
sg8
g3
((lp881
Vstr[0] = "value1"\u000astr[1] = "value2"\u000astr[2] = "value3"\u000astr[3] = "value4"\u000astr[4] = "value5"\u000astr[5] = "value6"\u000astr[6] = "value7"\u000astr[7] = "value8"\u000astr[8] = "value9"\u000astr[9] = "value10"\u000a
p882
aVstr.add("Value1");\u000a
p883
aVint nCount = str.size();\u000a
p884
aVString[] str = new String[10];\u000a
p885
aVString s = str.get(0);\u000a
p886
atp887
Rp888
sg13
g14
sg15
S'ArrayList str = new ArrayList();'
p889
sg16
S'str.add("Value1");'
p890
sg18
g3
((lp891
g869
atp892
Rp893
sa(dp894
g2
g3
((lp895
Vstr[0] = "value1"\u000astr[1] = "value2"\u000astr[2] = "value3"\u000astr[3] = "value4"\u000astr[4] = "value5"\u000astr[5] = "value6"\u000astr[6] = "value7"\u000astr[7] = "value8"\u000astr[8] = "value9"\u000astr[9] = "value10"\u000a
p896
aVstr.add("Value1");\u000a
p897
aVint nCount = str.size();\u000a
p898
aVString[] str = new String[10];\u000a
p899
aVString s = str.get(0);\u000a
p900
atp901
Rp902
sg7
I15039519
sg8
g3
((lp903
Vstr[0] = "value1"\u000astr[1] = "value2"\u000astr[2] = "value3"\u000astr[3] = "value4"\u000astr[4] = "value5"\u000astr[5] = "value6"\u000astr[6] = "value7"\u000astr[7] = "value8"\u000astr[8] = "value9"\u000astr[9] = "value10"\u000a
p904
aVstr.add("Value1");\u000a
p905
aVint nCount = str.size();\u000a
p906
aVString[] str = new String[10];\u000a
p907
aVString s = str.get(0);\u000a
p908
atp909
Rp910
sg13
g14
sg15
S'ArrayList str = new ArrayList();'
p911
sg16
S'str.add("Value1");'
p912
sg18
g3
((lp913
g869
atp914
Rp915
sa(dp916
g2
g3
((lp917
Vstr[0] = "value1"\u000astr[1] = "value2"\u000astr[2] = "value3"\u000astr[3] = "value4"\u000astr[4] = "value5"\u000astr[5] = "value6"\u000astr[6] = "value7"\u000astr[7] = "value8"\u000astr[8] = "value9"\u000astr[9] = "value10"\u000a
p918
aVstr.add("Value1");\u000a
p919
aVint nCount = str.size();\u000a
p920
aVString[] str = new String[10];\u000a
p921
aVString s = str.get(0);\u000a
p922
atp923
Rp924
sg7
I15039519
sg8
g3
((lp925
Vstr[0] = "value1"\u000astr[1] = "value2"\u000astr[2] = "value3"\u000astr[3] = "value4"\u000astr[4] = "value5"\u000astr[5] = "value6"\u000astr[6] = "value7"\u000astr[7] = "value8"\u000astr[8] = "value9"\u000astr[9] = "value10"\u000a
p926
aVstr.add("Value1");\u000a
p927
aVint nCount = str.size();\u000a
p928
aVString[] str = new String[10];\u000a
p929
aVString s = str.get(0);\u000a
p930
atp931
Rp932
sg13
g14
sg15
S'ArrayList str = new ArrayList();'
p933
sg16
S'str.add("Value1");'
p934
sg18
g3
((lp935
g869
atp936
Rp937
sa(dp938
g2
g3
((lp939
Vstr[0] = "value1"\u000astr[1] = "value2"\u000astr[2] = "value3"\u000astr[3] = "value4"\u000astr[4] = "value5"\u000astr[5] = "value6"\u000astr[6] = "value7"\u000astr[7] = "value8"\u000astr[8] = "value9"\u000astr[9] = "value10"\u000a
p940
aVstr.add("Value1");\u000a
p941
aVint nCount = str.size();\u000a
p942
aVString[] str = new String[10];\u000a
p943
aVString s = str.get(0);\u000a
p944
atp945
Rp946
sg7
I15039519
sg8
g3
((lp947
Vstr[0] = "value1"\u000astr[1] = "value2"\u000astr[2] = "value3"\u000astr[3] = "value4"\u000astr[4] = "value5"\u000astr[5] = "value6"\u000astr[6] = "value7"\u000astr[7] = "value8"\u000astr[8] = "value9"\u000astr[9] = "value10"\u000a
p948
aVstr.add("Value1");\u000a
p949
aVint nCount = str.size();\u000a
p950
aVString[] str = new String[10];\u000a
p951
aVString s = str.get(0);\u000a
p952
atp953
Rp954
sg13
g14
sg15
S'ArrayList str = new ArrayList();'
p955
sg16
S'str.add("Value1");'
p956
sg18
g3
((lp957
g869
atp958
Rp959
sa(dp960
g2
g3
((lp961
Vstr[0] = "value1"\u000astr[1] = "value2"\u000astr[2] = "value3"\u000astr[3] = "value4"\u000astr[4] = "value5"\u000astr[5] = "value6"\u000astr[6] = "value7"\u000astr[7] = "value8"\u000astr[8] = "value9"\u000astr[9] = "value10"\u000a
p962
aVstr.add("Value1");\u000a
p963
aVint nCount = str.size();\u000a
p964
aVString[] str = new String[10];\u000a
p965
aVString s = str.get(0);\u000a
p966
atp967
Rp968
sg7
I15039519
sg8
g3
((lp969
Vstr[0] = "value1"\u000astr[1] = "value2"\u000astr[2] = "value3"\u000astr[3] = "value4"\u000astr[4] = "value5"\u000astr[5] = "value6"\u000astr[6] = "value7"\u000astr[7] = "value8"\u000astr[8] = "value9"\u000astr[9] = "value10"\u000a
p970
aVstr.add("Value1");\u000a
p971
aVint nCount = str.size();\u000a
p972
aVString[] str = new String[10];\u000a
p973
aVString s = str.get(0);\u000a
p974
atp975
Rp976
sg13
g14
sg15
S'ArrayList str = new ArrayList();'
p977
sg16
S'str.add("Value1");'
p978
sg18
g3
((lp979
g869
atp980
Rp981
sa(dp982
g2
g3
((lp983
Vpublic static <K, V extends Comparable<? super V>> Map<K, V> \u000a    sortByValue( Map<K, V> map )\u000a{\u000a    List<Map.Entry<K, V>> list =\u000a        new LinkedList<>( map.entrySet() );\u000a    Collections.sort( list, new Comparator<Map.Entry<K, V>>()\u000a    {\u000a        @Override\u000a        public int compare( Map.Entry<K, V> o1, Map.Entry<K, V> o2 )\u000a        {\u000a            return ( o1.getValue() ).compareTo( o2.getValue() );\u000a        }\u000a    } );\u000a\u000a    Map<K, V> result = new LinkedHashMap<>();\u000a    for (Map.Entry<K, V> entry : list)\u000a    {\u000a        result.put( entry.getKey(), entry.getValue() );\u000a    }\u000a    return result;\u000a}\u000a
p984
aVpublic static <K, V extends Comparable<? super V>> Map<K, V> sortByValue(Map<K, V> map) {\u000a    return map.entrySet()\u000a              .stream()\u000a              .sorted(Map.Entry.comparingByValue(/*Collections.reverseOrder()*/))\u000a              .collect(Collectors.toMap(\u000a                Map.Entry::getKey, \u000a                Map.Entry::getValue, \u000a                (e1, e2) -> e1, \u000a                LinkedHashMap::new\u000a              ));\u000a}\u000a
p985
aVimport java.util.*;\u000a\u000apublic class MapUtil\u000a{\u000a    public static <K, V extends Comparable<? super V>> Map<K, V> \u000a        sortByValue( Map<K, V> map )\u000a    {\u000a        List<Map.Entry<K, V>> list =\u000a            new LinkedList<Map.Entry<K, V>>( map.entrySet() );\u000a        Collections.sort( list, new Comparator<Map.Entry<K, V>>()\u000a        {\u000a            public int compare( Map.Entry<K, V> o1, Map.Entry<K, V> o2 )\u000a            {\u000a                return (o1.getValue()).compareTo( o2.getValue() );\u000a            }\u000a        } );\u000a\u000a        Map<K, V> result = new LinkedHashMap<K, V>();\u000a        for (Map.Entry<K, V> entry : list)\u000a        {\u000a            result.put( entry.getKey(), entry.getValue() );\u000a        }\u000a        return result;\u000a    }\u000a}\u000a
p986
aVimport java.util.*;\u000aimport org.junit.*;\u000a\u000apublic class MapUtilTest\u000a{\u000a    @Test\u000a    public void testSortByValue()\u000a    {\u000a        Random random = new Random(System.currentTimeMillis());\u000a        Map<String, Integer> testMap = new HashMap<String, Integer>(1000);\u000a        for(int i = 0 ; i < 1000 ; ++i) {\u000a            testMap.put( "SomeString" + random.nextInt(), random.nextInt());\u000a        }\u000a\u000a        testMap = MapUtil.sortByValue( testMap );\u000a        Assert.assertEquals( 1000, testMap.size() );\u000a\u000a        Integer previous = null;\u000a        for(Map.Entry<String, Integer> entry : testMap.entrySet()) {\u000a            Assert.assertNotNull( entry.getValue() );\u000a            if (previous != null) {\u000a                Assert.assertTrue( entry.getValue() >= previous );\u000a            }\u000a            previous = entry.getValue();\u000a        }\u000a    }\u000a\u000a}\u000a
p987
atp988
Rp989
sg7
I109383
sg8
g3
((lp990
Vpublic static <K, V extends Comparable<? super V>> Map<K, V> \u000a    sortByValue( Map<K, V> map )\u000a{\u000a    List<Map.Entry<K, V>> list =\u000a        new LinkedList<>( map.entrySet() );\u000a    Collections.sort( list, new Comparator<Map.Entry<K, V>>()\u000a    {\u000a        @Override\u000a        public int compare( Map.Entry<K, V> o1, Map.Entry<K, V> o2 )\u000a        {\u000a            return ( o1.getValue() ).compareTo( o2.getValue() );\u000a        }\u000a    } );\u000a\u000a    Map<K, V> result = new LinkedHashMap<>();\u000a    for (Map.Entry<K, V> entry : list)\u000a    {\u000a        result.put( entry.getKey(), entry.getValue() );\u000a    }\u000a    return result;\u000a}\u000a
p991
aVpublic static <K, V extends Comparable<? super V>> Map<K, V> sortByValue(Map<K, V> map) {\u000a    return map.entrySet()\u000a              .stream()\u000a              .sorted(Map.Entry.comparingByValue(/*Collections.reverseOrder()*/))\u000a              .collect(Collectors.toMap(\u000a                Map.Entry::getKey, \u000a                Map.Entry::getValue, \u000a                (e1, e2) -> e1, \u000a                LinkedHashMap::new\u000a              ));\u000a}\u000a
p992
aVimport java.util.*;\u000a\u000apublic class MapUtil\u000a{\u000a    public static <K, V extends Comparable<? super V>> Map<K, V> \u000a        sortByValue( Map<K, V> map )\u000a    {\u000a        List<Map.Entry<K, V>> list =\u000a            new LinkedList<Map.Entry<K, V>>( map.entrySet() );\u000a        Collections.sort( list, new Comparator<Map.Entry<K, V>>()\u000a        {\u000a            public int compare( Map.Entry<K, V> o1, Map.Entry<K, V> o2 )\u000a            {\u000a                return (o1.getValue()).compareTo( o2.getValue() );\u000a            }\u000a        } );\u000a\u000a        Map<K, V> result = new LinkedHashMap<K, V>();\u000a        for (Map.Entry<K, V> entry : list)\u000a        {\u000a            result.put( entry.getKey(), entry.getValue() );\u000a        }\u000a        return result;\u000a    }\u000a}\u000a
p993
aVimport java.util.*;\u000aimport org.junit.*;\u000a\u000apublic class MapUtilTest\u000a{\u000a    @Test\u000a    public void testSortByValue()\u000a    {\u000a        Random random = new Random(System.currentTimeMillis());\u000a        Map<String, Integer> testMap = new HashMap<String, Integer>(1000);\u000a        for(int i = 0 ; i < 1000 ; ++i) {\u000a            testMap.put( "SomeString" + random.nextInt(), random.nextInt());\u000a        }\u000a\u000a        testMap = MapUtil.sortByValue( testMap );\u000a        Assert.assertEquals( 1000, testMap.size() );\u000a\u000a        Integer previous = null;\u000a        for(Map.Entry<String, Integer> entry : testMap.entrySet()) {\u000a            Assert.assertNotNull( entry.getValue() );\u000a            if (previous != null) {\u000a                Assert.assertTrue( entry.getValue() >= previous );\u000a            }\u000a            previous = entry.getValue();\u000a        }\u000a    }\u000a\u000a}\u000a
p994
atp995
Rp996
sg13
VSort a Map<Key, Value> by values (Java)
p997
sg15
S'import java.util.*;'
p998
sg16
S'List<Map.Entry<K, V>> list = new LinkedList<Map.Entry<K, V>>(map.entrySet());\nCollections.sort(list, new Comparator<Map.Entry<K, V>>() {\n\n    public int compare(Map.Entry<K, V> o1, Map.Entry<K, V> o2) {\n        return (o1.getValue()).compareTo(o2.getValue());\n    }\n});\nMap<K, V> result = new LinkedHashMap<K, V>();\nfor (Map.Entry<K, V> entry : list) {\n    result.put(entry.getKey(), entry.getValue());\n}'
p999
sg18
g3
((lp1000
VSort a Map<Key, Value> by values (Java)
p1001
atp1002
Rp1003
sa(dp1004
g2
g3
((lp1005
Vpublic static <K, V extends Comparable<? super V>> Map<K, V> \u000a    sortByValue( Map<K, V> map )\u000a{\u000a    List<Map.Entry<K, V>> list =\u000a        new LinkedList<>( map.entrySet() );\u000a    Collections.sort( list, new Comparator<Map.Entry<K, V>>()\u000a    {\u000a        @Override\u000a        public int compare( Map.Entry<K, V> o1, Map.Entry<K, V> o2 )\u000a        {\u000a            return ( o1.getValue() ).compareTo( o2.getValue() );\u000a        }\u000a    } );\u000a\u000a    Map<K, V> result = new LinkedHashMap<>();\u000a    for (Map.Entry<K, V> entry : list)\u000a    {\u000a        result.put( entry.getKey(), entry.getValue() );\u000a    }\u000a    return result;\u000a}\u000a
p1006
aVpublic static <K, V extends Comparable<? super V>> Map<K, V> sortByValue(Map<K, V> map) {\u000a    return map.entrySet()\u000a              .stream()\u000a              .sorted(Map.Entry.comparingByValue(/*Collections.reverseOrder()*/))\u000a              .collect(Collectors.toMap(\u000a                Map.Entry::getKey, \u000a                Map.Entry::getValue, \u000a                (e1, e2) -> e1, \u000a                LinkedHashMap::new\u000a              ));\u000a}\u000a
p1007
aVimport java.util.*;\u000a\u000apublic class MapUtil\u000a{\u000a    public static <K, V extends Comparable<? super V>> Map<K, V> \u000a        sortByValue( Map<K, V> map )\u000a    {\u000a        List<Map.Entry<K, V>> list =\u000a            new LinkedList<Map.Entry<K, V>>( map.entrySet() );\u000a        Collections.sort( list, new Comparator<Map.Entry<K, V>>()\u000a        {\u000a            public int compare( Map.Entry<K, V> o1, Map.Entry<K, V> o2 )\u000a            {\u000a                return (o1.getValue()).compareTo( o2.getValue() );\u000a            }\u000a        } );\u000a\u000a        Map<K, V> result = new LinkedHashMap<K, V>();\u000a        for (Map.Entry<K, V> entry : list)\u000a        {\u000a            result.put( entry.getKey(), entry.getValue() );\u000a        }\u000a        return result;\u000a    }\u000a}\u000a
p1008
aVimport java.util.*;\u000aimport org.junit.*;\u000a\u000apublic class MapUtilTest\u000a{\u000a    @Test\u000a    public void testSortByValue()\u000a    {\u000a        Random random = new Random(System.currentTimeMillis());\u000a        Map<String, Integer> testMap = new HashMap<String, Integer>(1000);\u000a        for(int i = 0 ; i < 1000 ; ++i) {\u000a            testMap.put( "SomeString" + random.nextInt(), random.nextInt());\u000a        }\u000a\u000a        testMap = MapUtil.sortByValue( testMap );\u000a        Assert.assertEquals( 1000, testMap.size() );\u000a\u000a        Integer previous = null;\u000a        for(Map.Entry<String, Integer> entry : testMap.entrySet()) {\u000a            Assert.assertNotNull( entry.getValue() );\u000a            if (previous != null) {\u000a                Assert.assertTrue( entry.getValue() >= previous );\u000a            }\u000a            previous = entry.getValue();\u000a        }\u000a    }\u000a\u000a}\u000a
p1009
atp1010
Rp1011
sg7
I109383
sg8
g3
((lp1012
Vpublic static <K, V extends Comparable<? super V>> Map<K, V> \u000a    sortByValue( Map<K, V> map )\u000a{\u000a    List<Map.Entry<K, V>> list =\u000a        new LinkedList<>( map.entrySet() );\u000a    Collections.sort( list, new Comparator<Map.Entry<K, V>>()\u000a    {\u000a        @Override\u000a        public int compare( Map.Entry<K, V> o1, Map.Entry<K, V> o2 )\u000a        {\u000a            return ( o1.getValue() ).compareTo( o2.getValue() );\u000a        }\u000a    } );\u000a\u000a    Map<K, V> result = new LinkedHashMap<>();\u000a    for (Map.Entry<K, V> entry : list)\u000a    {\u000a        result.put( entry.getKey(), entry.getValue() );\u000a    }\u000a    return result;\u000a}\u000a
p1013
aVpublic static <K, V extends Comparable<? super V>> Map<K, V> sortByValue(Map<K, V> map) {\u000a    return map.entrySet()\u000a              .stream()\u000a              .sorted(Map.Entry.comparingByValue(/*Collections.reverseOrder()*/))\u000a              .collect(Collectors.toMap(\u000a                Map.Entry::getKey, \u000a                Map.Entry::getValue, \u000a                (e1, e2) -> e1, \u000a                LinkedHashMap::new\u000a              ));\u000a}\u000a
p1014
aVimport java.util.*;\u000a\u000apublic class MapUtil\u000a{\u000a    public static <K, V extends Comparable<? super V>> Map<K, V> \u000a        sortByValue( Map<K, V> map )\u000a    {\u000a        List<Map.Entry<K, V>> list =\u000a            new LinkedList<Map.Entry<K, V>>( map.entrySet() );\u000a        Collections.sort( list, new Comparator<Map.Entry<K, V>>()\u000a        {\u000a            public int compare( Map.Entry<K, V> o1, Map.Entry<K, V> o2 )\u000a            {\u000a                return (o1.getValue()).compareTo( o2.getValue() );\u000a            }\u000a        } );\u000a\u000a        Map<K, V> result = new LinkedHashMap<K, V>();\u000a        for (Map.Entry<K, V> entry : list)\u000a        {\u000a            result.put( entry.getKey(), entry.getValue() );\u000a        }\u000a        return result;\u000a    }\u000a}\u000a
p1015
aVimport java.util.*;\u000aimport org.junit.*;\u000a\u000apublic class MapUtilTest\u000a{\u000a    @Test\u000a    public void testSortByValue()\u000a    {\u000a        Random random = new Random(System.currentTimeMillis());\u000a        Map<String, Integer> testMap = new HashMap<String, Integer>(1000);\u000a        for(int i = 0 ; i < 1000 ; ++i) {\u000a            testMap.put( "SomeString" + random.nextInt(), random.nextInt());\u000a        }\u000a\u000a        testMap = MapUtil.sortByValue( testMap );\u000a        Assert.assertEquals( 1000, testMap.size() );\u000a\u000a        Integer previous = null;\u000a        for(Map.Entry<String, Integer> entry : testMap.entrySet()) {\u000a            Assert.assertNotNull( entry.getValue() );\u000a            if (previous != null) {\u000a                Assert.assertTrue( entry.getValue() >= previous );\u000a            }\u000a            previous = entry.getValue();\u000a        }\u000a    }\u000a\u000a}\u000a
p1016
atp1017
Rp1018
sg13
VSort a Map<Key, Value> by values (Java)
p1019
sg15
S'import java.util.*;'
p1020
sg16
S'List<Map.Entry<K, V>> list = new LinkedList<>(map.entrySet());\nCollections.sort(list, new Comparator<Map.Entry<K, V>>() {\n\n    @Override\n    public int compare(Map.Entry<K, V> o1, Map.Entry<K, V> o2) {\n        return (o1.getValue()).compareTo(o2.getValue());\n    }\n});\nMap<K, V> result = new LinkedHashMap<>();\nfor (Map.Entry<K, V> entry : list) {\n    result.put(entry.getKey(), entry.getValue());\n}'
p1021
sg18
g3
((lp1022
g1001
atp1023
Rp1024
sa(dp1025
g2
g3
((lp1026
Vpublic static <K, V extends Comparable<? super V>> Map<K, V> \u000a    sortByValue( Map<K, V> map )\u000a{\u000a    List<Map.Entry<K, V>> list =\u000a        new LinkedList<>( map.entrySet() );\u000a    Collections.sort( list, new Comparator<Map.Entry<K, V>>()\u000a    {\u000a        @Override\u000a        public int compare( Map.Entry<K, V> o1, Map.Entry<K, V> o2 )\u000a        {\u000a            return ( o1.getValue() ).compareTo( o2.getValue() );\u000a        }\u000a    } );\u000a\u000a    Map<K, V> result = new LinkedHashMap<>();\u000a    for (Map.Entry<K, V> entry : list)\u000a    {\u000a        result.put( entry.getKey(), entry.getValue() );\u000a    }\u000a    return result;\u000a}\u000a
p1027
aVpublic static <K, V extends Comparable<? super V>> Map<K, V> sortByValue(Map<K, V> map) {\u000a    return map.entrySet()\u000a              .stream()\u000a              .sorted(Map.Entry.comparingByValue(/*Collections.reverseOrder()*/))\u000a              .collect(Collectors.toMap(\u000a                Map.Entry::getKey, \u000a                Map.Entry::getValue, \u000a                (e1, e2) -> e1, \u000a                LinkedHashMap::new\u000a              ));\u000a}\u000a
p1028
aVimport java.util.*;\u000a\u000apublic class MapUtil\u000a{\u000a    public static <K, V extends Comparable<? super V>> Map<K, V> \u000a        sortByValue( Map<K, V> map )\u000a    {\u000a        List<Map.Entry<K, V>> list =\u000a            new LinkedList<Map.Entry<K, V>>( map.entrySet() );\u000a        Collections.sort( list, new Comparator<Map.Entry<K, V>>()\u000a        {\u000a            public int compare( Map.Entry<K, V> o1, Map.Entry<K, V> o2 )\u000a            {\u000a                return (o1.getValue()).compareTo( o2.getValue() );\u000a            }\u000a        } );\u000a\u000a        Map<K, V> result = new LinkedHashMap<K, V>();\u000a        for (Map.Entry<K, V> entry : list)\u000a        {\u000a            result.put( entry.getKey(), entry.getValue() );\u000a        }\u000a        return result;\u000a    }\u000a}\u000a
p1029
aVimport java.util.*;\u000aimport org.junit.*;\u000a\u000apublic class MapUtilTest\u000a{\u000a    @Test\u000a    public void testSortByValue()\u000a    {\u000a        Random random = new Random(System.currentTimeMillis());\u000a        Map<String, Integer> testMap = new HashMap<String, Integer>(1000);\u000a        for(int i = 0 ; i < 1000 ; ++i) {\u000a            testMap.put( "SomeString" + random.nextInt(), random.nextInt());\u000a        }\u000a\u000a        testMap = MapUtil.sortByValue( testMap );\u000a        Assert.assertEquals( 1000, testMap.size() );\u000a\u000a        Integer previous = null;\u000a        for(Map.Entry<String, Integer> entry : testMap.entrySet()) {\u000a            Assert.assertNotNull( entry.getValue() );\u000a            if (previous != null) {\u000a                Assert.assertTrue( entry.getValue() >= previous );\u000a            }\u000a            previous = entry.getValue();\u000a        }\u000a    }\u000a\u000a}\u000a
p1030
atp1031
Rp1032
sg7
I109383
sg8
g3
((lp1033
Vpublic static <K, V extends Comparable<? super V>> Map<K, V> \u000a    sortByValue( Map<K, V> map )\u000a{\u000a    List<Map.Entry<K, V>> list =\u000a        new LinkedList<>( map.entrySet() );\u000a    Collections.sort( list, new Comparator<Map.Entry<K, V>>()\u000a    {\u000a        @Override\u000a        public int compare( Map.Entry<K, V> o1, Map.Entry<K, V> o2 )\u000a        {\u000a            return ( o1.getValue() ).compareTo( o2.getValue() );\u000a        }\u000a    } );\u000a\u000a    Map<K, V> result = new LinkedHashMap<>();\u000a    for (Map.Entry<K, V> entry : list)\u000a    {\u000a        result.put( entry.getKey(), entry.getValue() );\u000a    }\u000a    return result;\u000a}\u000a
p1034
aVpublic static <K, V extends Comparable<? super V>> Map<K, V> sortByValue(Map<K, V> map) {\u000a    return map.entrySet()\u000a              .stream()\u000a              .sorted(Map.Entry.comparingByValue(/*Collections.reverseOrder()*/))\u000a              .collect(Collectors.toMap(\u000a                Map.Entry::getKey, \u000a                Map.Entry::getValue, \u000a                (e1, e2) -> e1, \u000a                LinkedHashMap::new\u000a              ));\u000a}\u000a
p1035
aVimport java.util.*;\u000a\u000apublic class MapUtil\u000a{\u000a    public static <K, V extends Comparable<? super V>> Map<K, V> \u000a        sortByValue( Map<K, V> map )\u000a    {\u000a        List<Map.Entry<K, V>> list =\u000a            new LinkedList<Map.Entry<K, V>>( map.entrySet() );\u000a        Collections.sort( list, new Comparator<Map.Entry<K, V>>()\u000a        {\u000a            public int compare( Map.Entry<K, V> o1, Map.Entry<K, V> o2 )\u000a            {\u000a                return (o1.getValue()).compareTo( o2.getValue() );\u000a            }\u000a        } );\u000a\u000a        Map<K, V> result = new LinkedHashMap<K, V>();\u000a        for (Map.Entry<K, V> entry : list)\u000a        {\u000a            result.put( entry.getKey(), entry.getValue() );\u000a        }\u000a        return result;\u000a    }\u000a}\u000a
p1036
aVimport java.util.*;\u000aimport org.junit.*;\u000a\u000apublic class MapUtilTest\u000a{\u000a    @Test\u000a    public void testSortByValue()\u000a    {\u000a        Random random = new Random(System.currentTimeMillis());\u000a        Map<String, Integer> testMap = new HashMap<String, Integer>(1000);\u000a        for(int i = 0 ; i < 1000 ; ++i) {\u000a            testMap.put( "SomeString" + random.nextInt(), random.nextInt());\u000a        }\u000a\u000a        testMap = MapUtil.sortByValue( testMap );\u000a        Assert.assertEquals( 1000, testMap.size() );\u000a\u000a        Integer previous = null;\u000a        for(Map.Entry<String, Integer> entry : testMap.entrySet()) {\u000a            Assert.assertNotNull( entry.getValue() );\u000a            if (previous != null) {\u000a                Assert.assertTrue( entry.getValue() >= previous );\u000a            }\u000a            previous = entry.getValue();\u000a        }\u000a    }\u000a\u000a}\u000a
p1037
atp1038
Rp1039
sg13
VSort a Map<Key, Value> by values (Java)
p1040
sg15
S'import java.util.*;'
p1041
sg16
S'return map.entrySet().stream().sorted(Map.Entry.comparingByValue()).collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue, (e1, e2) -> e1, LinkedHashMap::new));'
p1042
sg18
g3
((lp1043
g1001
atp1044
Rp1045
sa(dp1046
g2
g3
((lp1047
Vunsorted map: {D=67.3, A=99.5, B=67.4, C=67.4}\u000aresults: {D=67.3, B=67.4, C=67.4, A=99.5}\u000a
p1048
aVpublic class Testing {\u000a    public static void main(String[] args) {\u000a        HashMap<String, Double> map = new HashMap<String, Double>();\u000a        ValueComparator bvc = new ValueComparator(map);\u000a        TreeMap<String, Double> sorted_map = new TreeMap<String, Double>(bvc);\u000a\u000a        map.put("A", 99.5);\u000a        map.put("B", 67.4);\u000a        map.put("C", 67.4);\u000a        map.put("D", 67.3);\u000a\u000a        System.out.println("unsorted map: " + map);\u000a        sorted_map.putAll(map);\u000a        System.out.println("results: " + sorted_map);\u000a    }\u000a}\u000a\u000aclass ValueComparator implements Comparator<String> {\u000a    Map<String, Double> base;\u000a\u000a    public ValueComparator(Map<String, Double> base) {\u000a        this.base = base;\u000a    }\u000a\u000a    // Note: this comparator imposes orderings that are inconsistent with\u000a    // equals.\u000a    public int compare(String a, String b) {\u000a        if (base.get(a) >= base.get(b)) {\u000a            return -1;\u000a        } else {\u000a            return 1;\u000a        } // returning 0 would merge keys\u000a    }\u000a}\u000a
p1049
atp1050
Rp1051
sg7
I109383
sg8
g3
((lp1052
Vunsorted map: {D=67.3, A=99.5, B=67.4, C=67.4}\u000aresults: {D=67.3, B=67.4, C=67.4, A=99.5}\u000a
p1053
aVpublic class Testing {\u000a    public static void main(String[] args) {\u000a        HashMap<String, Double> map = new HashMap<String, Double>();\u000a        ValueComparator bvc = new ValueComparator(map);\u000a        TreeMap<String, Double> sorted_map = new TreeMap<String, Double>(bvc);\u000a\u000a        map.put("A", 99.5);\u000a        map.put("B", 67.4);\u000a        map.put("C", 67.4);\u000a        map.put("D", 67.3);\u000a\u000a        System.out.println("unsorted map: " + map);\u000a        sorted_map.putAll(map);\u000a        System.out.println("results: " + sorted_map);\u000a    }\u000a}\u000a\u000aclass ValueComparator implements Comparator<String> {\u000a    Map<String, Double> base;\u000a\u000a    public ValueComparator(Map<String, Double> base) {\u000a        this.base = base;\u000a    }\u000a\u000a    // Note: this comparator imposes orderings that are inconsistent with\u000a    // equals.\u000a    public int compare(String a, String b) {\u000a        if (base.get(a) >= base.get(b)) {\u000a            return -1;\u000a        } else {\u000a            return 1;\u000a        } // returning 0 would merge keys\u000a    }\u000a}\u000a
p1054
atp1055
Rp1056
sg13
VSort a Map<Key, Value> by values (Java)
p1057
sg15
S'class ValueComparator implements Comparator<String> {\n\n    Map<String, Double> base;\n\n    public ValueComparator(Map<String, Double> base) {\n        this.base = base;\n    }\n\n    public int compare(String a, String b) {\n        if (base.get(a) >= base.get(b)) {\n            return -1;\n        } else {\n            return 1;\n        }\n    }\n}\nHashMap<String, Double> map = new HashMap<String, Double>();\nValueComparator bvc = new ValueComparator(map);\nTreeMap<String, Double> sorted_map = new TreeMap<String, Double>(bvc);\nmap.put("A", 99.5);\nmap.put("B", 67.4);\nmap.put("C", 67.4);\nmap.put("D", 67.3);'
p1058
sg16
S'sorted_map.putAll(map);'
p1059
sg18
g3
((lp1060
g1001
atp1061
Rp1062
sa(dp1063
g2
g3
((lp1064
V new ValueComparableMap(Ordering.natural());\u000a //or\u000a new ValueComparableMap(Ordering.from(comparator));\u000a
p1065
aVimport static org.junit.Assert.assertEquals;\u000a\u000aimport java.util.HashMap;\u000aimport java.util.Map;\u000aimport java.util.TreeMap;\u000a\u000aimport com.google.common.base.Functions;\u000aimport com.google.common.collect.Ordering;\u000a\u000aclass ValueComparableMap<K extends Comparable<K>,V> extends TreeMap<K,V> {\u000a    //A map for doing lookups on the keys for comparison so we don't get infinite loops\u000a    private final Map<K, V> valueMap;\u000a\u000a    ValueComparableMap(final Ordering<? super V> partialValueOrdering) {\u000a        this(partialValueOrdering, new HashMap<K,V>());\u000a    }\u000a\u000a    private ValueComparableMap(Ordering<? super V> partialValueOrdering,\u000a            HashMap<K, V> valueMap) {\u000a        super(partialValueOrdering //Apply the value ordering\u000a                .onResultOf(Functions.forMap(valueMap)) //On the result of getting the value for the key from the map\u000a                .compound(Ordering.natural())); //as well as ensuring that the keys don't get clobbered\u000a        this.valueMap = valueMap;\u000a    }\u000a\u000a    public V put(K k, V v) {\u000a        if (valueMap.containsKey(k)){\u000a            //remove the key in the sorted set before adding the key again\u000a            remove(k);\u000a        }\u000a        valueMap.put(k,v); //To get "real" unsorted values for the comparator\u000a        return super.put(k, v); //Put it in value order\u000a    }\u000a\u000a    public static void main(String[] args){\u000a        TreeMap<String, Integer> map = new ValueComparableMap<String, Integer>(Ordering.natural());\u000a        map.put("a", 5);\u000a        map.put("b", 1);\u000a        map.put("c", 3);\u000a        assertEquals("b",map.firstKey());\u000a        assertEquals("a",map.lastKey());\u000a        map.put("d",0);\u000a        assertEquals("d",map.firstKey());\u000a        //ensure it's still a map (by overwriting a key, but with a new value) \u000a        map.put("d", 2);\u000a        assertEquals("b", map.firstKey());\u000a        //Ensure multiple values do not clobber keys\u000a        map.put("e", 2);\u000a        assertEquals(5, map.size());\u000a        assertEquals(2, (int) map.get("e"));\u000a        assertEquals(2, (int) map.get("d"));\u000a    }\u000a }\u000a
p1066
aVvalueComparator = Ordering.natural().onResultOf(Functions.forMap(map)).compound(Ordering.natural())\u000a
p1067
aVvalueComparator = Ordering.from(comparator).onResultOf(Functions.forMap(map)) \u000a
p1068
aVvalueComparator = Ordering.natural().onResultOf(Functions.forMap(map))\u000a
p1069
aVmap = ImmutableSortedMap.copyOf(myOriginalMap, valueComparator);\u000a
p1070
atp1071
Rp1072
sg7
I109383
sg8
g3
((lp1073
V new ValueComparableMap(Ordering.natural());\u000a //or\u000a new ValueComparableMap(Ordering.from(comparator));\u000a
p1074
aVimport static org.junit.Assert.assertEquals;\u000a\u000aimport java.util.HashMap;\u000aimport java.util.Map;\u000aimport java.util.TreeMap;\u000a\u000aimport com.google.common.base.Functions;\u000aimport com.google.common.collect.Ordering;\u000a\u000aclass ValueComparableMap<K extends Comparable<K>,V> extends TreeMap<K,V> {\u000a    //A map for doing lookups on the keys for comparison so we don't get infinite loops\u000a    private final Map<K, V> valueMap;\u000a\u000a    ValueComparableMap(final Ordering<? super V> partialValueOrdering) {\u000a        this(partialValueOrdering, new HashMap<K,V>());\u000a    }\u000a\u000a    private ValueComparableMap(Ordering<? super V> partialValueOrdering,\u000a            HashMap<K, V> valueMap) {\u000a        super(partialValueOrdering //Apply the value ordering\u000a                .onResultOf(Functions.forMap(valueMap)) //On the result of getting the value for the key from the map\u000a                .compound(Ordering.natural())); //as well as ensuring that the keys don't get clobbered\u000a        this.valueMap = valueMap;\u000a    }\u000a\u000a    public V put(K k, V v) {\u000a        if (valueMap.containsKey(k)){\u000a            //remove the key in the sorted set before adding the key again\u000a            remove(k);\u000a        }\u000a        valueMap.put(k,v); //To get "real" unsorted values for the comparator\u000a        return super.put(k, v); //Put it in value order\u000a    }\u000a\u000a    public static void main(String[] args){\u000a        TreeMap<String, Integer> map = new ValueComparableMap<String, Integer>(Ordering.natural());\u000a        map.put("a", 5);\u000a        map.put("b", 1);\u000a        map.put("c", 3);\u000a        assertEquals("b",map.firstKey());\u000a        assertEquals("a",map.lastKey());\u000a        map.put("d",0);\u000a        assertEquals("d",map.firstKey());\u000a        //ensure it's still a map (by overwriting a key, but with a new value) \u000a        map.put("d", 2);\u000a        assertEquals("b", map.firstKey());\u000a        //Ensure multiple values do not clobber keys\u000a        map.put("e", 2);\u000a        assertEquals(5, map.size());\u000a        assertEquals(2, (int) map.get("e"));\u000a        assertEquals(2, (int) map.get("d"));\u000a    }\u000a }\u000a
p1075
aVvalueComparator = Ordering.natural().onResultOf(Functions.forMap(map)).compound(Ordering.natural())\u000a
p1076
aVvalueComparator = Ordering.from(comparator).onResultOf(Functions.forMap(map)) \u000a
p1077
aVvalueComparator = Ordering.natural().onResultOf(Functions.forMap(map))\u000a
p1078
aVmap = ImmutableSortedMap.copyOf(myOriginalMap, valueComparator);\u000a
p1079
atp1080
Rp1081
sg13
VSort a Map<Key, Value> by values (Java)
p1082
sg15
S'valueComparator = Ordering.natural().onResultOf(Functions.forMap(map));'
p1083
sg16
S'map = ImmutableSortedMap.copyOf(myOriginalMap, valueComparator);'
p1084
sg18
g3
((lp1085
g1001
atp1086
Rp1087
sa(dp1088
g2
g3
((lp1089
V new ValueComparableMap(Ordering.natural());\u000a //or\u000a new ValueComparableMap(Ordering.from(comparator));\u000a
p1090
aVimport static org.junit.Assert.assertEquals;\u000a\u000aimport java.util.HashMap;\u000aimport java.util.Map;\u000aimport java.util.TreeMap;\u000a\u000aimport com.google.common.base.Functions;\u000aimport com.google.common.collect.Ordering;\u000a\u000aclass ValueComparableMap<K extends Comparable<K>,V> extends TreeMap<K,V> {\u000a    //A map for doing lookups on the keys for comparison so we don't get infinite loops\u000a    private final Map<K, V> valueMap;\u000a\u000a    ValueComparableMap(final Ordering<? super V> partialValueOrdering) {\u000a        this(partialValueOrdering, new HashMap<K,V>());\u000a    }\u000a\u000a    private ValueComparableMap(Ordering<? super V> partialValueOrdering,\u000a            HashMap<K, V> valueMap) {\u000a        super(partialValueOrdering //Apply the value ordering\u000a                .onResultOf(Functions.forMap(valueMap)) //On the result of getting the value for the key from the map\u000a                .compound(Ordering.natural())); //as well as ensuring that the keys don't get clobbered\u000a        this.valueMap = valueMap;\u000a    }\u000a\u000a    public V put(K k, V v) {\u000a        if (valueMap.containsKey(k)){\u000a            //remove the key in the sorted set before adding the key again\u000a            remove(k);\u000a        }\u000a        valueMap.put(k,v); //To get "real" unsorted values for the comparator\u000a        return super.put(k, v); //Put it in value order\u000a    }\u000a\u000a    public static void main(String[] args){\u000a        TreeMap<String, Integer> map = new ValueComparableMap<String, Integer>(Ordering.natural());\u000a        map.put("a", 5);\u000a        map.put("b", 1);\u000a        map.put("c", 3);\u000a        assertEquals("b",map.firstKey());\u000a        assertEquals("a",map.lastKey());\u000a        map.put("d",0);\u000a        assertEquals("d",map.firstKey());\u000a        //ensure it's still a map (by overwriting a key, but with a new value) \u000a        map.put("d", 2);\u000a        assertEquals("b", map.firstKey());\u000a        //Ensure multiple values do not clobber keys\u000a        map.put("e", 2);\u000a        assertEquals(5, map.size());\u000a        assertEquals(2, (int) map.get("e"));\u000a        assertEquals(2, (int) map.get("d"));\u000a    }\u000a }\u000a
p1091
aVvalueComparator = Ordering.natural().onResultOf(Functions.forMap(map)).compound(Ordering.natural())\u000a
p1092
aVvalueComparator = Ordering.from(comparator).onResultOf(Functions.forMap(map)) \u000a
p1093
aVvalueComparator = Ordering.natural().onResultOf(Functions.forMap(map))\u000a
p1094
aVmap = ImmutableSortedMap.copyOf(myOriginalMap, valueComparator);\u000a
p1095
atp1096
Rp1097
sg7
I109383
sg8
g3
((lp1098
V new ValueComparableMap(Ordering.natural());\u000a //or\u000a new ValueComparableMap(Ordering.from(comparator));\u000a
p1099
aVimport static org.junit.Assert.assertEquals;\u000a\u000aimport java.util.HashMap;\u000aimport java.util.Map;\u000aimport java.util.TreeMap;\u000a\u000aimport com.google.common.base.Functions;\u000aimport com.google.common.collect.Ordering;\u000a\u000aclass ValueComparableMap<K extends Comparable<K>,V> extends TreeMap<K,V> {\u000a    //A map for doing lookups on the keys for comparison so we don't get infinite loops\u000a    private final Map<K, V> valueMap;\u000a\u000a    ValueComparableMap(final Ordering<? super V> partialValueOrdering) {\u000a        this(partialValueOrdering, new HashMap<K,V>());\u000a    }\u000a\u000a    private ValueComparableMap(Ordering<? super V> partialValueOrdering,\u000a            HashMap<K, V> valueMap) {\u000a        super(partialValueOrdering //Apply the value ordering\u000a                .onResultOf(Functions.forMap(valueMap)) //On the result of getting the value for the key from the map\u000a                .compound(Ordering.natural())); //as well as ensuring that the keys don't get clobbered\u000a        this.valueMap = valueMap;\u000a    }\u000a\u000a    public V put(K k, V v) {\u000a        if (valueMap.containsKey(k)){\u000a            //remove the key in the sorted set before adding the key again\u000a            remove(k);\u000a        }\u000a        valueMap.put(k,v); //To get "real" unsorted values for the comparator\u000a        return super.put(k, v); //Put it in value order\u000a    }\u000a\u000a    public static void main(String[] args){\u000a        TreeMap<String, Integer> map = new ValueComparableMap<String, Integer>(Ordering.natural());\u000a        map.put("a", 5);\u000a        map.put("b", 1);\u000a        map.put("c", 3);\u000a        assertEquals("b",map.firstKey());\u000a        assertEquals("a",map.lastKey());\u000a        map.put("d",0);\u000a        assertEquals("d",map.firstKey());\u000a        //ensure it's still a map (by overwriting a key, but with a new value) \u000a        map.put("d", 2);\u000a        assertEquals("b", map.firstKey());\u000a        //Ensure multiple values do not clobber keys\u000a        map.put("e", 2);\u000a        assertEquals(5, map.size());\u000a        assertEquals(2, (int) map.get("e"));\u000a        assertEquals(2, (int) map.get("d"));\u000a    }\u000a }\u000a
p1100
aVvalueComparator = Ordering.natural().onResultOf(Functions.forMap(map)).compound(Ordering.natural())\u000a
p1101
aVvalueComparator = Ordering.from(comparator).onResultOf(Functions.forMap(map)) \u000a
p1102
aVvalueComparator = Ordering.natural().onResultOf(Functions.forMap(map))\u000a
p1103
aVmap = ImmutableSortedMap.copyOf(myOriginalMap, valueComparator);\u000a
p1104
atp1105
Rp1106
sg13
VSort a Map<Key, Value> by values (Java)
p1107
sg15
S'valueComparator = Ordering.from(comparator).onResultOf(Functions.forMap(map));'
p1108
sg16
S'map = ImmutableSortedMap.copyOf(myOriginalMap, valueComparator);'
p1109
sg18
g3
((lp1110
g1001
atp1111
Rp1112
sa(dp1113
g2
g3
((lp1114
V new ValueComparableMap(Ordering.natural());\u000a //or\u000a new ValueComparableMap(Ordering.from(comparator));\u000a
p1115
aVimport static org.junit.Assert.assertEquals;\u000a\u000aimport java.util.HashMap;\u000aimport java.util.Map;\u000aimport java.util.TreeMap;\u000a\u000aimport com.google.common.base.Functions;\u000aimport com.google.common.collect.Ordering;\u000a\u000aclass ValueComparableMap<K extends Comparable<K>,V> extends TreeMap<K,V> {\u000a    //A map for doing lookups on the keys for comparison so we don't get infinite loops\u000a    private final Map<K, V> valueMap;\u000a\u000a    ValueComparableMap(final Ordering<? super V> partialValueOrdering) {\u000a        this(partialValueOrdering, new HashMap<K,V>());\u000a    }\u000a\u000a    private ValueComparableMap(Ordering<? super V> partialValueOrdering,\u000a            HashMap<K, V> valueMap) {\u000a        super(partialValueOrdering //Apply the value ordering\u000a                .onResultOf(Functions.forMap(valueMap)) //On the result of getting the value for the key from the map\u000a                .compound(Ordering.natural())); //as well as ensuring that the keys don't get clobbered\u000a        this.valueMap = valueMap;\u000a    }\u000a\u000a    public V put(K k, V v) {\u000a        if (valueMap.containsKey(k)){\u000a            //remove the key in the sorted set before adding the key again\u000a            remove(k);\u000a        }\u000a        valueMap.put(k,v); //To get "real" unsorted values for the comparator\u000a        return super.put(k, v); //Put it in value order\u000a    }\u000a\u000a    public static void main(String[] args){\u000a        TreeMap<String, Integer> map = new ValueComparableMap<String, Integer>(Ordering.natural());\u000a        map.put("a", 5);\u000a        map.put("b", 1);\u000a        map.put("c", 3);\u000a        assertEquals("b",map.firstKey());\u000a        assertEquals("a",map.lastKey());\u000a        map.put("d",0);\u000a        assertEquals("d",map.firstKey());\u000a        //ensure it's still a map (by overwriting a key, but with a new value) \u000a        map.put("d", 2);\u000a        assertEquals("b", map.firstKey());\u000a        //Ensure multiple values do not clobber keys\u000a        map.put("e", 2);\u000a        assertEquals(5, map.size());\u000a        assertEquals(2, (int) map.get("e"));\u000a        assertEquals(2, (int) map.get("d"));\u000a    }\u000a }\u000a
p1116
aVvalueComparator = Ordering.natural().onResultOf(Functions.forMap(map)).compound(Ordering.natural())\u000a
p1117
aVvalueComparator = Ordering.from(comparator).onResultOf(Functions.forMap(map)) \u000a
p1118
aVvalueComparator = Ordering.natural().onResultOf(Functions.forMap(map))\u000a
p1119
aVmap = ImmutableSortedMap.copyOf(myOriginalMap, valueComparator);\u000a
p1120
atp1121
Rp1122
sg7
I109383
sg8
g3
((lp1123
V new ValueComparableMap(Ordering.natural());\u000a //or\u000a new ValueComparableMap(Ordering.from(comparator));\u000a
p1124
aVimport static org.junit.Assert.assertEquals;\u000a\u000aimport java.util.HashMap;\u000aimport java.util.Map;\u000aimport java.util.TreeMap;\u000a\u000aimport com.google.common.base.Functions;\u000aimport com.google.common.collect.Ordering;\u000a\u000aclass ValueComparableMap<K extends Comparable<K>,V> extends TreeMap<K,V> {\u000a    //A map for doing lookups on the keys for comparison so we don't get infinite loops\u000a    private final Map<K, V> valueMap;\u000a\u000a    ValueComparableMap(final Ordering<? super V> partialValueOrdering) {\u000a        this(partialValueOrdering, new HashMap<K,V>());\u000a    }\u000a\u000a    private ValueComparableMap(Ordering<? super V> partialValueOrdering,\u000a            HashMap<K, V> valueMap) {\u000a        super(partialValueOrdering //Apply the value ordering\u000a                .onResultOf(Functions.forMap(valueMap)) //On the result of getting the value for the key from the map\u000a                .compound(Ordering.natural())); //as well as ensuring that the keys don't get clobbered\u000a        this.valueMap = valueMap;\u000a    }\u000a\u000a    public V put(K k, V v) {\u000a        if (valueMap.containsKey(k)){\u000a            //remove the key in the sorted set before adding the key again\u000a            remove(k);\u000a        }\u000a        valueMap.put(k,v); //To get "real" unsorted values for the comparator\u000a        return super.put(k, v); //Put it in value order\u000a    }\u000a\u000a    public static void main(String[] args){\u000a        TreeMap<String, Integer> map = new ValueComparableMap<String, Integer>(Ordering.natural());\u000a        map.put("a", 5);\u000a        map.put("b", 1);\u000a        map.put("c", 3);\u000a        assertEquals("b",map.firstKey());\u000a        assertEquals("a",map.lastKey());\u000a        map.put("d",0);\u000a        assertEquals("d",map.firstKey());\u000a        //ensure it's still a map (by overwriting a key, but with a new value) \u000a        map.put("d", 2);\u000a        assertEquals("b", map.firstKey());\u000a        //Ensure multiple values do not clobber keys\u000a        map.put("e", 2);\u000a        assertEquals(5, map.size());\u000a        assertEquals(2, (int) map.get("e"));\u000a        assertEquals(2, (int) map.get("d"));\u000a    }\u000a }\u000a
p1125
aVvalueComparator = Ordering.natural().onResultOf(Functions.forMap(map)).compound(Ordering.natural())\u000a
p1126
aVvalueComparator = Ordering.from(comparator).onResultOf(Functions.forMap(map)) \u000a
p1127
aVvalueComparator = Ordering.natural().onResultOf(Functions.forMap(map))\u000a
p1128
aVmap = ImmutableSortedMap.copyOf(myOriginalMap, valueComparator);\u000a
p1129
atp1130
Rp1131
sg13
VSort a Map<Key, Value> by values (Java)
p1132
sg15
S'valueComparator = Ordering.natural().onResultOf(Functions.forMap(map)).compound(Ordering.natural());'
p1133
sg16
S'map = ImmutableSortedMap.copyOf(myOriginalMap, valueComparator);'
p1134
sg18
g3
((lp1135
g1001
atp1136
Rp1137
sa(dp1138
g2
g3
((lp1139
tp1140
Rp1141
sg7
I1448858
sg8
g3
((lp1142
tp1143
Rp1144
sg13
g14
sg15
Nsg16
S'System.out.println((char) 27 + "[34;43mBlue text with yellow background");'
p1145
sg18
g3
((lp1146
VHow to color System.out.println output?
p1147
atp1148
Rp1149
sa(dp1150
g2
g3
((lp1151
tp1152
Rp1153
sg7
I1448858
sg8
g3
((lp1154
VSystem.out.println((char)27 + "[31mThis text would show up red" + (char)27 + "[0m");\u000a
p1155
atp1156
Rp1157
sg13
g14
sg15
Nsg16
S'System.out.println((char) 27 + "[31mThis text would show up red" + (char) 27 + "[0m");'
p1158
sg18
g3
((lp1159
g1147
atp1160
Rp1161
sa(dp1162
g2
g3
((lp1163
tp1164
Rp1165
sg7
I4377842
sg8
g3
((lp1166
Vfloat z = (float) x / (float) y;\u000a
p1167
aVfloat z = (float) x / y;\u000a
p1168
aVfloat z = x / (float) y;\u000a
p1169
atp1170
Rp1171
sg13
g14
sg15
Nsg16
S'float z = (float) x / y;'
p1172
sg18
g3
((lp1173
VHow can I convert integer into float in Java?
p1174
atp1175
Rp1176
sa(dp1177
g2
g3
((lp1178
tp1179
Rp1180
sg7
I4377842
sg8
g3
((lp1181
Vfloat z = (float) x / (float) y;\u000a
p1182
aVfloat z = (float) x / y;\u000a
p1183
aVfloat z = x / (float) y;\u000a
p1184
atp1185
Rp1186
sg13
g14
sg15
Nsg16
S'float z = x / (float) y;'
p1187
sg18
g3
((lp1188
g1174
atp1189
Rp1190
sa(dp1191
g2
g3
((lp1192
tp1193
Rp1194
sg7
I4377842
sg8
g3
((lp1195
Vfloat z = (float) x / (float) y;\u000a
p1196
aVfloat z = (float) x / y;\u000a
p1197
aVfloat z = x / (float) y;\u000a
p1198
atp1199
Rp1200
sg13
g14
sg15
Nsg16
S'float z = (float) x / (float) y;'
p1201
sg18
g3
((lp1202
g1174
atp1203
Rp1204
sa(dp1205
g2
g3
((lp1206
tp1207
Rp1208
sg7
I4377842
sg8
g3
((lp1209
Vf= 111111.12\u000ad= 111111.1111\u000a
p1210
aVint x = 1111111111;\u000aint y = 10000;\u000afloat f = (float) x / y;\u000adouble d = (double) x / y;\u000aSystem.out.println("f= "+f);\u000aSystem.out.println("d= "+d);\u000a
p1211
atp1212
Rp1213
sg13
g14
sg15
Nsg16
S'float f = (float) x / y;'
p1214
sg18
g3
((lp1215
g1174
atp1216
Rp1217
sa(dp1218
g2
g3
((lp1219
tp1220
Rp1221
sg7
I4377842
sg8
g3
((lp1222
Vf= 111111.12\u000ad= 111111.1111\u000a
p1223
aVint x = 1111111111;\u000aint y = 10000;\u000afloat f = (float) x / y;\u000adouble d = (double) x / y;\u000aSystem.out.println("f= "+f);\u000aSystem.out.println("d= "+d);\u000a
p1224
atp1225
Rp1226
sg13
g14
sg15
Nsg16
S'double d = (double) x / y;'
p1227
sg18
g3
((lp1228
g1174
atp1229
Rp1230
sa(dp1231
g2
g3
((lp1232
tp1233
Rp1234
sg7
I4377842
sg8
g3
((lp1235
Vfloat z = x * 1.0 / y;\u000a
p1236
atp1237
Rp1238
sg13
g14
sg15
Nsg16
S'float z = x * 1.0 / y;'
p1239
sg18
g3
((lp1240
g1174
atp1241
Rp1242
sa(dp1243
g2
g3
((lp1244
tp1245
Rp1246
sg7
I922528
sg8
g3
((lp1247
VSortedSet<String> keys = new TreeSet<String>(map.keySet());\u000afor (String key : keys) { \u000a   String value = map.get(key);\u000a   // do something\u000a}\u000a
p1248
aV// placed inline for the demonstration, but doesn't have to be an anonymous class\u000aComparator<Foo> comparator = new Comparator<Foo>() {\u000a  public int compare(Foo o1, Foo o2) {\u000a    ...\u000a  }\u000a}\u000aSortedSet<Foo> keys = new TreeSet<Foo>(comparator);\u000akeys.addAll(map.keySet());\u000a
p1249
atp1250
Rp1251
sg13
g14
sg15
Nsg16
S'SortedSet<String> keys = new TreeSet<String>(map.keySet());'
p1252
sg18
g3
((lp1253
Vhow to sort Map values by key in Java
p1254
atp1255
Rp1256
sa(dp1257
g2
g3
((lp1258
VSortedSet<String> keys = new TreeSet<String>(map.keySet());\u000afor (String key : keys) { \u000a   String value = map.get(key);\u000a   // do something\u000a}\u000a
p1259
aV// placed inline for the demonstration, but doesn't have to be an anonymous class\u000aComparator<Foo> comparator = new Comparator<Foo>() {\u000a  public int compare(Foo o1, Foo o2) {\u000a    ...\u000a  }\u000a}\u000aSortedSet<Foo> keys = new TreeSet<Foo>(comparator);\u000akeys.addAll(map.keySet());\u000a
p1260
atp1261
Rp1262
sg7
I922528
sg8
g3
((lp1263
VSortedSet<String> keys = new TreeSet<String>(map.keySet());\u000afor (String key : keys) { \u000a   String value = map.get(key);\u000a   // do something\u000a}\u000a
p1264
aV// placed inline for the demonstration, but doesn't have to be an anonymous class\u000aComparator<Foo> comparator = new Comparator<Foo>() {\u000a  public int compare(Foo o1, Foo o2) {\u000a    ...\u000a  }\u000a}\u000aSortedSet<Foo> keys = new TreeSet<Foo>(comparator);\u000akeys.addAll(map.keySet());\u000a
p1265
atp1266
Rp1267
sg13
g14
sg15
Nsg16
S'SortedSet<Foo> keys = new TreeSet<Foo>(comparator);\nkeys.addAll(map.keySet());'
p1268
sg18
g3
((lp1269
g1254
atp1270
Rp1271
sa(dp1272
g2
g3
((lp1273
tp1274
Rp1275
sg7
I922528
sg8
g3
((lp1276
VList sortedKeys=new ArrayList(yourMap.keySet());\u000aCollections.sort(sortedKeys);\u000a// Do what you need with sortedKeys.\u000a
p1277
atp1278
Rp1279
sg13
g14
sg15
Nsg16
S'List sortedKeys = new ArrayList(yourMap.keySet());\nCollections.sort(sortedKeys);'
p1280
sg18
g3
((lp1281
g1254
atp1282
Rp1283
sa(dp1284
g2
g3
((lp1285
VMap<String, String> map = new HashMap<String, String>();        \u000aMap<String, String> treeMap = new TreeMap<String, String>(map);\u000afor (String str : treeMap.keySet()) {\u000a    System.out.println(str);\u000a}\u000a
p1286
atp1287
Rp1288
sg7
I922528
sg8
g3
((lp1289
VMap<String, String> map = new HashMap<String, String>();        \u000aMap<String, String> treeMap = new TreeMap<String, String>(map);\u000afor (String str : treeMap.keySet()) {\u000a    System.out.println(str);\u000a}\u000a
p1290
atp1291
Rp1292
sg13
g14
sg15
S'Map<String, String> map = new HashMap<String, String>();'
p1293
sg16
S'Map<String, String> treeMap = new TreeMap<String, String>(map);'
p1294
sg18
g3
((lp1295
g1254
atp1296
Rp1297
sa(dp1298
g2
g3
((lp1299
tp1300
Rp1301
sg7
I1946668
sg8
g3
((lp1302
VCollections.sort(unsortedList,new Comparator<Person>() {\u000a    @Override\u000a    public int compare(Person a, Person b) {\u000a        return b.getName().compareTo(a.getName());\u000a    }\u000a});\u000a
p1303
aVCollections.sort(personList, (Person a, Person b) -> b.getName().compareTo(a.getName()));\u000a
p1304
aVpersonList.sort((a,b)->b.getName().compareTo(a.getName()));\u000a
p1305
aVCollections.sort(unsortedList,new Comparator<Person>() {\u000a    @Override\u000a    public int compare(Person a, Person b) {\u000a        return a.getName().compareTo(b.getName());\u000a    }\u000a});\u000a
p1306
atp1307
Rp1308
sg13
g14
sg15
Nsg16
S'Collections.sort(unsortedList, new Comparator<Person>() {\n\n    @Override\n    public int compare(Person a, Person b) {\n        return b.getName().compareTo(a.getName());\n    }\n});'
p1309
sg18
g3
((lp1310
V<p>I want to sort my objects in descending order using comparator.</p>\u000a\u000a<pre><code>class Person {\u000a private int age;\u000a}\u000a</code></pre>\u000a\u000a<p>Here I want to sort a array of Person objects. </p>\u000a\u000a<p>How can I do this?</p>\u000a
p1311
atp1312
Rp1313
sa(dp1314
g2
g3
((lp1315
tp1316
Rp1317
sg7
I1946668
sg8
g3
((lp1318
VCollections.sort(unsortedList,new Comparator<Person>() {\u000a    @Override\u000a    public int compare(Person a, Person b) {\u000a        return b.getName().compareTo(a.getName());\u000a    }\u000a});\u000a
p1319
aVCollections.sort(personList, (Person a, Person b) -> b.getName().compareTo(a.getName()));\u000a
p1320
aVpersonList.sort((a,b)->b.getName().compareTo(a.getName()));\u000a
p1321
aVCollections.sort(unsortedList,new Comparator<Person>() {\u000a    @Override\u000a    public int compare(Person a, Person b) {\u000a        return a.getName().compareTo(b.getName());\u000a    }\u000a});\u000a
p1322
atp1323
Rp1324
sg13
g14
sg15
Nsg16
S'Collections.sort(unsortedList, new Comparator<Person>() {\n\n    @Override\n    public int compare(Person a, Person b) {\n        return a.getName().compareTo(b.getName());\n    }\n});'
p1325
sg18
g3
((lp1326
V<p>I want to sort my objects in descending order using comparator.</p>\u000a\u000a<pre><code>class Person {\u000a private int age;\u000a}\u000a</code></pre>\u000a\u000a<p>Here I want to sort a array of Person objects. </p>\u000a\u000a<p>How can I do this?</p>\u000a
p1327
atp1328
Rp1329
sa(dp1330
g2
g3
((lp1331
tp1332
Rp1333
sg7
I1946668
sg8
g3
((lp1334
VCollections.sort(unsortedList,new Comparator<Person>() {\u000a    @Override\u000a    public int compare(Person a, Person b) {\u000a        return b.getName().compareTo(a.getName());\u000a    }\u000a});\u000a
p1335
aVCollections.sort(personList, (Person a, Person b) -> b.getName().compareTo(a.getName()));\u000a
p1336
aVpersonList.sort((a,b)->b.getName().compareTo(a.getName()));\u000a
p1337
aVCollections.sort(unsortedList,new Comparator<Person>() {\u000a    @Override\u000a    public int compare(Person a, Person b) {\u000a        return a.getName().compareTo(b.getName());\u000a    }\u000a});\u000a
p1338
atp1339
Rp1340
sg13
g14
sg15
Nsg16
S'Collections.sort(personList, (Person a, Person b) -> b.getName().compareTo(a.getName()));'
p1341
sg18
g3
((lp1342
V<p>I want to sort my objects in descending order using comparator.</p>\u000a\u000a<pre><code>class Person {\u000a private int age;\u000a}\u000a</code></pre>\u000a\u000a<p>Here I want to sort a array of Person objects. </p>\u000a\u000a<p>How can I do this?</p>\u000a
p1343
atp1344
Rp1345
sa(dp1346
g2
g3
((lp1347
tp1348
Rp1349
sg7
I1946668
sg8
g3
((lp1350
VCollections.sort(unsortedList,new Comparator<Person>() {\u000a    @Override\u000a    public int compare(Person a, Person b) {\u000a        return b.getName().compareTo(a.getName());\u000a    }\u000a});\u000a
p1351
aVCollections.sort(personList, (Person a, Person b) -> b.getName().compareTo(a.getName()));\u000a
p1352
aVpersonList.sort((a,b)->b.getName().compareTo(a.getName()));\u000a
p1353
aVCollections.sort(unsortedList,new Comparator<Person>() {\u000a    @Override\u000a    public int compare(Person a, Person b) {\u000a        return a.getName().compareTo(b.getName());\u000a    }\u000a});\u000a
p1354
atp1355
Rp1356
sg13
g14
sg15
Nsg16
S'personList.sort((a, b) -> b.getName().compareTo(a.getName()));'
p1357
sg18
g3
((lp1358
V<p>I want to sort my objects in descending order using comparator.</p>\u000a\u000a<pre><code>class Person {\u000a private int age;\u000a}\u000a</code></pre>\u000a\u000a<p>Here I want to sort a array of Person objects. </p>\u000a\u000a<p>How can I do this?</p>\u000a
p1359
atp1360
Rp1361
sa(dp1362
g2
g3
((lp1363
V/*\u000a**  Use the Collections API to sort a List for you.\u000a**\u000a**  When your class has a "natural" sort order you can implement\u000a**  the Comparable interface.\u000a**\u000a**  You can use an alternate sort order when you implement\u000a**  a Comparator for your class.\u000a*/\u000aimport java.util.*;\u000a\u000apublic class Person implements Comparable<Person>\u000a{\u000a    String name;\u000a    int age;\u000a\u000a    public Person(String name, int age)\u000a    {\u000a        this.name = name;\u000a        this.age = age;\u000a    }\u000a\u000a    public String getName()\u000a    {\u000a        return name;\u000a    }\u000a\u000a    public int getAge()\u000a    {\u000a        return age;\u000a    }\u000a\u000a    public String toString()\u000a    {\u000a        return name + " : " + age;\u000a    }\u000a\u000a    /*\u000a    **  Implement the natural order for this class\u000a    */\u000a    public int compareTo(Person p)\u000a    {\u000a        return getName().compareTo(p.getName());\u000a    }\u000a\u000a    static class AgeComparator implements Comparator<Person>\u000a    {\u000a        public int compare(Person p1, Person p2)\u000a        {\u000a            int age1 = p1.getAge();\u000a            int age2 = p2.getAge();\u000a\u000a            if (age1 == age2)\u000a                return 0;\u000a            else if (age1 > age2)\u000a                return 1;\u000a            else\u000a                return -1;\u000a        }\u000a    }\u000a\u000a    public static void main(String[] args)\u000a    {\u000a        List<Person> people = new ArrayList<Person>();\u000a        people.add( new Person("Homer", 38) );\u000a        people.add( new Person("Marge", 35) );\u000a        people.add( new Person("Bart", 15) );\u000a        people.add( new Person("Lisa", 13) );\u000a\u000a        // Sort by natural order\u000a\u000a        Collections.sort(people);\u000a        System.out.println("Sort by Natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        // Sort by reverse natural order\u000a\u000a        Collections.sort(people, Collections.reverseOrder());\u000a        System.out.println("Sort by reverse natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by age\u000a\u000a        Collections.sort(people, new Person.AgeComparator());\u000a        System.out.println("Sort using Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by descending age\u000a\u000a        Collections.sort(people,\u000a            Collections.reverseOrder(new Person.AgeComparator()));\u000a        System.out.println("Sort using Reverse Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a    }\u000a}\u000a
p1364
atp1365
Rp1366
sg7
I1946668
sg8
g3
((lp1367
V/*\u000a**  Use the Collections API to sort a List for you.\u000a**\u000a**  When your class has a "natural" sort order you can implement\u000a**  the Comparable interface.\u000a**\u000a**  You can use an alternate sort order when you implement\u000a**  a Comparator for your class.\u000a*/\u000aimport java.util.*;\u000a\u000apublic class Person implements Comparable<Person>\u000a{\u000a    String name;\u000a    int age;\u000a\u000a    public Person(String name, int age)\u000a    {\u000a        this.name = name;\u000a        this.age = age;\u000a    }\u000a\u000a    public String getName()\u000a    {\u000a        return name;\u000a    }\u000a\u000a    public int getAge()\u000a    {\u000a        return age;\u000a    }\u000a\u000a    public String toString()\u000a    {\u000a        return name + " : " + age;\u000a    }\u000a\u000a    /*\u000a    **  Implement the natural order for this class\u000a    */\u000a    public int compareTo(Person p)\u000a    {\u000a        return getName().compareTo(p.getName());\u000a    }\u000a\u000a    static class AgeComparator implements Comparator<Person>\u000a    {\u000a        public int compare(Person p1, Person p2)\u000a        {\u000a            int age1 = p1.getAge();\u000a            int age2 = p2.getAge();\u000a\u000a            if (age1 == age2)\u000a                return 0;\u000a            else if (age1 > age2)\u000a                return 1;\u000a            else\u000a                return -1;\u000a        }\u000a    }\u000a\u000a    public static void main(String[] args)\u000a    {\u000a        List<Person> people = new ArrayList<Person>();\u000a        people.add( new Person("Homer", 38) );\u000a        people.add( new Person("Marge", 35) );\u000a        people.add( new Person("Bart", 15) );\u000a        people.add( new Person("Lisa", 13) );\u000a\u000a        // Sort by natural order\u000a\u000a        Collections.sort(people);\u000a        System.out.println("Sort by Natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        // Sort by reverse natural order\u000a\u000a        Collections.sort(people, Collections.reverseOrder());\u000a        System.out.println("Sort by reverse natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by age\u000a\u000a        Collections.sort(people, new Person.AgeComparator());\u000a        System.out.println("Sort using Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by descending age\u000a\u000a        Collections.sort(people,\u000a            Collections.reverseOrder(new Person.AgeComparator()));\u000a        System.out.println("Sort using Reverse Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a    }\u000a}\u000a
p1368
atp1369
Rp1370
sg13
g14
sg15
S'List<Person> people = new ArrayList<Person>();\npeople.add(new Person("Homer", 38));\npeople.add(new Person("Marge", 35));\npeople.add(new Person("Bart", 15));\npeople.add(new Person("Lisa", 13));'
p1371
sg16
S'Collections.sort(people);'
p1372
sg18
g3
((lp1373
V<p>For whats its worth here is my standard answer. The only thing new here is that is uses the Collections.reverseOrder(). Plus it puts all suggestions into one example:</p>\u000a\u000a<pre><code>/*\u000a**  Use the Collections API to sort a List for you.\u000a**\u000a**  When your class has a "natural" sort order you can implement\u000a**  the Comparable interface.\u000a**\u000a**  You can use an alternate sort order when you implement\u000a**  a Comparator for your class.\u000a*/\u000aimport java.util.*;\u000a\u000apublic class Person implements Comparable<Person>\u000a{\u000a    String name;\u000a    int age;\u000a\u000a    public Person(String name, int age)\u000a    {\u000a        this.name = name;\u000a        this.age = age;\u000a    }\u000a\u000a    public String getName()\u000a    {\u000a        return name;\u000a    }\u000a\u000a    public int getAge()\u000a    {\u000a        return age;\u000a    }\u000a\u000a    public String toString()\u000a    {\u000a        return name + " : " + age;\u000a    }\u000a\u000a    /*\u000a    **  Implement the natural order for this class\u000a    */\u000a    public int compareTo(Person p)\u000a    {\u000a        return getName().compareTo(p.getName());\u000a    }\u000a\u000a    static class AgeComparator implements Comparator<Person>\u000a    {\u000a        public int compare(Person p1, Person p2)\u000a        {\u000a            int age1 = p1.getAge();\u000a            int age2 = p2.getAge();\u000a\u000a            if (age1 == age2)\u000a                return 0;\u000a            else if (age1 > age2)\u000a                return 1;\u000a            else\u000a                return -1;\u000a        }\u000a    }\u000a\u000a    public static void main(String[] args)\u000a    {\u000a        List<Person> people = new ArrayList<Person>();\u000a        people.add( new Person("Homer", 38) );\u000a        people.add( new Person("Marge", 35) );\u000a        people.add( new Person("Bart", 15) );\u000a        people.add( new Person("Lisa", 13) );\u000a\u000a        // Sort by natural order\u000a\u000a        Collections.sort(people);\u000a        System.out.println("Sort by Natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        // Sort by reverse natural order\u000a\u000a        Collections.sort(people, Collections.reverseOrder());\u000a        System.out.println("Sort by reverse natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by age\u000a\u000a        Collections.sort(people, new Person.AgeComparator());\u000a        System.out.println("Sort using Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by descending age\u000a\u000a        Collections.sort(people,\u000a            Collections.reverseOrder(new Person.AgeComparator()));\u000a        System.out.println("Sort using Reverse Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a    }\u000a}\u000a</code></pre>\u000a
p1374
atp1375
Rp1376
sa(dp1377
g2
g3
((lp1378
V/*\u000a**  Use the Collections API to sort a List for you.\u000a**\u000a**  When your class has a "natural" sort order you can implement\u000a**  the Comparable interface.\u000a**\u000a**  You can use an alternate sort order when you implement\u000a**  a Comparator for your class.\u000a*/\u000aimport java.util.*;\u000a\u000apublic class Person implements Comparable<Person>\u000a{\u000a    String name;\u000a    int age;\u000a\u000a    public Person(String name, int age)\u000a    {\u000a        this.name = name;\u000a        this.age = age;\u000a    }\u000a\u000a    public String getName()\u000a    {\u000a        return name;\u000a    }\u000a\u000a    public int getAge()\u000a    {\u000a        return age;\u000a    }\u000a\u000a    public String toString()\u000a    {\u000a        return name + " : " + age;\u000a    }\u000a\u000a    /*\u000a    **  Implement the natural order for this class\u000a    */\u000a    public int compareTo(Person p)\u000a    {\u000a        return getName().compareTo(p.getName());\u000a    }\u000a\u000a    static class AgeComparator implements Comparator<Person>\u000a    {\u000a        public int compare(Person p1, Person p2)\u000a        {\u000a            int age1 = p1.getAge();\u000a            int age2 = p2.getAge();\u000a\u000a            if (age1 == age2)\u000a                return 0;\u000a            else if (age1 > age2)\u000a                return 1;\u000a            else\u000a                return -1;\u000a        }\u000a    }\u000a\u000a    public static void main(String[] args)\u000a    {\u000a        List<Person> people = new ArrayList<Person>();\u000a        people.add( new Person("Homer", 38) );\u000a        people.add( new Person("Marge", 35) );\u000a        people.add( new Person("Bart", 15) );\u000a        people.add( new Person("Lisa", 13) );\u000a\u000a        // Sort by natural order\u000a\u000a        Collections.sort(people);\u000a        System.out.println("Sort by Natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        // Sort by reverse natural order\u000a\u000a        Collections.sort(people, Collections.reverseOrder());\u000a        System.out.println("Sort by reverse natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by age\u000a\u000a        Collections.sort(people, new Person.AgeComparator());\u000a        System.out.println("Sort using Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by descending age\u000a\u000a        Collections.sort(people,\u000a            Collections.reverseOrder(new Person.AgeComparator()));\u000a        System.out.println("Sort using Reverse Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a    }\u000a}\u000a
p1379
atp1380
Rp1381
sg7
I1946668
sg8
g3
((lp1382
V/*\u000a**  Use the Collections API to sort a List for you.\u000a**\u000a**  When your class has a "natural" sort order you can implement\u000a**  the Comparable interface.\u000a**\u000a**  You can use an alternate sort order when you implement\u000a**  a Comparator for your class.\u000a*/\u000aimport java.util.*;\u000a\u000apublic class Person implements Comparable<Person>\u000a{\u000a    String name;\u000a    int age;\u000a\u000a    public Person(String name, int age)\u000a    {\u000a        this.name = name;\u000a        this.age = age;\u000a    }\u000a\u000a    public String getName()\u000a    {\u000a        return name;\u000a    }\u000a\u000a    public int getAge()\u000a    {\u000a        return age;\u000a    }\u000a\u000a    public String toString()\u000a    {\u000a        return name + " : " + age;\u000a    }\u000a\u000a    /*\u000a    **  Implement the natural order for this class\u000a    */\u000a    public int compareTo(Person p)\u000a    {\u000a        return getName().compareTo(p.getName());\u000a    }\u000a\u000a    static class AgeComparator implements Comparator<Person>\u000a    {\u000a        public int compare(Person p1, Person p2)\u000a        {\u000a            int age1 = p1.getAge();\u000a            int age2 = p2.getAge();\u000a\u000a            if (age1 == age2)\u000a                return 0;\u000a            else if (age1 > age2)\u000a                return 1;\u000a            else\u000a                return -1;\u000a        }\u000a    }\u000a\u000a    public static void main(String[] args)\u000a    {\u000a        List<Person> people = new ArrayList<Person>();\u000a        people.add( new Person("Homer", 38) );\u000a        people.add( new Person("Marge", 35) );\u000a        people.add( new Person("Bart", 15) );\u000a        people.add( new Person("Lisa", 13) );\u000a\u000a        // Sort by natural order\u000a\u000a        Collections.sort(people);\u000a        System.out.println("Sort by Natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        // Sort by reverse natural order\u000a\u000a        Collections.sort(people, Collections.reverseOrder());\u000a        System.out.println("Sort by reverse natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by age\u000a\u000a        Collections.sort(people, new Person.AgeComparator());\u000a        System.out.println("Sort using Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by descending age\u000a\u000a        Collections.sort(people,\u000a            Collections.reverseOrder(new Person.AgeComparator()));\u000a        System.out.println("Sort using Reverse Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a    }\u000a}\u000a
p1383
atp1384
Rp1385
sg13
g14
sg15
S'List<Person> people = new ArrayList<Person>();\npeople.add(new Person("Homer", 38));\npeople.add(new Person("Marge", 35));\npeople.add(new Person("Bart", 15));\npeople.add(new Person("Lisa", 13));'
p1386
sg16
S'Collections.sort(people, Collections.reverseOrder());'
p1387
sg18
g3
((lp1388
V<p>For whats its worth here is my standard answer. The only thing new here is that is uses the Collections.reverseOrder(). Plus it puts all suggestions into one example:</p>\u000a\u000a<pre><code>/*\u000a**  Use the Collections API to sort a List for you.\u000a**\u000a**  When your class has a "natural" sort order you can implement\u000a**  the Comparable interface.\u000a**\u000a**  You can use an alternate sort order when you implement\u000a**  a Comparator for your class.\u000a*/\u000aimport java.util.*;\u000a\u000apublic class Person implements Comparable<Person>\u000a{\u000a    String name;\u000a    int age;\u000a\u000a    public Person(String name, int age)\u000a    {\u000a        this.name = name;\u000a        this.age = age;\u000a    }\u000a\u000a    public String getName()\u000a    {\u000a        return name;\u000a    }\u000a\u000a    public int getAge()\u000a    {\u000a        return age;\u000a    }\u000a\u000a    public String toString()\u000a    {\u000a        return name + " : " + age;\u000a    }\u000a\u000a    /*\u000a    **  Implement the natural order for this class\u000a    */\u000a    public int compareTo(Person p)\u000a    {\u000a        return getName().compareTo(p.getName());\u000a    }\u000a\u000a    static class AgeComparator implements Comparator<Person>\u000a    {\u000a        public int compare(Person p1, Person p2)\u000a        {\u000a            int age1 = p1.getAge();\u000a            int age2 = p2.getAge();\u000a\u000a            if (age1 == age2)\u000a                return 0;\u000a            else if (age1 > age2)\u000a                return 1;\u000a            else\u000a                return -1;\u000a        }\u000a    }\u000a\u000a    public static void main(String[] args)\u000a    {\u000a        List<Person> people = new ArrayList<Person>();\u000a        people.add( new Person("Homer", 38) );\u000a        people.add( new Person("Marge", 35) );\u000a        people.add( new Person("Bart", 15) );\u000a        people.add( new Person("Lisa", 13) );\u000a\u000a        // Sort by natural order\u000a\u000a        Collections.sort(people);\u000a        System.out.println("Sort by Natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        // Sort by reverse natural order\u000a\u000a        Collections.sort(people, Collections.reverseOrder());\u000a        System.out.println("Sort by reverse natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by age\u000a\u000a        Collections.sort(people, new Person.AgeComparator());\u000a        System.out.println("Sort using Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by descending age\u000a\u000a        Collections.sort(people,\u000a            Collections.reverseOrder(new Person.AgeComparator()));\u000a        System.out.println("Sort using Reverse Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a    }\u000a}\u000a</code></pre>\u000a
p1389
atp1390
Rp1391
sa(dp1392
g2
g3
((lp1393
V/*\u000a**  Use the Collections API to sort a List for you.\u000a**\u000a**  When your class has a "natural" sort order you can implement\u000a**  the Comparable interface.\u000a**\u000a**  You can use an alternate sort order when you implement\u000a**  a Comparator for your class.\u000a*/\u000aimport java.util.*;\u000a\u000apublic class Person implements Comparable<Person>\u000a{\u000a    String name;\u000a    int age;\u000a\u000a    public Person(String name, int age)\u000a    {\u000a        this.name = name;\u000a        this.age = age;\u000a    }\u000a\u000a    public String getName()\u000a    {\u000a        return name;\u000a    }\u000a\u000a    public int getAge()\u000a    {\u000a        return age;\u000a    }\u000a\u000a    public String toString()\u000a    {\u000a        return name + " : " + age;\u000a    }\u000a\u000a    /*\u000a    **  Implement the natural order for this class\u000a    */\u000a    public int compareTo(Person p)\u000a    {\u000a        return getName().compareTo(p.getName());\u000a    }\u000a\u000a    static class AgeComparator implements Comparator<Person>\u000a    {\u000a        public int compare(Person p1, Person p2)\u000a        {\u000a            int age1 = p1.getAge();\u000a            int age2 = p2.getAge();\u000a\u000a            if (age1 == age2)\u000a                return 0;\u000a            else if (age1 > age2)\u000a                return 1;\u000a            else\u000a                return -1;\u000a        }\u000a    }\u000a\u000a    public static void main(String[] args)\u000a    {\u000a        List<Person> people = new ArrayList<Person>();\u000a        people.add( new Person("Homer", 38) );\u000a        people.add( new Person("Marge", 35) );\u000a        people.add( new Person("Bart", 15) );\u000a        people.add( new Person("Lisa", 13) );\u000a\u000a        // Sort by natural order\u000a\u000a        Collections.sort(people);\u000a        System.out.println("Sort by Natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        // Sort by reverse natural order\u000a\u000a        Collections.sort(people, Collections.reverseOrder());\u000a        System.out.println("Sort by reverse natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by age\u000a\u000a        Collections.sort(people, new Person.AgeComparator());\u000a        System.out.println("Sort using Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by descending age\u000a\u000a        Collections.sort(people,\u000a            Collections.reverseOrder(new Person.AgeComparator()));\u000a        System.out.println("Sort using Reverse Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a    }\u000a}\u000a
p1394
atp1395
Rp1396
sg7
I1946668
sg8
g3
((lp1397
V/*\u000a**  Use the Collections API to sort a List for you.\u000a**\u000a**  When your class has a "natural" sort order you can implement\u000a**  the Comparable interface.\u000a**\u000a**  You can use an alternate sort order when you implement\u000a**  a Comparator for your class.\u000a*/\u000aimport java.util.*;\u000a\u000apublic class Person implements Comparable<Person>\u000a{\u000a    String name;\u000a    int age;\u000a\u000a    public Person(String name, int age)\u000a    {\u000a        this.name = name;\u000a        this.age = age;\u000a    }\u000a\u000a    public String getName()\u000a    {\u000a        return name;\u000a    }\u000a\u000a    public int getAge()\u000a    {\u000a        return age;\u000a    }\u000a\u000a    public String toString()\u000a    {\u000a        return name + " : " + age;\u000a    }\u000a\u000a    /*\u000a    **  Implement the natural order for this class\u000a    */\u000a    public int compareTo(Person p)\u000a    {\u000a        return getName().compareTo(p.getName());\u000a    }\u000a\u000a    static class AgeComparator implements Comparator<Person>\u000a    {\u000a        public int compare(Person p1, Person p2)\u000a        {\u000a            int age1 = p1.getAge();\u000a            int age2 = p2.getAge();\u000a\u000a            if (age1 == age2)\u000a                return 0;\u000a            else if (age1 > age2)\u000a                return 1;\u000a            else\u000a                return -1;\u000a        }\u000a    }\u000a\u000a    public static void main(String[] args)\u000a    {\u000a        List<Person> people = new ArrayList<Person>();\u000a        people.add( new Person("Homer", 38) );\u000a        people.add( new Person("Marge", 35) );\u000a        people.add( new Person("Bart", 15) );\u000a        people.add( new Person("Lisa", 13) );\u000a\u000a        // Sort by natural order\u000a\u000a        Collections.sort(people);\u000a        System.out.println("Sort by Natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        // Sort by reverse natural order\u000a\u000a        Collections.sort(people, Collections.reverseOrder());\u000a        System.out.println("Sort by reverse natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by age\u000a\u000a        Collections.sort(people, new Person.AgeComparator());\u000a        System.out.println("Sort using Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by descending age\u000a\u000a        Collections.sort(people,\u000a            Collections.reverseOrder(new Person.AgeComparator()));\u000a        System.out.println("Sort using Reverse Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a    }\u000a}\u000a
p1398
atp1399
Rp1400
sg13
g14
sg15
Nsg16
S'Collections.sort(people, Collections.reverseOrder(new Person.AgeComparator()));'
p1401
sg18
g3
((lp1402
V<p>For whats its worth here is my standard answer. The only thing new here is that is uses the Collections.reverseOrder(). Plus it puts all suggestions into one example:</p>\u000a\u000a<pre><code>/*\u000a**  Use the Collections API to sort a List for you.\u000a**\u000a**  When your class has a "natural" sort order you can implement\u000a**  the Comparable interface.\u000a**\u000a**  You can use an alternate sort order when you implement\u000a**  a Comparator for your class.\u000a*/\u000aimport java.util.*;\u000a\u000apublic class Person implements Comparable<Person>\u000a{\u000a    String name;\u000a    int age;\u000a\u000a    public Person(String name, int age)\u000a    {\u000a        this.name = name;\u000a        this.age = age;\u000a    }\u000a\u000a    public String getName()\u000a    {\u000a        return name;\u000a    }\u000a\u000a    public int getAge()\u000a    {\u000a        return age;\u000a    }\u000a\u000a    public String toString()\u000a    {\u000a        return name + " : " + age;\u000a    }\u000a\u000a    /*\u000a    **  Implement the natural order for this class\u000a    */\u000a    public int compareTo(Person p)\u000a    {\u000a        return getName().compareTo(p.getName());\u000a    }\u000a\u000a    static class AgeComparator implements Comparator<Person>\u000a    {\u000a        public int compare(Person p1, Person p2)\u000a        {\u000a            int age1 = p1.getAge();\u000a            int age2 = p2.getAge();\u000a\u000a            if (age1 == age2)\u000a                return 0;\u000a            else if (age1 > age2)\u000a                return 1;\u000a            else\u000a                return -1;\u000a        }\u000a    }\u000a\u000a    public static void main(String[] args)\u000a    {\u000a        List<Person> people = new ArrayList<Person>();\u000a        people.add( new Person("Homer", 38) );\u000a        people.add( new Person("Marge", 35) );\u000a        people.add( new Person("Bart", 15) );\u000a        people.add( new Person("Lisa", 13) );\u000a\u000a        // Sort by natural order\u000a\u000a        Collections.sort(people);\u000a        System.out.println("Sort by Natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        // Sort by reverse natural order\u000a\u000a        Collections.sort(people, Collections.reverseOrder());\u000a        System.out.println("Sort by reverse natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by age\u000a\u000a        Collections.sort(people, new Person.AgeComparator());\u000a        System.out.println("Sort using Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by descending age\u000a\u000a        Collections.sort(people,\u000a            Collections.reverseOrder(new Person.AgeComparator()));\u000a        System.out.println("Sort using Reverse Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a    }\u000a}\u000a</code></pre>\u000a
p1403
atp1404
Rp1405
sa(dp1406
g2
g3
((lp1407
V/*\u000a**  Use the Collections API to sort a List for you.\u000a**\u000a**  When your class has a "natural" sort order you can implement\u000a**  the Comparable interface.\u000a**\u000a**  You can use an alternate sort order when you implement\u000a**  a Comparator for your class.\u000a*/\u000aimport java.util.*;\u000a\u000apublic class Person implements Comparable<Person>\u000a{\u000a    String name;\u000a    int age;\u000a\u000a    public Person(String name, int age)\u000a    {\u000a        this.name = name;\u000a        this.age = age;\u000a    }\u000a\u000a    public String getName()\u000a    {\u000a        return name;\u000a    }\u000a\u000a    public int getAge()\u000a    {\u000a        return age;\u000a    }\u000a\u000a    public String toString()\u000a    {\u000a        return name + " : " + age;\u000a    }\u000a\u000a    /*\u000a    **  Implement the natural order for this class\u000a    */\u000a    public int compareTo(Person p)\u000a    {\u000a        return getName().compareTo(p.getName());\u000a    }\u000a\u000a    static class AgeComparator implements Comparator<Person>\u000a    {\u000a        public int compare(Person p1, Person p2)\u000a        {\u000a            int age1 = p1.getAge();\u000a            int age2 = p2.getAge();\u000a\u000a            if (age1 == age2)\u000a                return 0;\u000a            else if (age1 > age2)\u000a                return 1;\u000a            else\u000a                return -1;\u000a        }\u000a    }\u000a\u000a    public static void main(String[] args)\u000a    {\u000a        List<Person> people = new ArrayList<Person>();\u000a        people.add( new Person("Homer", 38) );\u000a        people.add( new Person("Marge", 35) );\u000a        people.add( new Person("Bart", 15) );\u000a        people.add( new Person("Lisa", 13) );\u000a\u000a        // Sort by natural order\u000a\u000a        Collections.sort(people);\u000a        System.out.println("Sort by Natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        // Sort by reverse natural order\u000a\u000a        Collections.sort(people, Collections.reverseOrder());\u000a        System.out.println("Sort by reverse natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by age\u000a\u000a        Collections.sort(people, new Person.AgeComparator());\u000a        System.out.println("Sort using Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by descending age\u000a\u000a        Collections.sort(people,\u000a            Collections.reverseOrder(new Person.AgeComparator()));\u000a        System.out.println("Sort using Reverse Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a    }\u000a}\u000a
p1408
atp1409
Rp1410
sg7
I1946668
sg8
g3
((lp1411
V/*\u000a**  Use the Collections API to sort a List for you.\u000a**\u000a**  When your class has a "natural" sort order you can implement\u000a**  the Comparable interface.\u000a**\u000a**  You can use an alternate sort order when you implement\u000a**  a Comparator for your class.\u000a*/\u000aimport java.util.*;\u000a\u000apublic class Person implements Comparable<Person>\u000a{\u000a    String name;\u000a    int age;\u000a\u000a    public Person(String name, int age)\u000a    {\u000a        this.name = name;\u000a        this.age = age;\u000a    }\u000a\u000a    public String getName()\u000a    {\u000a        return name;\u000a    }\u000a\u000a    public int getAge()\u000a    {\u000a        return age;\u000a    }\u000a\u000a    public String toString()\u000a    {\u000a        return name + " : " + age;\u000a    }\u000a\u000a    /*\u000a    **  Implement the natural order for this class\u000a    */\u000a    public int compareTo(Person p)\u000a    {\u000a        return getName().compareTo(p.getName());\u000a    }\u000a\u000a    static class AgeComparator implements Comparator<Person>\u000a    {\u000a        public int compare(Person p1, Person p2)\u000a        {\u000a            int age1 = p1.getAge();\u000a            int age2 = p2.getAge();\u000a\u000a            if (age1 == age2)\u000a                return 0;\u000a            else if (age1 > age2)\u000a                return 1;\u000a            else\u000a                return -1;\u000a        }\u000a    }\u000a\u000a    public static void main(String[] args)\u000a    {\u000a        List<Person> people = new ArrayList<Person>();\u000a        people.add( new Person("Homer", 38) );\u000a        people.add( new Person("Marge", 35) );\u000a        people.add( new Person("Bart", 15) );\u000a        people.add( new Person("Lisa", 13) );\u000a\u000a        // Sort by natural order\u000a\u000a        Collections.sort(people);\u000a        System.out.println("Sort by Natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        // Sort by reverse natural order\u000a\u000a        Collections.sort(people, Collections.reverseOrder());\u000a        System.out.println("Sort by reverse natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by age\u000a\u000a        Collections.sort(people, new Person.AgeComparator());\u000a        System.out.println("Sort using Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by descending age\u000a\u000a        Collections.sort(people,\u000a            Collections.reverseOrder(new Person.AgeComparator()));\u000a        System.out.println("Sort using Reverse Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a    }\u000a}\u000a
p1412
atp1413
Rp1414
sg13
g14
sg15
S'static class AgeComparator implements Comparator<Person> {\n\n    public int compare(Person p1, Person p2) {\n        int age1 = p1.getAge();\n        int age2 = p2.getAge();\n        if (age1 == age2)\n            return 0;\n        else if (age1 > age2)\n            return 1;\n        else\n            return -1;\n    }\n}\nList<Person> people = new ArrayList<Person>();'
p1415
sg16
S'Collections.sort(people, new Person.AgeComparator());'
p1416
sg18
g3
((lp1417
V<p>For whats its worth here is my standard answer. The only thing new here is that is uses the Collections.reverseOrder(). Plus it puts all suggestions into one example:</p>\u000a\u000a<pre><code>/*\u000a**  Use the Collections API to sort a List for you.\u000a**\u000a**  When your class has a "natural" sort order you can implement\u000a**  the Comparable interface.\u000a**\u000a**  You can use an alternate sort order when you implement\u000a**  a Comparator for your class.\u000a*/\u000aimport java.util.*;\u000a\u000apublic class Person implements Comparable<Person>\u000a{\u000a    String name;\u000a    int age;\u000a\u000a    public Person(String name, int age)\u000a    {\u000a        this.name = name;\u000a        this.age = age;\u000a    }\u000a\u000a    public String getName()\u000a    {\u000a        return name;\u000a    }\u000a\u000a    public int getAge()\u000a    {\u000a        return age;\u000a    }\u000a\u000a    public String toString()\u000a    {\u000a        return name + " : " + age;\u000a    }\u000a\u000a    /*\u000a    **  Implement the natural order for this class\u000a    */\u000a    public int compareTo(Person p)\u000a    {\u000a        return getName().compareTo(p.getName());\u000a    }\u000a\u000a    static class AgeComparator implements Comparator<Person>\u000a    {\u000a        public int compare(Person p1, Person p2)\u000a        {\u000a            int age1 = p1.getAge();\u000a            int age2 = p2.getAge();\u000a\u000a            if (age1 == age2)\u000a                return 0;\u000a            else if (age1 > age2)\u000a                return 1;\u000a            else\u000a                return -1;\u000a        }\u000a    }\u000a\u000a    public static void main(String[] args)\u000a    {\u000a        List<Person> people = new ArrayList<Person>();\u000a        people.add( new Person("Homer", 38) );\u000a        people.add( new Person("Marge", 35) );\u000a        people.add( new Person("Bart", 15) );\u000a        people.add( new Person("Lisa", 13) );\u000a\u000a        // Sort by natural order\u000a\u000a        Collections.sort(people);\u000a        System.out.println("Sort by Natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        // Sort by reverse natural order\u000a\u000a        Collections.sort(people, Collections.reverseOrder());\u000a        System.out.println("Sort by reverse natural order");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by age\u000a\u000a        Collections.sort(people, new Person.AgeComparator());\u000a        System.out.println("Sort using Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a\u000a        //  Use a Comparator to sort by descending age\u000a\u000a        Collections.sort(people,\u000a            Collections.reverseOrder(new Person.AgeComparator()));\u000a        System.out.println("Sort using Reverse Age Comparator");\u000a        System.out.println("\u005ct" + people);\u000a    }\u000a}\u000a</code></pre>\u000a
p1418
atp1419
Rp1420
sa(dp1421
g2
g3
((lp1422
VList<Integer> list = new ArrayList<Integer>();\u000aFile file = new File("file.txt");\u000aBufferedReader reader = null;\u000a\u000atry {\u000a    reader = new BufferedReader(new FileReader(file));\u000a    String text = null;\u000a\u000a    while ((text = reader.readLine()) != null) {\u000a        list.add(Integer.parseInt(text));\u000a    }\u000a} catch (FileNotFoundException e) {\u000a    e.printStackTrace();\u000a} catch (IOException e) {\u000a    e.printStackTrace();\u000a} finally {\u000a    try {\u000a        if (reader != null) {\u000a            reader.close();\u000a        }\u000a    } catch (IOException e) {\u000a    }\u000a}\u000a\u000a//print out the list\u000aSystem.out.println(list);\u000a
p1423
atp1424
Rp1425
sg7
I3806062
sg8
g3
((lp1426
VList<Integer> list = new ArrayList<Integer>();\u000aFile file = new File("file.txt");\u000aBufferedReader reader = null;\u000a\u000atry {\u000a    reader = new BufferedReader(new FileReader(file));\u000a    String text = null;\u000a\u000a    while ((text = reader.readLine()) != null) {\u000a        list.add(Integer.parseInt(text));\u000a    }\u000a} catch (FileNotFoundException e) {\u000a    e.printStackTrace();\u000a} catch (IOException e) {\u000a    e.printStackTrace();\u000a} finally {\u000a    try {\u000a        if (reader != null) {\u000a            reader.close();\u000a        }\u000a    } catch (IOException e) {\u000a    }\u000a}\u000a\u000a//print out the list\u000aSystem.out.println(list);\u000a
p1427
atp1428
Rp1429
sg13
g14
sg15
S'List<Integer> list = new ArrayList<Integer>();\nFile file = new File("file.txt");\nBufferedReader reader = null;'
p1430
sg16
S'reader = new BufferedReader(new FileReader(file));\nString text = null;\nwhile ((text = reader.readLine()) != null) {\n    list.add(Integer.parseInt(text));\n}'
p1431
sg18
g3
((lp1432
VHow to open a txt file and read numbers in java
p1433
atp1434
Rp1435
sa(dp1436
g2
g3
((lp1437
VPath filePath = Paths.get("file.txt");\u000aScanner scanner = new Scanner(filePath);\u000aList<Integer> integers = new ArrayList<>();\u000awhile (scanner.hasNext()) {\u000a    if (scanner.hasNextInt()) {\u000a        integers.add(scanner.nextInt());\u000a    } else {\u000a        scanner.next();\u000a    }\u000a}\u000a
p1438
atp1439
Rp1440
sg7
I3806062
sg8
g3
((lp1441
VPath filePath = Paths.get("file.txt");\u000aScanner scanner = new Scanner(filePath);\u000aList<Integer> integers = new ArrayList<>();\u000awhile (scanner.hasNext()) {\u000a    if (scanner.hasNextInt()) {\u000a        integers.add(scanner.nextInt());\u000a    } else {\u000a        scanner.next();\u000a    }\u000a}\u000a
p1442
atp1443
Rp1444
sg13
g14
sg15
S'Path filePath = Paths.get("file.txt");\nScanner scanner = new Scanner(filePath);\nList<Integer> integers = new ArrayList<>();'
p1445
sg16
S'while (scanner.hasNext()) {\n    if (scanner.hasNextInt()) {\n        integers.add(scanner.nextInt());\n    } else {\n        scanner.next();\n    }\n}'
p1446
sg18
g3
((lp1447
g1433
atp1448
Rp1449
sa(dp1450
g2
g3
((lp1451
tp1452
Rp1453
sg7
I3806062
sg8
g3
((lp1454
V   try{\u000a\u000a    BufferedReader br = new BufferedReader(new FileReader("textfile.txt"));\u000a    String strLine;\u000a    //Read File Line By Line\u000a    while ((strLine = br.readLine()) != null)   {\u000a      // Print the content on the console\u000a      System.out.println (strLine);\u000a    }\u000a    //Close the input stream\u000a    in.close();\u000a    }catch (Exception e){//Catch exception if any\u000a      System.err.println("Error: " + e.getMessage());\u000a    }finally{\u000a     in.close();\u000a    }\u000a
p1455
aVtry{\u000a    String noInStringArr[] = strLine.split(" ");\u000a//then you can parse it to Int as above\u000a    }catch(NumberFormatException npe){\u000a    //do something\u000a    }  \u000a
p1456
aV System.out.println (strLine);\u000a
p1457
aVtry{\u000aint i = Integer.parseInt(strLine);\u000a}catch(NumberFormatException npe){\u000a//do something\u000a}  \u000a
p1458
atp1459
Rp1460
sg13
g14
sg15
Nsg16
S'BufferedReader br = new BufferedReader(new FileReader("textfile.txt"));\nString strLine;\nwhile ((strLine = br.readLine()) != null) {\n    System.out.println(strLine);\n}'
p1461
sg18
g3
((lp1462
g1433
atp1463
Rp1464
sa(dp1465
g2
g3
((lp1466
tp1467
Rp1468
sg7
I11409621
sg8
g3
((lp1469
Vfor (int i = 0; i < 5; i++) \u000a  System.out.println("    *********".substring(i, 5 + 2*i));\u000a
p1470
atp1471
Rp1472
sg13
VCreating a triangle with for loops
p1473
sg15
Nsg16
S'for (int i = 0; i < 5; i++) System.out.println("    *********".substring(i, 5 + 2 * i));'
p1474
sg18
g3
((lp1475
VCreating a triangle with for loops
p1476
atp1477
Rp1478
sa(dp1479
g2
g3
((lp1480
tp1481
Rp1482
sg7
I11409621
sg8
g3
((lp1483
Vfor (int i=1; i<10; i += 2)\u000a{\u000a    for (int k=0; k < (4 - i / 2); k++)\u000a    {\u000a        System.out.print(" ");\u000a    }\u000a    for (int j=0; j<i; j++)\u000a    {\u000a        System.out.print("*");\u000a    }\u000a    System.out.println("");\u000a}\u000a
p1484
aVfor (int i=1; i<10; i += 2)\u000a{\u000a    for (int j=0; j<i; j++)\u000a    {\u000a        System.out.print("*");\u000a    }\u000a    System.out.println("");\u000a}\u000a
p1485
atp1486
Rp1487
sg13
VCreating a triangle with for loops
p1488
sg15
Nsg16
S'for (int i = 1; i < 10; i += 2) {\n    for (int k = 0; k < (4 - i / 2); k++) {\n        System.out.print(" ");\n    }\n    for (int j = 0; j < i; j++) {\n        System.out.print("*");\n    }\n    System.out.println("");\n}'
p1489
sg18
g3
((lp1490
g1476
atp1491
Rp1492
sa(dp1493
g2
g3
((lp1494
Vpublic void printSequence(String s, int repeats) {\u000a    for(int i=0; i<repeats; i++) {\u000a        System.out.print(s);\u000a    }\u000a}\u000a
p1495
aVpublic void drawTriangle() {\u000a    for(int i=0; i<5; i++) {\u000a        printTriangleLine(i);\u000a    }\u000a}\u000a
p1496
aVaaa\u000a   *****\u000a
p1497
aVpublic void printTriangleLine(int rowNumber) {\u000a    printSequence(" ", 5 - rowNumber);\u000a    printSequence("*", 2 * rowNumber + 1);\u000a    System.out.println(); \u000a}\u000a
p1498
aVpublic static void main(String [] args) {\u000a    printSequence("a",3);\u000a    System.out.println();\u000a    printTriangleLine(2);\u000a}\u000a
p1499
aVassertEquals("   *****", TriangleDrawer.triangleLine(2));\u000aassertEquals("     *", TriangleDrawer.triangleLine(0))\u000a
p1500
aVpublic void printTriangleLine(int rowNumber) {\u000a    // we have to work out what to put here\u000a}\u000a
p1501
atp1502
Rp1503
sg7
I11409621
sg8
g3
((lp1504
Vpublic void printSequence(String s, int repeats) {\u000a    for(int i=0; i<repeats; i++) {\u000a        System.out.print(s);\u000a    }\u000a}\u000a
p1505
aVpublic void drawTriangle() {\u000a    for(int i=0; i<5; i++) {\u000a        printTriangleLine(i);\u000a    }\u000a}\u000a
p1506
aVaaa\u000a   *****\u000a
p1507
aVpublic void printTriangleLine(int rowNumber) {\u000a    printSequence(" ", 5 - rowNumber);\u000a    printSequence("*", 2 * rowNumber + 1);\u000a    System.out.println(); \u000a}\u000a
p1508
aVpublic static void main(String [] args) {\u000a    printSequence("a",3);\u000a    System.out.println();\u000a    printTriangleLine(2);\u000a}\u000a
p1509
aVassertEquals("   *****", TriangleDrawer.triangleLine(2));\u000aassertEquals("     *", TriangleDrawer.triangleLine(0))\u000a
p1510
aVpublic void printTriangleLine(int rowNumber) {\u000a    // we have to work out what to put here\u000a}\u000a
p1511
atp1512
Rp1513
sg13
VCreating a triangle with for loops
p1514
sg15
S'printSequence(" ", 5 - rowNumber);\nprintSequence("*", 2 * rowNumber + 1);\nSystem.out.println();'
p1515
sg16
S'for (int i = 0; i < 5; i++) {\n    printTriangleLine(i);\n}'
p1516
sg18
g3
((lp1517
g1476
atp1518
Rp1519
sa(dp1520
g2
g3
((lp1521
tp1522
Rp1523
sg7
I2891361
sg8
g3
((lp1524
VSimpleDateFormat isoFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");\u000aisoFormat.setTimeZone(TimeZone.getTimeZone("UTC"));\u000aDate date = isoFormat.parse("2010-05-23T09:01:02");\u000a
p1525
atp1526
Rp1527
sg13
g14
sg15
Nsg16
S'SimpleDateFormat isoFormat = new SimpleDateFormat("yyyy-MM-dd\'T\'HH:mm:ss");\nisoFormat.setTimeZone(TimeZone.getTimeZone("UTC"));\nDate date = isoFormat.parse("2010-05-23T09:01:02");'
p1528
sg18
g3
((lp1529
VHow to set time zone of a java.util.Date?
p1530
atp1531
Rp1532
sa(dp1533
g2
g3
((lp1534
tp1535
Rp1536
sg7
I2891361
sg8
g3
((lp1537
VDate date1 = new Date();\u000aSystem.out.println(date1);\u000a\u000aTimeZone.setDefault(TimeZone.getTimeZone("UTC"));\u000a// or pass in a command line arg: -Duser.timezone="UTC"\u000a\u000aDate date2 = new Date();\u000aSystem.out.println(date2);\u000a
p1538
aVThu Sep 05 10:11:12 EDT 2013\u000aThu Sep 05 14:11:12 UTC 2013\u000a
p1539
atp1540
Rp1541
sg13
g14
sg15
Nsg16
S'TimeZone.setDefault(TimeZone.getTimeZone("UTC"));'
p1542
sg18
g3
((lp1543
V<p>You could also set the timezone at the JVM level</p>\u000a\u000a<pre><code>Date date1 = new Date();\u000aSystem.out.println(date1);\u000a\u000aTimeZone.setDefault(TimeZone.getTimeZone("UTC"));\u000a// or pass in a command line arg: -Duser.timezone="UTC"\u000a\u000aDate date2 = new Date();\u000aSystem.out.println(date2);\u000a</code></pre>\u000a\u000a<p>output:</p>\u000a\u000a<pre><code>Thu Sep 05 10:11:12 EDT 2013\u000aThu Sep 05 14:11:12 UTC 2013\u000a</code></pre>\u000a
p1544
atp1545
Rp1546
sa(dp1547
g2
g3
((lp1548
tp1549
Rp1550
sg7
I2310139
sg8
g3
((lp1551
V// the SAX way:\u000aXMLReader myReader = XMLReaderFactory.createXMLReader();\u000amyReader.setContentHandler(handler);\u000amyReader.parse(new InputSource(new URL(url).openStream()));\u000a\u000a// or if you prefer DOM:\u000aDocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();\u000aDocumentBuilder db = dbf.newDocumentBuilder();\u000aDocument doc = db.parse(new URL(url).openStream());\u000a
p1552
atp1553
Rp1554
sg13
g14
sg15
Nsg16
S'XMLReader myReader = XMLReaderFactory.createXMLReader();\nmyReader.setContentHandler(handler);\nmyReader.parse(new InputSource(new URL(url).openStream()));'
p1555
sg18
g3
((lp1556
VHow to read XML response from a URL in java?
p1557
atp1558
Rp1559
sa(dp1560
g2
g3
((lp1561
tp1562
Rp1563
sg7
I2310139
sg8
g3
((lp1564
V// the SAX way:\u000aXMLReader myReader = XMLReaderFactory.createXMLReader();\u000amyReader.setContentHandler(handler);\u000amyReader.parse(new InputSource(new URL(url).openStream()));\u000a\u000a// or if you prefer DOM:\u000aDocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();\u000aDocumentBuilder db = dbf.newDocumentBuilder();\u000aDocument doc = db.parse(new URL(url).openStream());\u000a
p1565
atp1566
Rp1567
sg13
g14
sg15
Nsg16
S'DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();\nDocumentBuilder db = dbf.newDocumentBuilder();\nDocument doc = db.parse(new URL(url).openStream());'
p1568
sg18
g3
((lp1569
g1557
atp1570
Rp1571
sa(dp1572
g2
g3
((lp1573
tp1574
Rp1575
sg7
I2310139
sg8
g3
((lp1576
VURL url = new URL(urlString);\u000aURLConnection conn = url.openConnection();\u000a\u000aDocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();\u000aDocumentBuilder builder = factory.newDocumentBuilder();\u000aDocument doc = builder.parse(conn.getInputStream());\u000a\u000aTransformerFactory factory = TransformerFactory.newInstance();\u000aTransformer xform = factory.newTransformer();\u000a\u000a// that\u2019s the default xform; use a stylesheet to get a real one\u000axform.transform(new DOMSource(doc), new StreamResult(System.out));\u000a
p1577
atp1578
Rp1579
sg13
g14
sg15
Nsg16
S'URL url = new URL(urlString);\nURLConnection conn = url.openConnection();\nDocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();\nDocumentBuilder builder = factory.newDocumentBuilder();\nDocument doc = builder.parse(conn.getInputStream());'
p1580
sg18
g3
((lp1581
g1557
atp1582
Rp1583
sa(dp1584
g2
g3
((lp1585
tp1586
Rp1587
sg7
I7693994
sg8
g3
((lp1588
tp1589
Rp1590
sg13
g14
sg15
Nsg16
S'Character.toString((char) i);'
p1591
sg18
g3
((lp1592
VHow to convert ASCII code (0-255) to a String of the associated character?
p1593
atp1594
Rp1595
sa(dp1596
g2
g3
((lp1597
tp1598
Rp1599
sg7
I112503
sg8
g3
((lp1600
VList<String> list = new ArrayList<String>(Arrays.asList(array));\u000alist.removeAll(Arrays.asList("a"));\u000aarray = list.toArray(array);\u000a
p1601
aVList<String> list = new ArrayList<>();\u000aCollections.addAll(list, array);\u000alist.removeAll(Arrays.asList("a"));\u000aarray = list.toArray(EMPTY_STRING_ARRAY);\u000a
p1602
aVarray = list.toArray(new String[0]);\u000a
p1603
aVprivate static final String[] EMPTY_STRING_ARRAY = new String[0];\u000a
p1604
aVarray = list.toArray(new String[list.size()]);\u000a
p1605
atp1606
Rp1607
sg13
g14
sg15
Nsg16
S'List<String> list = new ArrayList<String>(Arrays.asList(array));\nlist.removeAll(Arrays.asList("a"));\narray = list.toArray(array);'
p1608
sg18
g3
((lp1609
VHow do I remove objects from an array in Java?
p1610
atp1611
Rp1612
sa(dp1613
g2
g3
((lp1614
tp1615
Rp1616
sg7
I112503
sg8
g3
((lp1617
VList<String> list = new ArrayList<String>(Arrays.asList(array));\u000alist.removeAll(Arrays.asList("a"));\u000aarray = list.toArray(array);\u000a
p1618
aVList<String> list = new ArrayList<>();\u000aCollections.addAll(list, array);\u000alist.removeAll(Arrays.asList("a"));\u000aarray = list.toArray(EMPTY_STRING_ARRAY);\u000a
p1619
aVarray = list.toArray(new String[0]);\u000a
p1620
aVprivate static final String[] EMPTY_STRING_ARRAY = new String[0];\u000a
p1621
aVarray = list.toArray(new String[list.size()]);\u000a
p1622
atp1623
Rp1624
sg13
g14
sg15
Nsg16
S'List<String> list = new ArrayList<String>(Arrays.asList(array));\nlist.removeAll(Arrays.asList("a"));\narray = list.toArray(new String[0]);'
p1625
sg18
g3
((lp1626
g1610
atp1627
Rp1628
sa(dp1629
g2
g3
((lp1630
tp1631
Rp1632
sg7
I112503
sg8
g3
((lp1633
VList<String> list = new ArrayList<String>(Arrays.asList(array));\u000alist.removeAll(Arrays.asList("a"));\u000aarray = list.toArray(array);\u000a
p1634
aVList<String> list = new ArrayList<>();\u000aCollections.addAll(list, array);\u000alist.removeAll(Arrays.asList("a"));\u000aarray = list.toArray(EMPTY_STRING_ARRAY);\u000a
p1635
aVarray = list.toArray(new String[0]);\u000a
p1636
aVprivate static final String[] EMPTY_STRING_ARRAY = new String[0];\u000a
p1637
aVarray = list.toArray(new String[list.size()]);\u000a
p1638
atp1639
Rp1640
sg13
g14
sg15
Nsg16
S'List<String> list = new ArrayList<>();\nCollections.addAll(list, array);\nlist.removeAll(Arrays.asList("a"));\narray = list.toArray(EMPTY_STRING_ARRAY);'
p1641
sg18
g3
((lp1642
g1610
atp1643
Rp1644
sa(dp1645
g2
g3
((lp1646
tp1647
Rp1648
sg7
I112503
sg8
g3
((lp1649
VList<String> list = new ArrayList<String>(Arrays.asList(array));\u000alist.removeAll(Arrays.asList("a"));\u000aarray = list.toArray(array);\u000a
p1650
aVList<String> list = new ArrayList<>();\u000aCollections.addAll(list, array);\u000alist.removeAll(Arrays.asList("a"));\u000aarray = list.toArray(EMPTY_STRING_ARRAY);\u000a
p1651
aVarray = list.toArray(new String[0]);\u000a
p1652
aVprivate static final String[] EMPTY_STRING_ARRAY = new String[0];\u000a
p1653
aVarray = list.toArray(new String[list.size()]);\u000a
p1654
atp1655
Rp1656
sg13
g14
sg15
Nsg16
S'List<String> list = new ArrayList<>();\nCollections.addAll(list, array);\nlist.removeAll(Arrays.asList("a"));\narray = list.toArray(new String[list.size()]);'
p1657
sg18
g3
((lp1658
g1610
atp1659
Rp1660
sa(dp1661
g2
g3
((lp1662
tp1663
Rp1664
sg7
I112503
sg8
g3
((lp1665
VString[] filteredArray = Arrays.stream(array)\u000a    .filter(e -> !e.equals(foo)).toArray(String[]::new);\u000a
p1666
atp1667
Rp1668
sg13
g14
sg15
Nsg16
S'String[] filteredArray = Arrays.stream(array).filter(e -> !e.equals(foo)).toArray(String[]::new);'
p1669
sg18
g3
((lp1670
g1610
atp1671
Rp1672
sa(dp1673
g2
g3
((lp1674
tp1675
Rp1676
sg7
I2627992
sg8
g3
((lp1677
VSystem.setProperty("user.timezone", "EST");\u000a
p1678
atp1679
Rp1680
sg13
VForce Java timezone as GMT/UTC
p1681
sg15
Nsg16
S'System.setProperty("user.timezone", "EST");'
p1682
sg18
g3
((lp1683
VForce Java timezone as GMT/UTC
p1684
atp1685
Rp1686
sa(dp1687
g2
g3
((lp1688
tp1689
Rp1690
sg7
I2966334
sg8
g3
((lp1691
Vframe.add(new JLabel("<html>Text color: <font color='red'>red</font></html>"));\u000a
p1692
atp1693
Rp1694
sg13
g14
sg15
Nsg16
S'label.setForeground(Color.RED);'
p1695
sg18
g3
((lp1696
VHow do I set the colour of a label (coloured text) in Java?
p1697
atp1698
Rp1699
sa(dp1700
g2
g3
((lp1701
tp1702
Rp1703
sg7
I2966334
sg8
g3
((lp1704
Vframe.add(new JLabel("<html>Text color: <font color='red'>red</font></html>"));\u000a
p1705
atp1706
Rp1707
sg13
g14
sg15
Nsg16
S'frame.add(new JLabel("<html>Text color: <font color=\'red\'>red</font></html>"));'
p1708
sg18
g3
((lp1709
g1697
atp1710
Rp1711
sa(dp1712
g2
g3
((lp1713
VJLabel title = new JLabel("I love stackoverflow!", JLabel.CENTER);\u000a\u000atitle.setForeground(Color.white);\u000a
p1714
atp1715
Rp1716
sg7
I2966334
sg8
g3
((lp1717
VJLabel title = new JLabel("I love stackoverflow!", JLabel.CENTER);\u000a\u000atitle.setForeground(Color.white);\u000a
p1718
atp1719
Rp1720
sg13
g14
sg15
S'JLabel title = new JLabel("I love stackoverflow!", JLabel.CENTER);'
p1721
sg16
S'title.setForeground(Color.white);'
p1722
sg18
g3
((lp1723
g1697
atp1724
Rp1725
sa(dp1726
g2
g3
((lp1727
VJLabel label = new JLabel ("Text Color: Red");\u000alabel.setForeground (Color.red);\u000a
p1728
atp1729
Rp1730
sg7
I2966334
sg8
g3
((lp1731
VJLabel label = new JLabel ("Text Color: Red");\u000alabel.setForeground (Color.red);\u000a
p1732
atp1733
Rp1734
sg13
g14
sg15
S'JLabel label = new JLabel("Text Color: Red");'
p1735
sg16
S'label.setForeground(Color.red);'
p1736
sg18
g3
((lp1737
g1697
atp1738
Rp1739
sa(dp1740
g2
g3
((lp1741
VString readFile(String fileName) throws IOException {\u000a    BufferedReader br = new BufferedReader(new FileReader(fileName));\u000a    try {\u000a        StringBuilder sb = new StringBuilder();\u000a        String line = br.readLine();\u000a\u000a        while (line != null) {\u000a            sb.append(line);\u000a            sb.append("\u005cn");\u000a            line = br.readLine();\u000a        }\u000a        return sb.toString();\u000a    } finally {\u000a        br.close();\u000a    }\u000a}\u000a
p1742
aVimport java.io.BufferedReader;\u000aimport java.io.FileReader;\u000aimport java.io.IOException;\u000a
p1743
atp1744
Rp1745
sg7
I16027229
sg8
g3
((lp1746
VString readFile(String fileName) throws IOException {\u000a    BufferedReader br = new BufferedReader(new FileReader(fileName));\u000a    try {\u000a        StringBuilder sb = new StringBuilder();\u000a        String line = br.readLine();\u000a\u000a        while (line != null) {\u000a            sb.append(line);\u000a            sb.append("\u005cn");\u000a            line = br.readLine();\u000a        }\u000a        return sb.toString();\u000a    } finally {\u000a        br.close();\u000a    }\u000a}\u000a
p1747
aVimport java.io.BufferedReader;\u000aimport java.io.FileReader;\u000aimport java.io.IOException;\u000a
p1748
atp1749
Rp1750
sg13
VReading from a text file and storing in a String
p1751
sg15
S'import java.io.BufferedReader;\nimport java.io.FileReader;\nimport java.io.IOException;'
p1752
sg16
S'BufferedReader br = new BufferedReader(new FileReader(fileName));\ntry {\n    StringBuilder sb = new StringBuilder();\n    String line = br.readLine();\n    while (line != null) {\n        sb.append(line);\n        sb.append("\\n");\n        line = br.readLine();\n    }\n    return sb.toString();\n} finally {\n    br.close();\n}'
p1753
sg18
g3
((lp1754
VReading from a text file and storing in a String
p1755
atp1756
Rp1757
sa(dp1758
g2
g3
((lp1759
tp1760
Rp1761
sg7
I4340653
sg8
g3
((lp1762
VServletContext context = getContext();\u000aString fullPath = context.getRealPath("/WEB-INF/test/foo.txt");\u000a
p1763
aVInputStream resourceContent = context.getResourceAsStream("/WEB-INF/test/foo.txt");\u000a
p1764
aVServletContext context = getContext();\u000aURL resourceUrl = context.getResource("/WEB-INF/test/foo.txt");\u000a
p1765
atp1766
Rp1767
sg13
g14
sg15
Nsg16
S'ServletContext context = getContext();\nString fullPath = context.getRealPath("/WEB-INF/test/foo.txt");'
p1768
sg18
g3
((lp1769
VFile path to resource in our war/WEB-INF folder?
p1770
atp1771
Rp1772
sa(dp1773
g2
g3
((lp1774
tp1775
Rp1776
sg7
I4340653
sg8
g3
((lp1777
VServletContext context = getContext();\u000aString fullPath = context.getRealPath("/WEB-INF/test/foo.txt");\u000a
p1778
aVInputStream resourceContent = context.getResourceAsStream("/WEB-INF/test/foo.txt");\u000a
p1779
aVServletContext context = getContext();\u000aURL resourceUrl = context.getResource("/WEB-INF/test/foo.txt");\u000a
p1780
atp1781
Rp1782
sg13
g14
sg15
Nsg16
S'ServletContext context = getContext();\nURL resourceUrl = context.getResource("/WEB-INF/test/foo.txt");'
p1783
sg18
g3
((lp1784
g1770
atp1785
Rp1786
sa(dp1787
g2
g3
((lp1788
tp1789
Rp1790
sg7
I4340653
sg8
g3
((lp1791
VServletContext context = getContext();\u000aString fullPath = context.getRealPath("/WEB-INF/test/foo.txt");\u000a
p1792
aVInputStream resourceContent = context.getResourceAsStream("/WEB-INF/test/foo.txt");\u000a
p1793
aVServletContext context = getContext();\u000aURL resourceUrl = context.getResource("/WEB-INF/test/foo.txt");\u000a
p1794
atp1795
Rp1796
sg13
g14
sg15
Nsg16
S'InputStream resourceContent = context.getResourceAsStream("/WEB-INF/test/foo.txt");'
p1797
sg18
g3
((lp1798
g1770
atp1799
Rp1800
sa(dp1801
g2
g3
((lp1802
tp1803
Rp1804
sg7
I4340653
sg8
g3
((lp1805
VInputStream resource = getServletContext().getResourceAsStream("/WEB-INF/my.json");\u000a
p1806
atp1807
Rp1808
sg13
g14
sg15
Nsg16
S'InputStream resource = getServletContext().getResourceAsStream("/WEB-INF/my.json");'
p1809
sg18
g3
((lp1810
g1770
atp1811
Rp1812
sa(dp1813
g2
g3
((lp1814
tp1815
Rp1816
sg7
I3914404
sg8
g3
((lp1817
VTimeZone tz = TimeZone.getTimeZone("UTC");\u000aDateFormat df = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm'Z'");\u000adf.setTimeZone(tz);\u000aString nowAsISO = df.format(new Date());\u000a
p1818
atp1819
Rp1820
sg13
g14
sg15
Nsg16
S'TimeZone tz = TimeZone.getTimeZone("UTC");\nDateFormat df = new SimpleDateFormat("yyyy-MM-dd\'T\'HH:mm\'Z\'");\ndf.setTimeZone(tz);\nString nowAsISO = df.format(new Date());'
p1821
sg18
g3
((lp1822
VHow to get current moment in ISO 8601 format with date, hour, and minute?
p1823
atp1824
Rp1825
sa(dp1826
g2
g3
((lp1827
tp1828
Rp1829
sg7
I3914404
sg8
g3
((lp1830
VTimeZone tz = TimeZone.getTimeZone("UTC");\u000aDateFormat df = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm'Z'"); // Quoted "Z" to indicate UTC, no timezone offset\u000adf.setTimeZone(tz);\u000aString nowAsISO = df.format(new Date());\u000a
p1831
atp1832
Rp1833
sg13
g14
sg15
Nsg16
S'TimeZone tz = TimeZone.getTimeZone("UTC");\nDateFormat df = new SimpleDateFormat("yyyy-MM-dd\'T\'HH:mm\'Z\'");\ndf.setTimeZone(tz);\nString nowAsISO = df.format(new Date());'
p1834
sg18
g3
((lp1835
g1823
atp1836
Rp1837
sa(dp1838
g2
g3
((lp1839
tp1840
Rp1841
sg7
I3914404
sg8
g3
((lp1842
VthisMoment = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mmX")\u000a                              .withZone(ZoneOffset.UTC)\u000a                              .format(Instant.now());\u000a
p1843
aVthisMoment = String.format("%tFT%<tRZ",\u000a                           Calendar.getInstance(TimeZone.getTimeZone("Z")));\u000a
p1844
atp1845
Rp1846
sg13
g14
sg15
Nsg16
S'thisMoment = DateTimeFormatter.ofPattern("yyyy-MM-dd\'T\'HH:mmX").withZone(ZoneOffset.UTC).format(Instant.now());'
p1847
sg18
g3
((lp1848
g1823
atp1849
Rp1850
sa(dp1851
g2
g3
((lp1852
tp1853
Rp1854
sg7
I3914404
sg8
g3
((lp1855
VthisMoment = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mmX")\u000a                              .withZone(ZoneOffset.UTC)\u000a                              .format(Instant.now());\u000a
p1856
aVthisMoment = String.format("%tFT%<tRZ",\u000a                           Calendar.getInstance(TimeZone.getTimeZone("Z")));\u000a
p1857
atp1858
Rp1859
sg13
g14
sg15
Nsg16
S'thisMoment = String.format("%tFT%<tRZ", Calendar.getInstance(TimeZone.getTimeZone("Z")));'
p1860
sg18
g3
((lp1861
g1823
atp1862
Rp1863
sa(dp1864
g2
g3
((lp1865
tp1866
Rp1867
sg7
I4240080
sg8
g3
((lp1868
Vpublic static void permutation(String str) { \u000a    permutation("", str); \u000a}\u000a\u000aprivate static void permutation(String prefix, String str) {\u000a    int n = str.length();\u000a    if (n == 0) System.out.println(prefix);\u000a    else {\u000a        for (int i = 0; i < n; i++)\u000a            permutation(prefix + str.charAt(i), str.substring(0, i) + str.substring(i+1, n));\u000a    }\u000a}\u000a
p1869
atp1870
Rp1871
sg13
VGenerating all permutations of a given string
p1872
sg15
Nsg16
S'public static void permutation(String str) {\n    permutation("", str);\n}\nprivate static void permutation(String prefix, String str) {\n    int n = str.length();\n    if (n == 0)\n        System.out.println(prefix);\n    else {\n        for (int i = 0; i < n; i++) permutation(prefix + str.charAt(i), str.substring(0, i) + str.substring(i + 1, n));\n    }\n}'
p1873
sg18
g3
((lp1874
VGenerating all permutations of a given string
p1875
atp1876
Rp1877
sa(dp1878
g2
g3
((lp1879
tp1880
Rp1881
sg7
I4240080
sg8
g3
((lp1882
V/**\u000a * List permutation of a string\u000a * \u000a * @param s the input string\u000a * @return  the list of permutation\u000a */\u000apublic static ArrayList<String> permutation(String s) {\u000a    // The result\u000a    ArrayList<String> res = new ArrayList<String>();\u000a    // If input string's length is 1, return {s}\u000a    if (s.length() == 1) {\u000a        res.add(s);\u000a    } else if (s.length() > 1) {\u000a        int lastIndex = s.length() - 1;\u000a        // Find out the last character\u000a        String last = s.substring(lastIndex);\u000a        // Rest of the string\u000a        String rest = s.substring(0, lastIndex);\u000a        // Perform permutation on the rest string and\u000a        // merge with the last character\u000a        res = merge(permutation(rest), last);\u000a    }\u000a    return res;\u000a}\u000a\u000a/**\u000a * @param list a result of permutation, e.g. {"ab", "ba"}\u000a * @param c    the last character\u000a * @return     a merged new list, e.g. {"cab", "acb" ... }\u000a */\u000apublic static ArrayList<String> merge(ArrayList<String> list, String c) {\u000a    ArrayList<String> res = new ArrayList<String>();\u000a    // Loop through all the string in the list\u000a    for (String s : list) {\u000a        // For each string, insert the last character to all possible postions\u000a        // and add them to the new list\u000a        for (int i = 0; i <= s.length(); ++i) {\u000a            String ps = new StringBuffer(s).insert(i, c).toString();\u000a            res.add(ps);\u000a        }\u000a    }\u000a    return res;\u000a}\u000a
p1883
atp1884
Rp1885
sg13
VGenerating all permutations of a given string
p1886
sg15
Nsg16
S'public static ArrayList<String> permutation(String s) {\n    ArrayList<String> res = new ArrayList<String>();\n    if (s.length() == 1) {\n        res.add(s);\n    } else if (s.length() > 1) {\n        int lastIndex = s.length() - 1;\n        String last = s.substring(lastIndex);\n        String rest = s.substring(0, lastIndex);\n        res = merge(permutation(rest), last);\n    }\n    return res;\n}\npublic static ArrayList<String> merge(ArrayList<String> list, String c) {\n    ArrayList<String> res = new ArrayList<String>();\n    for (String s : list) {\n        for (int i = 0; i <= s.length(); ++i) {\n            String ps = new StringBuffer(s).insert(i, c).toString();\n            res.add(ps);\n        }\n    }\n    return res;\n}'
p1887
sg18
g3
((lp1888
g1875
atp1889
Rp1890
sa(dp1891
g2
g3
((lp1892
tp1893
Rp1894
sg7
I12678781
sg8
g3
((lp1895
Vfor (i = 0; i < array.length / 2; i++) {\u000a  int temp = array[i];\u000a  array[i] = array[array.length - 1 - i];\u000a  array[array.length - 1 - i] = temp;\u000a}\u000a
p1896
atp1897
Rp1898
sg13
VReversing an Array in Java
p1899
sg15
Nsg16
S'for (i = 0; i < array.length / 2; i++) {\n    int temp = array[i];\n    array[i] = array[array.length - 1 - i];\n    array[array.length - 1 - i] = temp;\n}'
p1900
sg18
g3
((lp1901
VReversing an Array in Java
p1902
atp1903
Rp1904
sa(dp1905
g2
g3
((lp1906
tp1907
Rp1908
sg7
I12678781
sg8
g3
((lp1909
VCollections.reverse(Arrays.asList(array));\u000a
p1910
atp1911
Rp1912
sg13
VReversing an Array in Java
p1913
sg15
Nsg16
S'Collections.reverse(Arrays.asList(array));'
p1914
sg18
g3
((lp1915
g1902
atp1916
Rp1917
sa(dp1918
g2
g3
((lp1919
tp1920
Rp1921
sg7
I12678781
sg8
g3
((lp1922
VList<Integer> list = Arrays.asList(1, 4, 9, 16, 9, 7, 4, 9, 11);\u000aSystem.out.println(list);\u000aCollections.reverse(list);\u000aSystem.out.println(list);\u000a
p1923
aV[1, 4, 9, 16, 9, 7, 4, 9, 11]\u000a[11, 9, 4, 7, 9, 16, 9, 4, 1]\u000a
p1924
atp1925
Rp1926
sg13
VReversing an Array in Java
p1927
sg15
Nsg16
S'Collections.reverse(list);'
p1928
sg18
g3
((lp1929
g1902
atp1930
Rp1931
sa(dp1932
g2
g3
((lp1933
tp1934
Rp1935
sg7
I2310139
sg8
g3
((lp1936
V// the SAX way:\u000aXMLReader myReader = XMLReaderFactory.createXMLReader();\u000amyReader.setContentHandler(handler);\u000amyReader.parse(new InputSource(new URL(url).openStream()));\u000a\u000a// or if you prefer DOM:\u000aDocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();\u000aDocumentBuilder db = dbf.newDocumentBuilder();\u000aDocument doc = db.parse(new URL(url).openStream());\u000a
p1937
atp1938
Rp1939
sg13
g14
sg15
Nsg16
S'XMLReader myReader = XMLReaderFactory.createXMLReader();\nmyReader.setContentHandler(handler);\nmyReader.parse(new InputSource(new URL(url).openStream()));'
p1940
sg18
g3
((lp1941
g1557
atp1942
Rp1943
sa(dp1944
g2
g3
((lp1945
Vimport java.util.*;\u000aimport java.util.concurrent.ThreadLocalRandom;\u000a\u000aclass Test\u000a{\u000a  public static void main(String args[])\u000a  {\u000a    int[] solutionArray = { 1, 2, 3, 4, 5, 6, 16, 15, 14, 13, 12, 11 };\u000a\u000a    shuffleArray(solutionArray);\u000a    for (int i = 0; i < solutionArray.length; i++)\u000a    {\u000a      System.out.print(solutionArray[i] + " ");\u000a    }\u000a    System.out.println();\u000a  }\u000a\u000a  // Implementing Fisher\u2013Yates shuffle\u000a  static void shuffleArray(int[] ar)\u000a  {\u000a    // If running on Java 6 or older, use `new Random()` on RHS here\u000a    Random rnd = ThreadLocalRandom.current();\u000a    for (int i = ar.length - 1; i > 0; i--)\u000a    {\u000a      int index = rnd.nextInt(i + 1);\u000a      // Simple swap\u000a      int a = ar[index];\u000a      ar[index] = ar[i];\u000a      ar[i] = a;\u000a    }\u000a  }\u000a}\u000a
p1946
atp1947
Rp1948
sg7
I1519736
sg8
g3
((lp1949
Vimport java.util.*;\u000aimport java.util.concurrent.ThreadLocalRandom;\u000a\u000aclass Test\u000a{\u000a  public static void main(String args[])\u000a  {\u000a    int[] solutionArray = { 1, 2, 3, 4, 5, 6, 16, 15, 14, 13, 12, 11 };\u000a\u000a    shuffleArray(solutionArray);\u000a    for (int i = 0; i < solutionArray.length; i++)\u000a    {\u000a      System.out.print(solutionArray[i] + " ");\u000a    }\u000a    System.out.println();\u000a  }\u000a\u000a  // Implementing Fisher\u2013Yates shuffle\u000a  static void shuffleArray(int[] ar)\u000a  {\u000a    // If running on Java 6 or older, use `new Random()` on RHS here\u000a    Random rnd = ThreadLocalRandom.current();\u000a    for (int i = ar.length - 1; i > 0; i--)\u000a    {\u000a      int index = rnd.nextInt(i + 1);\u000a      // Simple swap\u000a      int a = ar[index];\u000a      ar[index] = ar[i];\u000a      ar[i] = a;\u000a    }\u000a  }\u000a}\u000a
p1950
atp1951
Rp1952
sg13
VRandom shuffling of an array
p1953
sg15
S'import java.util.*;\nimport java.util.concurrent.ThreadLocalRandom;'
p1954
sg16
S'Random rnd = ThreadLocalRandom.current();\nfor (int i = ar.length - 1; i > 0; i--) {\n    int index = rnd.nextInt(i + 1);\n    int a = ar[index];\n    ar[index] = ar[i];\n    ar[i] = a;\n}'
p1955
sg18
g3
((lp1956
VRandom shuffling of an array
p1957
atp1958
Rp1959
sa(dp1960
g2
g3
((lp1961
VList<Integer> solution = new ArrayList<>();\u000afor (int i = 1; i <= 6; i++) {\u000a    solution.add(i);\u000a}\u000aCollections.shuffle(solution);\u000a
p1962
atp1963
Rp1964
sg7
I1519736
sg8
g3
((lp1965
VList<Integer> solution = new ArrayList<>();\u000afor (int i = 1; i <= 6; i++) {\u000a    solution.add(i);\u000a}\u000aCollections.shuffle(solution);\u000a
p1966
atp1967
Rp1968
sg13
VRandom shuffling of an array
p1969
sg15
S'List<Integer> solution = new ArrayList<>();'
p1970
sg16
S'Collections.shuffle(solution);'
p1971
sg18
g3
((lp1972
g1957
atp1973
Rp1974
sa(dp1975
g2
g3
((lp1976
tp1977
Rp1978
sg7
I1519736
sg8
g3
((lp1979
Vprivate static void shuffleArray(int[] array)\u000a{\u000a    int index;\u000a    Random random = new Random();\u000a    for (int i = array.length - 1; i > 0; i--)\u000a    {\u000a        index = random.nextInt(i + 1);\u000a        if (index != i)\u000a        {\u000a            array[index] ^= array[i];\u000a            array[i] ^= array[index];\u000a            array[index] ^= array[i];\u000a        }\u000a    }\u000a}\u000a
p1980
aVprivate static void shuffleArray(int[] array)\u000a{\u000a    int index, temp;\u000a    Random random = new Random();\u000a    for (int i = array.length - 1; i > 0; i--)\u000a    {\u000a        index = random.nextInt(i + 1);\u000a        temp = array[index];\u000a        array[index] = array[i];\u000a        array[i] = temp;\u000a    }\u000a}\u000a
p1981
atp1982
Rp1983
sg13
VRandom shuffling of an array
p1984
sg15
Nsg16
S'int index;\nRandom random = new Random();\nfor (int i = array.length - 1; i > 0; i--) {\n    index = random.nextInt(i + 1);\n    if (index != i) {\n        array[index] ^= array[i];\n        array[i] ^= array[index];\n        array[index] ^= array[i];\n    }\n}'
p1985
sg18
g3
((lp1986
g1957
atp1987
Rp1988
sa(dp1989
g2
g3
((lp1990
tp1991
Rp1992
sg7
I1519736
sg8
g3
((lp1993
Vprivate static void shuffleArray(int[] array)\u000a{\u000a    int index;\u000a    Random random = new Random();\u000a    for (int i = array.length - 1; i > 0; i--)\u000a    {\u000a        index = random.nextInt(i + 1);\u000a        if (index != i)\u000a        {\u000a            array[index] ^= array[i];\u000a            array[i] ^= array[index];\u000a            array[index] ^= array[i];\u000a        }\u000a    }\u000a}\u000a
p1994
aVprivate static void shuffleArray(int[] array)\u000a{\u000a    int index, temp;\u000a    Random random = new Random();\u000a    for (int i = array.length - 1; i > 0; i--)\u000a    {\u000a        index = random.nextInt(i + 1);\u000a        temp = array[index];\u000a        array[index] = array[i];\u000a        array[i] = temp;\u000a    }\u000a}\u000a
p1995
atp1996
Rp1997
sg13
VRandom shuffling of an array
p1998
sg15
Nsg16
S'int index, temp;\nRandom random = new Random();\nfor (int i = array.length - 1; i > 0; i--) {\n    index = random.nextInt(i + 1);\n    temp = array[index];\n    array[index] = array[i];\n    array[i] = temp;\n}'
p1999
sg18
g3
((lp2000
g1957
atp2001
Rp2002
sa(dp2003
g2
g3
((lp2004
VSystem.out.print("hello");\u000aThread.sleep(1000); // Just to give the user a chance to see "hello".\u000aSystem.out.print("\u005cb\u005cb\u005cb\u005cb\u005cb");\u000aSystem.out.print("world");\u000a
p2005
atp2006
Rp2007
sg7
I7522022
sg8
g3
((lp2008
VSystem.out.print("hello");\u000aThread.sleep(1000); // Just to give the user a chance to see "hello".\u000aSystem.out.print("\u005cb\u005cb\u005cb\u005cb\u005cb");\u000aSystem.out.print("world");\u000a
p2009
atp2010
Rp2011
sg13
g14
sg15
S'System.out.print("hello");\nThread.sleep(1000);'
p2012
sg16
S'System.out.print("\\b\\b\\b\\b\\b");'
p2013
sg18
g3
((lp2014
g640
atp2015
Rp2016
sa(dp2017
g2
g3
((lp2018
tp2019
Rp2020
sg7
I7522022
sg8
g3
((lp2021
VSystem.out.print(String.format("\u005c033[2J"));\u000a
p2022
aVint count = 1; \u000aSystem.out.print(String.format("\u005c033[%dA",count)); // Move up\u000aSystem.out.print("\u005c033[2K"); // Erase line content\u000a
p2023
atp2024
Rp2025
sg13
g14
sg15
Nsg16
S'System.out.print(String.format("\\033[2J"));'
p2026
sg18
g3
((lp2027
g640
atp2028
Rp2029
sa(dp2030
g2
g3
((lp2031
tp2032
Rp2033
sg7
I320542
sg8
g3
((lp2034
Vreturn new File(MyClass.class.getProtectionDomain().getCodeSource().getLocation().toURI().getPath());\u000a
p2035
atp2036
Rp2037
sg13
g14
sg15
Nsg16
S'return new File(MyClass.class.getProtectionDomain().getCodeSource().getLocation().toURI().getPath());'
p2038
sg18
g3
((lp2039
VHow to get the path of a running JAR file?
p2040
atp2041
Rp2042
sa(dp2043
g2
g3
((lp2044
tp2045
Rp2046
sg7
I320542
sg8
g3
((lp2047
VString path = Test.class.getProtectionDomain().getCodeSource().getLocation().getPath();\u000aString decodedPath = URLDecoder.decode(path, "UTF-8");\u000a
p2048
atp2049
Rp2050
sg13
g14
sg15
Nsg16
S'String path = Test.class.getProtectionDomain().getCodeSource().getLocation().getPath();\nString decodedPath = URLDecoder.decode(path, "UTF-8");'
p2051
sg18
g3
((lp2052
g2040
atp2053
Rp2054
sa(dp2055
g2
g3
((lp2056
tp2057
Rp2058
sg7
I320542
sg8
g3
((lp2059
V/**\u000a * Gets the base location of the given class.\u000a * <p>\u000a * If the class is directly on the file system (e.g.,\u000a * "/path/to/my/package/MyClass.class") then it will return the base directory\u000a * (e.g., "file:/path/to").\u000a * </p>\u000a * <p>\u000a * If the class is within a JAR file (e.g.,\u000a * "/path/to/my-jar.jar!/my/package/MyClass.class") then it will return the\u000a * path to the JAR (e.g., "file:/path/to/my-jar.jar").\u000a * </p>\u000a *\u000a * @param c The class whose location is desired.\u000a * @see FileUtils#urlToFile(URL) to convert the result to a {@link File}.\u000a */\u000apublic static URL getLocation(final Class<?> c) {\u000a    if (c == null) return null; // could not load the class\u000a\u000a    // try the easy way first\u000a    try {\u000a        final URL codeSourceLocation =\u000a            c.getProtectionDomain().getCodeSource().getLocation();\u000a        if (codeSourceLocation != null) return codeSourceLocation;\u000a    }\u000a    catch (final SecurityException e) {\u000a        // NB: Cannot access protection domain.\u000a    }\u000a    catch (final NullPointerException e) {\u000a        // NB: Protection domain or code source is null.\u000a    }\u000a\u000a    // NB: The easy way failed, so we try the hard way. We ask for the class\u000a    // itself as a resource, then strip the class's path from the URL string,\u000a    // leaving the base path.\u000a\u000a    // get the class's raw resource path\u000a    final URL classResource = c.getResource(c.getSimpleName() + ".class");\u000a    if (classResource == null) return null; // cannot find class resource\u000a\u000a    final String url = classResource.toString();\u000a    final String suffix = c.getCanonicalName().replace('.', '/') + ".class";\u000a    if (!url.endsWith(suffix)) return null; // weird URL\u000a\u000a    // strip the class's path from the URL string\u000a    final String base = url.substring(0, url.length() - suffix.length());\u000a\u000a    String path = base;\u000a\u000a    // remove the "jar:" prefix and "!/" suffix, if present\u000a    if (path.startsWith("jar:")) path = path.substring(4, path.length() - 2);\u000a\u000a    try {\u000a        return new URL(path);\u000a    }\u000a    catch (final MalformedURLException e) {\u000a        e.printStackTrace();\u000a        return null;\u000a    }\u000a} \u000a\u000a/**\u000a * Converts the given {@link URL} to its corresponding {@link File}.\u000a * <p>\u000a * This method is similar to calling {@code new File(url.toURI())} except that\u000a * it also handles "jar:file:" URLs, returning the path to the JAR file.\u000a * </p>\u000a * \u000a * @param url The URL to convert.\u000a * @return A file path suitable for use with e.g. {@link FileInputStream}\u000a * @throws IllegalArgumentException if the URL does not correspond to a file.\u000a */\u000apublic static File urlToFile(final URL url) {\u000a    return url == null ? null : urlToFile(url.toString());\u000a}\u000a\u000a/**\u000a * Converts the given URL string to its corresponding {@link File}.\u000a * \u000a * @param url The URL to convert.\u000a * @return A file path suitable for use with e.g. {@link FileInputStream}\u000a * @throws IllegalArgumentException if the URL does not correspond to a file.\u000a */\u000apublic static File urlToFile(final String url) {\u000a    String path = url;\u000a    if (path.startsWith("jar:")) {\u000a        // remove "jar:" prefix and "!/" suffix\u000a        final int index = path.indexOf("!/");\u000a        path = path.substring(4, index);\u000a    }\u000a    try {\u000a        if (PlatformUtils.isWindows() && path.matches("file:[A-Za-z]:.*")) {\u000a            path = "file:/" + path.substring(5);\u000a        }\u000a        return new File(new URL(path).toURI());\u000a    }\u000a    catch (final MalformedURLException e) {\u000a        // NB: URL is not completely well-formed.\u000a    }\u000a    catch (final URISyntaxException e) {\u000a        // NB: URL is not completely well-formed.\u000a    }\u000a    if (path.startsWith("file:")) {\u000a        // pass through the URL as-is, minus "file:" prefix\u000a        path = path.substring(5);\u000a        return new File(path);\u000a    }\u000a    throw new IllegalArgumentException("Invalid URL: " + url);\u000a}\u000a
p2060
atp2061
Rp2062
sg13
g14
sg15
Nsg16
S'if (c == null)\n    return null;\ntry {\n    final URL codeSourceLocation = c.getProtectionDomain().getCodeSource().getLocation();\n    if (codeSourceLocation != null)\n        return codeSourceLocation;\n} catch (final SecurityException e) {\n} catch (final NullPointerException e) {\n}\nfinal URL classResource = c.getResource(c.getSimpleName() + ".class");\nif (classResource == null)\n    return null;\nfinal String url = classResource.toString();\nfinal String suffix = c.getCanonicalName().replace(\'.\', \'/\') + ".class";\nif (!url.endsWith(suffix))\n    return null;\nfinal String base = url.substring(0, url.length() - suffix.length());\nString path = base;\nif (path.startsWith("jar:"))\n    path = path.substring(4, path.length() - 2);\ntry {\n    return new URL(path);\n} catch (final MalformedURLException e) {\n    e.printStackTrace();\n    return null;\n}'
p2063
sg18
g3
((lp2064
V<p>To obtain the <code>File</code> for a given <code>Class</code>, there are two steps:</p>\u000a\u000a<ol>\u000a<li>Convert the <code>Class</code> to a <code>URL</code></li>\u000a<li>Convert the <code>URL</code> to a <code>File</code></li>\u000a</ol>\u000a\u000a<p>It is important to understand both steps, and not conflate them.</p>\u000a\u000a<p>Once you have the <code>File</code>, you can call <code>getParentFile</code> to get the containing folder, if that is what you need.</p>\u000a\u000a<h2>Step 1: <code>Class</code> to <code>URL</code></h2>\u000a\u000a<p>As discussed in other answers, there are two major ways to find a <code>URL</code> relevant to a <code>Class</code>.</p>\u000a\u000a<ol>\u000a<li><p><code>URL url = Bar.class.getProtectionDomain().getCodeSource().getLocation();</code></p></li>\u000a<li><p><code>URL url = Bar.class.getResource(Bar.class.getSimpleName() + ".class");</code></p></li>\u000a</ol>\u000a\u000a<p>Both have pros and cons.</p>\u000a\u000a<p>The <code>getProtectionDomain</code> approach yields the base location of the class (e.g., the containing JAR file). However, it is possible that the Java runtime's security policy will throw <code>SecurityException</code> when calling <code>getProtectionDomain()</code>, so if your application needs to run in a variety of environments, it is best to test in all of them.</p>\u000a\u000a<p>The <code>getResource</code> approach yields the full URL resource path of the class, from which you will need to perform additional string manipulation. It may be a <code>file:</code> path, but it could also be <code>jar:file:</code> or even something nastier like <code>bundleresource://346.fwk2106232034:4/foo/Bar.class</code> when executing within an OSGi framework. Conversely, the <code>getProtectionDomain</code> approach correctly yields a <code>file:</code> URL even from within OSGi.</p>\u000a\u000a<p>Note that both <code>getResource("")</code> and <code>getResource(".")</code> failed in my tests, when the class resided within a JAR file; both invocations returned null. So I recommend the #2 invocation shown above instead, as it seems safer.</p>\u000a\u000a<h2>Step 2: <code>URL</code> to <code>File</code></h2>\u000a\u000a<p>Either way, once you have a <code>URL</code>, the next step is convert to a <code>File</code>. This is its own challenge; see <a href="http://weblogs.java.net/blog/kohsuke/archive/2007/04/how_to_convert.html" rel="noreferrer">Kohsuke Kawaguchi's blog post about it</a> for full details, but in short, you can use <code>new File(url.toURI())</code> as long as the URL is completely well-formed.</p>\u000a\u000a<p>Lastly, I would <em>highly discourage</em> using <code>URLDecoder</code>. Some characters of the URL, <code>:</code> and <code>/</code> in particular, are not valid URL-encoded characters. From the <a href="http://docs.oracle.com/javase/7/docs/api/java/net/URLDecoder.html" rel="noreferrer">URLDecoder</a> Javadoc:</p>\u000a\u000a<blockquote>\u000a  <p>It is assumed that all characters in the encoded string are one of the following: "a" through "z", "A" through "Z", "0" through "9", and "-", "_", ".", and "*". The character "%" is allowed but is interpreted as the start of a special escaped sequence.</p>\u000a  \u000a  <p>...</p>\u000a  \u000a  <p>There are two possible ways in which this decoder could deal with illegal strings. It could either leave illegal characters alone or it could throw an IllegalArgumentException. Which approach the decoder takes is left to the implementation.</p>\u000a</blockquote>\u000a\u000a<p>In practice, <code>URLDecoder</code> generally does not throw <code>IllegalArgumentException</code> as threatened above. And if your file path has spaces encoded as <code>%20</code>, this approach may appear to work. However, if your file path has other non-alphameric characters such as <code>+</code> you will have problems with <code>URLDecoder</code> mangling your file path.</p>\u000a\u000a<h2>Working code</h2>\u000a\u000a<p>To achieve these steps, you might have methods like the following:</p>\u000a\u000a<pre><code>/**\u000a * Gets the base location of the given class.\u000a * <p>\u000a * If the class is directly on the file system (e.g.,\u000a * "/path/to/my/package/MyClass.class") then it will return the base directory\u000a * (e.g., "file:/path/to").\u000a * </p>\u000a * <p>\u000a * If the class is within a JAR file (e.g.,\u000a * "/path/to/my-jar.jar!/my/package/MyClass.class") then it will return the\u000a * path to the JAR (e.g., "file:/path/to/my-jar.jar").\u000a * </p>\u000a *\u000a * @param c The class whose location is desired.\u000a * @see FileUtils#urlToFile(URL) to convert the result to a {@link File}.\u000a */\u000apublic static URL getLocation(final Class<?> c) {\u000a    if (c == null) return null; // could not load the class\u000a\u000a    // try the easy way first\u000a    try {\u000a        final URL codeSourceLocation =\u000a            c.getProtectionDomain().getCodeSource().getLocation();\u000a        if (codeSourceLocation != null) return codeSourceLocation;\u000a    }\u000a    catch (final SecurityException e) {\u000a        // NB: Cannot access protection domain.\u000a    }\u000a    catch (final NullPointerException e) {\u000a        // NB: Protection domain or code source is null.\u000a    }\u000a\u000a    // NB: The easy way failed, so we try the hard way. We ask for the class\u000a    // itself as a resource, then strip the class's path from the URL string,\u000a    // leaving the base path.\u000a\u000a    // get the class's raw resource path\u000a    final URL classResource = c.getResource(c.getSimpleName() + ".class");\u000a    if (classResource == null) return null; // cannot find class resource\u000a\u000a    final String url = classResource.toString();\u000a    final String suffix = c.getCanonicalName().replace('.', '/') + ".class";\u000a    if (!url.endsWith(suffix)) return null; // weird URL\u000a\u000a    // strip the class's path from the URL string\u000a    final String base = url.substring(0, url.length() - suffix.length());\u000a\u000a    String path = base;\u000a\u000a    // remove the "jar:" prefix and "!/" suffix, if present\u000a    if (path.startsWith("jar:")) path = path.substring(4, path.length() - 2);\u000a\u000a    try {\u000a        return new URL(path);\u000a    }\u000a    catch (final MalformedURLException e) {\u000a        e.printStackTrace();\u000a        return null;\u000a    }\u000a} \u000a\u000a/**\u000a * Converts the given {@link URL} to its corresponding {@link File}.\u000a * <p>\u000a * This method is similar to calling {@code new File(url.toURI())} except that\u000a * it also handles "jar:file:" URLs, returning the path to the JAR file.\u000a * </p>\u000a * \u000a * @param url The URL to convert.\u000a * @return A file path suitable for use with e.g. {@link FileInputStream}\u000a * @throws IllegalArgumentException if the URL does not correspond to a file.\u000a */\u000apublic static File urlToFile(final URL url) {\u000a    return url == null ? null : urlToFile(url.toString());\u000a}\u000a\u000a/**\u000a * Converts the given URL string to its corresponding {@link File}.\u000a * \u000a * @param url The URL to convert.\u000a * @return A file path suitable for use with e.g. {@link FileInputStream}\u000a * @throws IllegalArgumentException if the URL does not correspond to a file.\u000a */\u000apublic static File urlToFile(final String url) {\u000a    String path = url;\u000a    if (path.startsWith("jar:")) {\u000a        // remove "jar:" prefix and "!/" suffix\u000a        final int index = path.indexOf("!/");\u000a        path = path.substring(4, index);\u000a    }\u000a    try {\u000a        if (PlatformUtils.isWindows() && path.matches("file:[A-Za-z]:.*")) {\u000a            path = "file:/" + path.substring(5);\u000a        }\u000a        return new File(new URL(path).toURI());\u000a    }\u000a    catch (final MalformedURLException e) {\u000a        // NB: URL is not completely well-formed.\u000a    }\u000a    catch (final URISyntaxException e) {\u000a        // NB: URL is not completely well-formed.\u000a    }\u000a    if (path.startsWith("file:")) {\u000a        // pass through the URL as-is, minus "file:" prefix\u000a        path = path.substring(5);\u000a        return new File(path);\u000a    }\u000a    throw new IllegalArgumentException("Invalid URL: " + url);\u000a}\u000a</code></pre>\u000a\u000a<p>You can find these methods in the <a href="https://github.com/scijava/scijava-common" rel="noreferrer">SciJava Common</a> library:</p>\u000a\u000a<ul>\u000a<li><a href="https://github.com/scijava/scijava-common/blob/scijava-common-2.62.1/src/main/java/org/scijava/util/ClassUtils.java#L296-L355" rel="noreferrer">org.scijava.util.ClassUtils</a></li>\u000a<li><a href="https://github.com/scijava/scijava-common/blob/scijava-common-2.62.1/src/main/java/org/scijava/util/FileUtils.java#L221-L268" rel="noreferrer">org.scijava.util.FileUtils</a>.</li>\u000a</ul>\u000a
p2065
atp2066
Rp2067
sa(dp2068
g2
g3
((lp2069
tp2070
Rp2071
sg7
I320542
sg8
g3
((lp2072
V/**\u000a * Gets the base location of the given class.\u000a * <p>\u000a * If the class is directly on the file system (e.g.,\u000a * "/path/to/my/package/MyClass.class") then it will return the base directory\u000a * (e.g., "file:/path/to").\u000a * </p>\u000a * <p>\u000a * If the class is within a JAR file (e.g.,\u000a * "/path/to/my-jar.jar!/my/package/MyClass.class") then it will return the\u000a * path to the JAR (e.g., "file:/path/to/my-jar.jar").\u000a * </p>\u000a *\u000a * @param c The class whose location is desired.\u000a * @see FileUtils#urlToFile(URL) to convert the result to a {@link File}.\u000a */\u000apublic static URL getLocation(final Class<?> c) {\u000a    if (c == null) return null; // could not load the class\u000a\u000a    // try the easy way first\u000a    try {\u000a        final URL codeSourceLocation =\u000a            c.getProtectionDomain().getCodeSource().getLocation();\u000a        if (codeSourceLocation != null) return codeSourceLocation;\u000a    }\u000a    catch (final SecurityException e) {\u000a        // NB: Cannot access protection domain.\u000a    }\u000a    catch (final NullPointerException e) {\u000a        // NB: Protection domain or code source is null.\u000a    }\u000a\u000a    // NB: The easy way failed, so we try the hard way. We ask for the class\u000a    // itself as a resource, then strip the class's path from the URL string,\u000a    // leaving the base path.\u000a\u000a    // get the class's raw resource path\u000a    final URL classResource = c.getResource(c.getSimpleName() + ".class");\u000a    if (classResource == null) return null; // cannot find class resource\u000a\u000a    final String url = classResource.toString();\u000a    final String suffix = c.getCanonicalName().replace('.', '/') + ".class";\u000a    if (!url.endsWith(suffix)) return null; // weird URL\u000a\u000a    // strip the class's path from the URL string\u000a    final String base = url.substring(0, url.length() - suffix.length());\u000a\u000a    String path = base;\u000a\u000a    // remove the "jar:" prefix and "!/" suffix, if present\u000a    if (path.startsWith("jar:")) path = path.substring(4, path.length() - 2);\u000a\u000a    try {\u000a        return new URL(path);\u000a    }\u000a    catch (final MalformedURLException e) {\u000a        e.printStackTrace();\u000a        return null;\u000a    }\u000a} \u000a\u000a/**\u000a * Converts the given {@link URL} to its corresponding {@link File}.\u000a * <p>\u000a * This method is similar to calling {@code new File(url.toURI())} except that\u000a * it also handles "jar:file:" URLs, returning the path to the JAR file.\u000a * </p>\u000a * \u000a * @param url The URL to convert.\u000a * @return A file path suitable for use with e.g. {@link FileInputStream}\u000a * @throws IllegalArgumentException if the URL does not correspond to a file.\u000a */\u000apublic static File urlToFile(final URL url) {\u000a    return url == null ? null : urlToFile(url.toString());\u000a}\u000a\u000a/**\u000a * Converts the given URL string to its corresponding {@link File}.\u000a * \u000a * @param url The URL to convert.\u000a * @return A file path suitable for use with e.g. {@link FileInputStream}\u000a * @throws IllegalArgumentException if the URL does not correspond to a file.\u000a */\u000apublic static File urlToFile(final String url) {\u000a    String path = url;\u000a    if (path.startsWith("jar:")) {\u000a        // remove "jar:" prefix and "!/" suffix\u000a        final int index = path.indexOf("!/");\u000a        path = path.substring(4, index);\u000a    }\u000a    try {\u000a        if (PlatformUtils.isWindows() && path.matches("file:[A-Za-z]:.*")) {\u000a            path = "file:/" + path.substring(5);\u000a        }\u000a        return new File(new URL(path).toURI());\u000a    }\u000a    catch (final MalformedURLException e) {\u000a        // NB: URL is not completely well-formed.\u000a    }\u000a    catch (final URISyntaxException e) {\u000a        // NB: URL is not completely well-formed.\u000a    }\u000a    if (path.startsWith("file:")) {\u000a        // pass through the URL as-is, minus "file:" prefix\u000a        path = path.substring(5);\u000a        return new File(path);\u000a    }\u000a    throw new IllegalArgumentException("Invalid URL: " + url);\u000a}\u000a
p2073
atp2074
Rp2075
sg13
g14
sg15
Nsg16
S'return url == null ? null : urlToFile(url.toString());'
p2076
sg18
g3
((lp2077
V<p>To obtain the <code>File</code> for a given <code>Class</code>, there are two steps:</p>\u000a\u000a<ol>\u000a<li>Convert the <code>Class</code> to a <code>URL</code></li>\u000a<li>Convert the <code>URL</code> to a <code>File</code></li>\u000a</ol>\u000a\u000a<p>It is important to understand both steps, and not conflate them.</p>\u000a\u000a<p>Once you have the <code>File</code>, you can call <code>getParentFile</code> to get the containing folder, if that is what you need.</p>\u000a\u000a<h2>Step 1: <code>Class</code> to <code>URL</code></h2>\u000a\u000a<p>As discussed in other answers, there are two major ways to find a <code>URL</code> relevant to a <code>Class</code>.</p>\u000a\u000a<ol>\u000a<li><p><code>URL url = Bar.class.getProtectionDomain().getCodeSource().getLocation();</code></p></li>\u000a<li><p><code>URL url = Bar.class.getResource(Bar.class.getSimpleName() + ".class");</code></p></li>\u000a</ol>\u000a\u000a<p>Both have pros and cons.</p>\u000a\u000a<p>The <code>getProtectionDomain</code> approach yields the base location of the class (e.g., the containing JAR file). However, it is possible that the Java runtime's security policy will throw <code>SecurityException</code> when calling <code>getProtectionDomain()</code>, so if your application needs to run in a variety of environments, it is best to test in all of them.</p>\u000a\u000a<p>The <code>getResource</code> approach yields the full URL resource path of the class, from which you will need to perform additional string manipulation. It may be a <code>file:</code> path, but it could also be <code>jar:file:</code> or even something nastier like <code>bundleresource://346.fwk2106232034:4/foo/Bar.class</code> when executing within an OSGi framework. Conversely, the <code>getProtectionDomain</code> approach correctly yields a <code>file:</code> URL even from within OSGi.</p>\u000a\u000a<p>Note that both <code>getResource("")</code> and <code>getResource(".")</code> failed in my tests, when the class resided within a JAR file; both invocations returned null. So I recommend the #2 invocation shown above instead, as it seems safer.</p>\u000a\u000a<h2>Step 2: <code>URL</code> to <code>File</code></h2>\u000a\u000a<p>Either way, once you have a <code>URL</code>, the next step is convert to a <code>File</code>. This is its own challenge; see <a href="http://weblogs.java.net/blog/kohsuke/archive/2007/04/how_to_convert.html" rel="noreferrer">Kohsuke Kawaguchi's blog post about it</a> for full details, but in short, you can use <code>new File(url.toURI())</code> as long as the URL is completely well-formed.</p>\u000a\u000a<p>Lastly, I would <em>highly discourage</em> using <code>URLDecoder</code>. Some characters of the URL, <code>:</code> and <code>/</code> in particular, are not valid URL-encoded characters. From the <a href="http://docs.oracle.com/javase/7/docs/api/java/net/URLDecoder.html" rel="noreferrer">URLDecoder</a> Javadoc:</p>\u000a\u000a<blockquote>\u000a  <p>It is assumed that all characters in the encoded string are one of the following: "a" through "z", "A" through "Z", "0" through "9", and "-", "_", ".", and "*". The character "%" is allowed but is interpreted as the start of a special escaped sequence.</p>\u000a  \u000a  <p>...</p>\u000a  \u000a  <p>There are two possible ways in which this decoder could deal with illegal strings. It could either leave illegal characters alone or it could throw an IllegalArgumentException. Which approach the decoder takes is left to the implementation.</p>\u000a</blockquote>\u000a\u000a<p>In practice, <code>URLDecoder</code> generally does not throw <code>IllegalArgumentException</code> as threatened above. And if your file path has spaces encoded as <code>%20</code>, this approach may appear to work. However, if your file path has other non-alphameric characters such as <code>+</code> you will have problems with <code>URLDecoder</code> mangling your file path.</p>\u000a\u000a<h2>Working code</h2>\u000a\u000a<p>To achieve these steps, you might have methods like the following:</p>\u000a\u000a<pre><code>/**\u000a * Gets the base location of the given class.\u000a * <p>\u000a * If the class is directly on the file system (e.g.,\u000a * "/path/to/my/package/MyClass.class") then it will return the base directory\u000a * (e.g., "file:/path/to").\u000a * </p>\u000a * <p>\u000a * If the class is within a JAR file (e.g.,\u000a * "/path/to/my-jar.jar!/my/package/MyClass.class") then it will return the\u000a * path to the JAR (e.g., "file:/path/to/my-jar.jar").\u000a * </p>\u000a *\u000a * @param c The class whose location is desired.\u000a * @see FileUtils#urlToFile(URL) to convert the result to a {@link File}.\u000a */\u000apublic static URL getLocation(final Class<?> c) {\u000a    if (c == null) return null; // could not load the class\u000a\u000a    // try the easy way first\u000a    try {\u000a        final URL codeSourceLocation =\u000a            c.getProtectionDomain().getCodeSource().getLocation();\u000a        if (codeSourceLocation != null) return codeSourceLocation;\u000a    }\u000a    catch (final SecurityException e) {\u000a        // NB: Cannot access protection domain.\u000a    }\u000a    catch (final NullPointerException e) {\u000a        // NB: Protection domain or code source is null.\u000a    }\u000a\u000a    // NB: The easy way failed, so we try the hard way. We ask for the class\u000a    // itself as a resource, then strip the class's path from the URL string,\u000a    // leaving the base path.\u000a\u000a    // get the class's raw resource path\u000a    final URL classResource = c.getResource(c.getSimpleName() + ".class");\u000a    if (classResource == null) return null; // cannot find class resource\u000a\u000a    final String url = classResource.toString();\u000a    final String suffix = c.getCanonicalName().replace('.', '/') + ".class";\u000a    if (!url.endsWith(suffix)) return null; // weird URL\u000a\u000a    // strip the class's path from the URL string\u000a    final String base = url.substring(0, url.length() - suffix.length());\u000a\u000a    String path = base;\u000a\u000a    // remove the "jar:" prefix and "!/" suffix, if present\u000a    if (path.startsWith("jar:")) path = path.substring(4, path.length() - 2);\u000a\u000a    try {\u000a        return new URL(path);\u000a    }\u000a    catch (final MalformedURLException e) {\u000a        e.printStackTrace();\u000a        return null;\u000a    }\u000a} \u000a\u000a/**\u000a * Converts the given {@link URL} to its corresponding {@link File}.\u000a * <p>\u000a * This method is similar to calling {@code new File(url.toURI())} except that\u000a * it also handles "jar:file:" URLs, returning the path to the JAR file.\u000a * </p>\u000a * \u000a * @param url The URL to convert.\u000a * @return A file path suitable for use with e.g. {@link FileInputStream}\u000a * @throws IllegalArgumentException if the URL does not correspond to a file.\u000a */\u000apublic static File urlToFile(final URL url) {\u000a    return url == null ? null : urlToFile(url.toString());\u000a}\u000a\u000a/**\u000a * Converts the given URL string to its corresponding {@link File}.\u000a * \u000a * @param url The URL to convert.\u000a * @return A file path suitable for use with e.g. {@link FileInputStream}\u000a * @throws IllegalArgumentException if the URL does not correspond to a file.\u000a */\u000apublic static File urlToFile(final String url) {\u000a    String path = url;\u000a    if (path.startsWith("jar:")) {\u000a        // remove "jar:" prefix and "!/" suffix\u000a        final int index = path.indexOf("!/");\u000a        path = path.substring(4, index);\u000a    }\u000a    try {\u000a        if (PlatformUtils.isWindows() && path.matches("file:[A-Za-z]:.*")) {\u000a            path = "file:/" + path.substring(5);\u000a        }\u000a        return new File(new URL(path).toURI());\u000a    }\u000a    catch (final MalformedURLException e) {\u000a        // NB: URL is not completely well-formed.\u000a    }\u000a    catch (final URISyntaxException e) {\u000a        // NB: URL is not completely well-formed.\u000a    }\u000a    if (path.startsWith("file:")) {\u000a        // pass through the URL as-is, minus "file:" prefix\u000a        path = path.substring(5);\u000a        return new File(path);\u000a    }\u000a    throw new IllegalArgumentException("Invalid URL: " + url);\u000a}\u000a</code></pre>\u000a\u000a<p>You can find these methods in the <a href="https://github.com/scijava/scijava-common" rel="noreferrer">SciJava Common</a> library:</p>\u000a\u000a<ul>\u000a<li><a href="https://github.com/scijava/scijava-common/blob/scijava-common-2.62.1/src/main/java/org/scijava/util/ClassUtils.java#L296-L355" rel="noreferrer">org.scijava.util.ClassUtils</a></li>\u000a<li><a href="https://github.com/scijava/scijava-common/blob/scijava-common-2.62.1/src/main/java/org/scijava/util/FileUtils.java#L221-L268" rel="noreferrer">org.scijava.util.FileUtils</a>.</li>\u000a</ul>\u000a
p2078
atp2079
Rp2080
sa(dp2081
g2
g3
((lp2082
tp2083
Rp2084
sg7
I320542
sg8
g3
((lp2085
V/**\u000a * Gets the base location of the given class.\u000a * <p>\u000a * If the class is directly on the file system (e.g.,\u000a * "/path/to/my/package/MyClass.class") then it will return the base directory\u000a * (e.g., "file:/path/to").\u000a * </p>\u000a * <p>\u000a * If the class is within a JAR file (e.g.,\u000a * "/path/to/my-jar.jar!/my/package/MyClass.class") then it will return the\u000a * path to the JAR (e.g., "file:/path/to/my-jar.jar").\u000a * </p>\u000a *\u000a * @param c The class whose location is desired.\u000a * @see FileUtils#urlToFile(URL) to convert the result to a {@link File}.\u000a */\u000apublic static URL getLocation(final Class<?> c) {\u000a    if (c == null) return null; // could not load the class\u000a\u000a    // try the easy way first\u000a    try {\u000a        final URL codeSourceLocation =\u000a            c.getProtectionDomain().getCodeSource().getLocation();\u000a        if (codeSourceLocation != null) return codeSourceLocation;\u000a    }\u000a    catch (final SecurityException e) {\u000a        // NB: Cannot access protection domain.\u000a    }\u000a    catch (final NullPointerException e) {\u000a        // NB: Protection domain or code source is null.\u000a    }\u000a\u000a    // NB: The easy way failed, so we try the hard way. We ask for the class\u000a    // itself as a resource, then strip the class's path from the URL string,\u000a    // leaving the base path.\u000a\u000a    // get the class's raw resource path\u000a    final URL classResource = c.getResource(c.getSimpleName() + ".class");\u000a    if (classResource == null) return null; // cannot find class resource\u000a\u000a    final String url = classResource.toString();\u000a    final String suffix = c.getCanonicalName().replace('.', '/') + ".class";\u000a    if (!url.endsWith(suffix)) return null; // weird URL\u000a\u000a    // strip the class's path from the URL string\u000a    final String base = url.substring(0, url.length() - suffix.length());\u000a\u000a    String path = base;\u000a\u000a    // remove the "jar:" prefix and "!/" suffix, if present\u000a    if (path.startsWith("jar:")) path = path.substring(4, path.length() - 2);\u000a\u000a    try {\u000a        return new URL(path);\u000a    }\u000a    catch (final MalformedURLException e) {\u000a        e.printStackTrace();\u000a        return null;\u000a    }\u000a} \u000a\u000a/**\u000a * Converts the given {@link URL} to its corresponding {@link File}.\u000a * <p>\u000a * This method is similar to calling {@code new File(url.toURI())} except that\u000a * it also handles "jar:file:" URLs, returning the path to the JAR file.\u000a * </p>\u000a * \u000a * @param url The URL to convert.\u000a * @return A file path suitable for use with e.g. {@link FileInputStream}\u000a * @throws IllegalArgumentException if the URL does not correspond to a file.\u000a */\u000apublic static File urlToFile(final URL url) {\u000a    return url == null ? null : urlToFile(url.toString());\u000a}\u000a\u000a/**\u000a * Converts the given URL string to its corresponding {@link File}.\u000a * \u000a * @param url The URL to convert.\u000a * @return A file path suitable for use with e.g. {@link FileInputStream}\u000a * @throws IllegalArgumentException if the URL does not correspond to a file.\u000a */\u000apublic static File urlToFile(final String url) {\u000a    String path = url;\u000a    if (path.startsWith("jar:")) {\u000a        // remove "jar:" prefix and "!/" suffix\u000a        final int index = path.indexOf("!/");\u000a        path = path.substring(4, index);\u000a    }\u000a    try {\u000a        if (PlatformUtils.isWindows() && path.matches("file:[A-Za-z]:.*")) {\u000a            path = "file:/" + path.substring(5);\u000a        }\u000a        return new File(new URL(path).toURI());\u000a    }\u000a    catch (final MalformedURLException e) {\u000a        // NB: URL is not completely well-formed.\u000a    }\u000a    catch (final URISyntaxException e) {\u000a        // NB: URL is not completely well-formed.\u000a    }\u000a    if (path.startsWith("file:")) {\u000a        // pass through the URL as-is, minus "file:" prefix\u000a        path = path.substring(5);\u000a        return new File(path);\u000a    }\u000a    throw new IllegalArgumentException("Invalid URL: " + url);\u000a}\u000a
p2086
atp2087
Rp2088
sg13
g14
sg15
Nsg16
S'String path = url;\nif (path.startsWith("jar:")) {\n    final int index = path.indexOf("!/");\n    path = path.substring(4, index);\n}\ntry {\n    if (PlatformUtils.isWindows() && path.matches("file:[A-Za-z]:.*")) {\n        path = "file:/" + path.substring(5);\n    }\n    return new File(new URL(path).toURI());\n} catch (final MalformedURLException e) {\n} catch (final URISyntaxException e) {\n}\nif (path.startsWith("file:")) {\n    path = path.substring(5);\n    return new File(path);\n}\nthrow new IllegalArgumentException("Invalid URL: " + url);'
p2089
sg18
g3
((lp2090
V<p>To obtain the <code>File</code> for a given <code>Class</code>, there are two steps:</p>\u000a\u000a<ol>\u000a<li>Convert the <code>Class</code> to a <code>URL</code></li>\u000a<li>Convert the <code>URL</code> to a <code>File</code></li>\u000a</ol>\u000a\u000a<p>It is important to understand both steps, and not conflate them.</p>\u000a\u000a<p>Once you have the <code>File</code>, you can call <code>getParentFile</code> to get the containing folder, if that is what you need.</p>\u000a\u000a<h2>Step 1: <code>Class</code> to <code>URL</code></h2>\u000a\u000a<p>As discussed in other answers, there are two major ways to find a <code>URL</code> relevant to a <code>Class</code>.</p>\u000a\u000a<ol>\u000a<li><p><code>URL url = Bar.class.getProtectionDomain().getCodeSource().getLocation();</code></p></li>\u000a<li><p><code>URL url = Bar.class.getResource(Bar.class.getSimpleName() + ".class");</code></p></li>\u000a</ol>\u000a\u000a<p>Both have pros and cons.</p>\u000a\u000a<p>The <code>getProtectionDomain</code> approach yields the base location of the class (e.g., the containing JAR file). However, it is possible that the Java runtime's security policy will throw <code>SecurityException</code> when calling <code>getProtectionDomain()</code>, so if your application needs to run in a variety of environments, it is best to test in all of them.</p>\u000a\u000a<p>The <code>getResource</code> approach yields the full URL resource path of the class, from which you will need to perform additional string manipulation. It may be a <code>file:</code> path, but it could also be <code>jar:file:</code> or even something nastier like <code>bundleresource://346.fwk2106232034:4/foo/Bar.class</code> when executing within an OSGi framework. Conversely, the <code>getProtectionDomain</code> approach correctly yields a <code>file:</code> URL even from within OSGi.</p>\u000a\u000a<p>Note that both <code>getResource("")</code> and <code>getResource(".")</code> failed in my tests, when the class resided within a JAR file; both invocations returned null. So I recommend the #2 invocation shown above instead, as it seems safer.</p>\u000a\u000a<h2>Step 2: <code>URL</code> to <code>File</code></h2>\u000a\u000a<p>Either way, once you have a <code>URL</code>, the next step is convert to a <code>File</code>. This is its own challenge; see <a href="http://weblogs.java.net/blog/kohsuke/archive/2007/04/how_to_convert.html" rel="noreferrer">Kohsuke Kawaguchi's blog post about it</a> for full details, but in short, you can use <code>new File(url.toURI())</code> as long as the URL is completely well-formed.</p>\u000a\u000a<p>Lastly, I would <em>highly discourage</em> using <code>URLDecoder</code>. Some characters of the URL, <code>:</code> and <code>/</code> in particular, are not valid URL-encoded characters. From the <a href="http://docs.oracle.com/javase/7/docs/api/java/net/URLDecoder.html" rel="noreferrer">URLDecoder</a> Javadoc:</p>\u000a\u000a<blockquote>\u000a  <p>It is assumed that all characters in the encoded string are one of the following: "a" through "z", "A" through "Z", "0" through "9", and "-", "_", ".", and "*". The character "%" is allowed but is interpreted as the start of a special escaped sequence.</p>\u000a  \u000a  <p>...</p>\u000a  \u000a  <p>There are two possible ways in which this decoder could deal with illegal strings. It could either leave illegal characters alone or it could throw an IllegalArgumentException. Which approach the decoder takes is left to the implementation.</p>\u000a</blockquote>\u000a\u000a<p>In practice, <code>URLDecoder</code> generally does not throw <code>IllegalArgumentException</code> as threatened above. And if your file path has spaces encoded as <code>%20</code>, this approach may appear to work. However, if your file path has other non-alphameric characters such as <code>+</code> you will have problems with <code>URLDecoder</code> mangling your file path.</p>\u000a\u000a<h2>Working code</h2>\u000a\u000a<p>To achieve these steps, you might have methods like the following:</p>\u000a\u000a<pre><code>/**\u000a * Gets the base location of the given class.\u000a * <p>\u000a * If the class is directly on the file system (e.g.,\u000a * "/path/to/my/package/MyClass.class") then it will return the base directory\u000a * (e.g., "file:/path/to").\u000a * </p>\u000a * <p>\u000a * If the class is within a JAR file (e.g.,\u000a * "/path/to/my-jar.jar!/my/package/MyClass.class") then it will return the\u000a * path to the JAR (e.g., "file:/path/to/my-jar.jar").\u000a * </p>\u000a *\u000a * @param c The class whose location is desired.\u000a * @see FileUtils#urlToFile(URL) to convert the result to a {@link File}.\u000a */\u000apublic static URL getLocation(final Class<?> c) {\u000a    if (c == null) return null; // could not load the class\u000a\u000a    // try the easy way first\u000a    try {\u000a        final URL codeSourceLocation =\u000a            c.getProtectionDomain().getCodeSource().getLocation();\u000a        if (codeSourceLocation != null) return codeSourceLocation;\u000a    }\u000a    catch (final SecurityException e) {\u000a        // NB: Cannot access protection domain.\u000a    }\u000a    catch (final NullPointerException e) {\u000a        // NB: Protection domain or code source is null.\u000a    }\u000a\u000a    // NB: The easy way failed, so we try the hard way. We ask for the class\u000a    // itself as a resource, then strip the class's path from the URL string,\u000a    // leaving the base path.\u000a\u000a    // get the class's raw resource path\u000a    final URL classResource = c.getResource(c.getSimpleName() + ".class");\u000a    if (classResource == null) return null; // cannot find class resource\u000a\u000a    final String url = classResource.toString();\u000a    final String suffix = c.getCanonicalName().replace('.', '/') + ".class";\u000a    if (!url.endsWith(suffix)) return null; // weird URL\u000a\u000a    // strip the class's path from the URL string\u000a    final String base = url.substring(0, url.length() - suffix.length());\u000a\u000a    String path = base;\u000a\u000a    // remove the "jar:" prefix and "!/" suffix, if present\u000a    if (path.startsWith("jar:")) path = path.substring(4, path.length() - 2);\u000a\u000a    try {\u000a        return new URL(path);\u000a    }\u000a    catch (final MalformedURLException e) {\u000a        e.printStackTrace();\u000a        return null;\u000a    }\u000a} \u000a\u000a/**\u000a * Converts the given {@link URL} to its corresponding {@link File}.\u000a * <p>\u000a * This method is similar to calling {@code new File(url.toURI())} except that\u000a * it also handles "jar:file:" URLs, returning the path to the JAR file.\u000a * </p>\u000a * \u000a * @param url The URL to convert.\u000a * @return A file path suitable for use with e.g. {@link FileInputStream}\u000a * @throws IllegalArgumentException if the URL does not correspond to a file.\u000a */\u000apublic static File urlToFile(final URL url) {\u000a    return url == null ? null : urlToFile(url.toString());\u000a}\u000a\u000a/**\u000a * Converts the given URL string to its corresponding {@link File}.\u000a * \u000a * @param url The URL to convert.\u000a * @return A file path suitable for use with e.g. {@link FileInputStream}\u000a * @throws IllegalArgumentException if the URL does not correspond to a file.\u000a */\u000apublic static File urlToFile(final String url) {\u000a    String path = url;\u000a    if (path.startsWith("jar:")) {\u000a        // remove "jar:" prefix and "!/" suffix\u000a        final int index = path.indexOf("!/");\u000a        path = path.substring(4, index);\u000a    }\u000a    try {\u000a        if (PlatformUtils.isWindows() && path.matches("file:[A-Za-z]:.*")) {\u000a            path = "file:/" + path.substring(5);\u000a        }\u000a        return new File(new URL(path).toURI());\u000a    }\u000a    catch (final MalformedURLException e) {\u000a        // NB: URL is not completely well-formed.\u000a    }\u000a    catch (final URISyntaxException e) {\u000a        // NB: URL is not completely well-formed.\u000a    }\u000a    if (path.startsWith("file:")) {\u000a        // pass through the URL as-is, minus "file:" prefix\u000a        path = path.substring(5);\u000a        return new File(path);\u000a    }\u000a    throw new IllegalArgumentException("Invalid URL: " + url);\u000a}\u000a</code></pre>\u000a\u000a<p>You can find these methods in the <a href="https://github.com/scijava/scijava-common" rel="noreferrer">SciJava Common</a> library:</p>\u000a\u000a<ul>\u000a<li><a href="https://github.com/scijava/scijava-common/blob/scijava-common-2.62.1/src/main/java/org/scijava/util/ClassUtils.java#L296-L355" rel="noreferrer">org.scijava.util.ClassUtils</a></li>\u000a<li><a href="https://github.com/scijava/scijava-common/blob/scijava-common-2.62.1/src/main/java/org/scijava/util/FileUtils.java#L221-L268" rel="noreferrer">org.scijava.util.FileUtils</a>.</li>\u000a</ul>\u000a
p2091
atp2092
Rp2093
sa(dp2094
g2
g3
((lp2095
tp2096
Rp2097
sg7
I3395286
sg8
g3
((lp2098
VString prefix = "";\u000afor (String serverId : serverIds) {\u000a  sb.append(prefix);\u000a  prefix = ",";\u000a  sb.append(serverId);\u000a}\u000a
p2099
atp2100
Rp2101
sg13
VRemove last character of a StringBuilder?
p2102
sg15
Nsg16
S'String prefix = "";\nfor (String serverId : serverIds) {\n    sb.append(prefix);\n    prefix = ",";\n    sb.append(serverId);\n}'
p2103
sg18
g3
((lp2104
VRemove last character of a StringBuilder?
p2105
atp2106
Rp2107
sa(dp2108
g2
g3
((lp2109
tp2110
Rp2111
sg7
I3395286
sg8
g3
((lp2112
Vsb.setLength(sb.length() - 1);\u000a
p2113
aV// Concise but harder-to-read version of the above.\u000asb.setLength(Math.max(sb.length() - 1, 0));\u000a
p2114
aV// Readable version\u000aif (sb.length() > 0) {\u000a   sb.setLength(sb.length() - 1);\u000a}\u000a
p2115
atp2116
Rp2117
sg13
VRemove last character of a StringBuilder?
p2118
sg15
Nsg16
S'sb.setLength(sb.length() - 1);'
p2119
sg18
g3
((lp2120
g2105
atp2121
Rp2122
sa(dp2123
g2
g3
((lp2124
tp2125
Rp2126
sg7
I3395286
sg8
g3
((lp2127
Vsb.setLength(sb.length() - 1);\u000a
p2128
aV// Concise but harder-to-read version of the above.\u000asb.setLength(Math.max(sb.length() - 1, 0));\u000a
p2129
aV// Readable version\u000aif (sb.length() > 0) {\u000a   sb.setLength(sb.length() - 1);\u000a}\u000a
p2130
atp2131
Rp2132
sg13
VRemove last character of a StringBuilder?
p2133
sg15
Nsg16
S'if (sb.length() > 0) {\n    sb.setLength(sb.length() - 1);\n}'
p2134
sg18
g3
((lp2135
g2105
atp2136
Rp2137
sa(dp2138
g2
g3
((lp2139
tp2140
Rp2141
sg7
I3395286
sg8
g3
((lp2142
Vsb.setLength(sb.length() - 1);\u000a
p2143
aV// Concise but harder-to-read version of the above.\u000asb.setLength(Math.max(sb.length() - 1, 0));\u000a
p2144
aV// Readable version\u000aif (sb.length() > 0) {\u000a   sb.setLength(sb.length() - 1);\u000a}\u000a
p2145
atp2146
Rp2147
sg13
VRemove last character of a StringBuilder?
p2148
sg15
Nsg16
S'sb.setLength(Math.max(sb.length() - 1, 0));'
p2149
sg18
g3
((lp2150
g2105
atp2151
Rp2152
sa(dp2153
g2
g3
((lp2154
tp2155
Rp2156
sg7
I3395286
sg8
g3
((lp2157
Vsb.deleteCharAt(sb.length()-1) \u000a
p2158
atp2159
Rp2160
sg13
VRemove last character of a StringBuilder?
p2161
sg15
Nsg16
S'sb.deleteCharAt(sb.length() - 1);'
p2162
sg18
g3
((lp2163
g2105
atp2164
Rp2165
sa(dp2166
g2
g3
((lp2167
tp2168
Rp2169
sg7
I2369967
sg8
g3
((lp2170
Vint arr[] = null;\u000aif (arr == null) {\u000a  System.out.println("array is null");\u000a}\u000a
p2171
aVObject arr[] = new Object[10];\u000aboolean empty = true;\u000afor (int i=0; i<arr.length; i++) {\u000a  if (arr[i] != null) {\u000a    empty = false;\u000a    break;\u000a  }\u000a}\u000a
p2172
aVObject arr[] = new Object[10];\u000aboolean empty = true;\u000afor (Object ob : arr) {\u000a  if (ob != null) {\u000a    empty = false;\u000a    break;\u000a  }\u000a}\u000a
p2173
aVarr = new int[0];\u000aif (arr.length == 0) {\u000a  System.out.println("array is empty");\u000a}\u000a
p2174
atp2175
Rp2176
sg13
g14
sg15
Nsg16
S'if (arr == null) {\n}'
p2177
sg18
g3
((lp2178
Vhow we check for null array in java
p2179
atp2180
Rp2181
sa(dp2182
g2
g3
((lp2183
tp2184
Rp2185
sg7
I2369967
sg8
g3
((lp2186
tp2187
Rp2188
sg13
g14
sg15
Nsg16
S'ArrayUtils.isNotEmpty(testArrayName);'
p2189
sg18
g3
((lp2190
g2179
atp2191
Rp2192
sa(dp2193
g2
g3
((lp2194
Vif (i == null || i.length == 0) { }\u000a
p2195
aVint[] i = ...;\u000aif (i.length == 0) { } // no elements in the array\u000a
p2196
atp2197
Rp2198
sg7
I2369967
sg8
g3
((lp2199
Vif (i == null || i.length == 0) { }\u000a
p2200
aVint[] i = ...;\u000aif (i.length == 0) { } // no elements in the array\u000a
p2201
atp2202
Rp2203
sg13
g14
sg15
Nsg16
S'if (i.length == 0) {\n}'
p2204
sg18
g3
((lp2205
g2179
atp2206
Rp2207
sa(dp2208
g2
g3
((lp2209
Vif (i == null || i.length == 0) { }\u000a
p2210
aVint[] i = ...;\u000aif (i.length == 0) { } // no elements in the array\u000a
p2211
atp2212
Rp2213
sg7
I2369967
sg8
g3
((lp2214
Vif (i == null || i.length == 0) { }\u000a
p2215
aVint[] i = ...;\u000aif (i.length == 0) { } // no elements in the array\u000a
p2216
atp2217
Rp2218
sg13
g14
sg15
Nsg16
S'if (i == null || i.length == 0) {\n}'
p2219
sg18
g3
((lp2220
g2179
atp2221
Rp2222
sa(dp2223
g2
g3
((lp2224
Vint i = 200; // 0000 0000 0000 0000 0000 0000 1100 1000 (200)\u000abyte b = (byte) 200; // 1100 1000 (-56 by Java specification, 200 by convention)\u000a\u000a/*\u000a * Will print a negative int -56 because upcasting byte to int does\u000a * so called "sign extension" which yields those bits:\u000a * 1111 1111 1111 1111 1111 1111 1100 1000 (-56)\u000a *\u000a * But you could still choose to interpret this as +200.\u000a */\u000aSystem.out.println(b); // "-56"\u000a\u000a/*\u000a * Will print a positive int 200 because bitwise AND with 0xFF will\u000a * zero all the 24 most significant bits that:\u000a * a) were added during upcasting to int which took place silently\u000a *    just before evaluating the bitwise AND operator.\u000a *    So the `b & 0xFF` is equivalent with `((int) b) & 0xFF`.\u000a * b) were set to 1s because of "sign extension" during the upcasting\u000a *\u000a * 1111 1111 1111 1111 1111 1111 1100 1000 (the int)\u000a * &\u000a * 0000 0000 0000 0000 0000 0000 1111 1111 (the 0xFF)\u000a * =======================================\u000a * 0000 0000 0000 0000 0000 0000 1100 1000 (200)\u000a */\u000aSystem.out.println(b & 0xFF); // "200"\u000a\u000a/*\u000a * You would typically do this *within* the method that expected an \u000a * unsigned byte and the advantage is you apply `0xFF` only once\u000a * and than you use the `unsignedByte` variable in all your bitwise\u000a * operations.\u000a *\u000a * You could use any integer type longer than `byte` for the `unsignedByte` variable,\u000a * i.e. `short`, `int`, `long` and even `char`, but during bitwise operations\u000a * it would get casted to `int` anyway.\u000a */\u000avoid printUnsignedByte(byte b) {\u000a    int unsignedByte = b & 0xFF;\u000a    System.out.println(unsignedByte); // "200"\u000a}\u000a
p2225
atp2226
Rp2227
sg7
I4266756
sg8
g3
((lp2228
Vint i = 200; // 0000 0000 0000 0000 0000 0000 1100 1000 (200)\u000abyte b = (byte) 200; // 1100 1000 (-56 by Java specification, 200 by convention)\u000a\u000a/*\u000a * Will print a negative int -56 because upcasting byte to int does\u000a * so called "sign extension" which yields those bits:\u000a * 1111 1111 1111 1111 1111 1111 1100 1000 (-56)\u000a *\u000a * But you could still choose to interpret this as +200.\u000a */\u000aSystem.out.println(b); // "-56"\u000a\u000a/*\u000a * Will print a positive int 200 because bitwise AND with 0xFF will\u000a * zero all the 24 most significant bits that:\u000a * a) were added during upcasting to int which took place silently\u000a *    just before evaluating the bitwise AND operator.\u000a *    So the `b & 0xFF` is equivalent with `((int) b) & 0xFF`.\u000a * b) were set to 1s because of "sign extension" during the upcasting\u000a *\u000a * 1111 1111 1111 1111 1111 1111 1100 1000 (the int)\u000a * &\u000a * 0000 0000 0000 0000 0000 0000 1111 1111 (the 0xFF)\u000a * =======================================\u000a * 0000 0000 0000 0000 0000 0000 1100 1000 (200)\u000a */\u000aSystem.out.println(b & 0xFF); // "200"\u000a\u000a/*\u000a * You would typically do this *within* the method that expected an \u000a * unsigned byte and the advantage is you apply `0xFF` only once\u000a * and than you use the `unsignedByte` variable in all your bitwise\u000a * operations.\u000a *\u000a * You could use any integer type longer than `byte` for the `unsignedByte` variable,\u000a * i.e. `short`, `int`, `long` and even `char`, but during bitwise operations\u000a * it would get casted to `int` anyway.\u000a */\u000avoid printUnsignedByte(byte b) {\u000a    int unsignedByte = b & 0xFF;\u000a    System.out.println(unsignedByte); // "200"\u000a}\u000a
p2229
atp2230
Rp2231
sg13
g14
sg15
S'int i = 200;\nbyte b = (byte) 200;'
p2232
sg16
S'System.out.println(b & 0xFF);'
p2233
sg18
g3
((lp2234
VCan we make unsigned byte in Java
p2235
atp2236
Rp2237
sa(dp2238
g2
g3
((lp2239
tp2240
Rp2241
sg7
I4266756
sg8
g3
((lp2242
V  public static int unsignedToBytes(byte b) {\u000a    return b & 0xFF;\u000a  }\u000a\u000a  public static void main(String[] args) {\u000a    System.out.println(unsignedToBytes((byte) -12));\u000a  }\u000a
p2243
atp2244
Rp2245
sg13
g14
sg15
Nsg16
S'return b & 0xFF;'
p2246
sg18
g3
((lp2247
g2235
atp2248
Rp2249
sa(dp2250
g2
g3
((lp2251
tp2252
Rp2253
sg7
I4266756
sg8
g3
((lp2254
Vint i = 200; // 0000 0000 0000 0000 0000 0000 1100 1000 (200)\u000abyte b = (byte) 200; // 1100 1000 (-56 by Java specification, 200 by convention)\u000a\u000a/*\u000a * Will print a negative int -56 because upcasting byte to int does\u000a * so called "sign extension" which yields those bits:\u000a * 1111 1111 1111 1111 1111 1111 1100 1000 (-56)\u000a *\u000a * But you could still choose to interpret this as +200.\u000a */\u000aSystem.out.println(b); // "-56"\u000a\u000a/*\u000a * Will print a positive int 200 because bitwise AND with 0xFF will\u000a * zero all the 24 most significant bits that:\u000a * a) were added during upcasting to int which took place silently\u000a *    just before evaluating the bitwise AND operator.\u000a *    So the `b & 0xFF` is equivalent with `((int) b) & 0xFF`.\u000a * b) were set to 1s because of "sign extension" during the upcasting\u000a *\u000a * 1111 1111 1111 1111 1111 1111 1100 1000 (the int)\u000a * &\u000a * 0000 0000 0000 0000 0000 0000 1111 1111 (the 0xFF)\u000a * =======================================\u000a * 0000 0000 0000 0000 0000 0000 1100 1000 (200)\u000a */\u000aSystem.out.println(b & 0xFF); // "200"\u000a\u000a/*\u000a * You would typically do this *within* the method that expected an \u000a * unsigned byte and the advantage is you apply `0xFF` only once\u000a * and than you use the `unsignedByte` variable in all your bitwise\u000a * operations.\u000a *\u000a * You could use any integer type longer than `byte` for the `unsignedByte` variable,\u000a * i.e. `short`, `int`, `long` and even `char`, but during bitwise operations\u000a * it would get casted to `int` anyway.\u000a */\u000avoid printUnsignedByte(byte b) {\u000a    int unsignedByte = b & 0xFF;\u000a    System.out.println(unsignedByte); // "200"\u000a}\u000a
p2255
atp2256
Rp2257
sg13
g14
sg15
Nsg16
S'int unsignedByte = b & 0xFF;\nSystem.out.println(unsignedByte);'
p2258
sg18
g3
((lp2259
g2235
atp2260
Rp2261
sa(dp2262
g2
g3
((lp2263
tp2264
Rp2265
sg7
I1770010
sg8
g3
((lp2266
Vimport com.jamonapi.*;\u000a...\u000aMonitor mon=MonitorFactory.start("myFirstMonitor");\u000a...Code Being Timed...\u000amon.stop();\u000a
p2267
aVlong startTime = System.nanoTime();    \u000a// ... the code being measured ...    \u000along estimatedTime = System.nanoTime() - startTime;\u000a
p2268
aVpublic aspect MonitorAspect {\u000a    pointcut monitor() : execution(* *.ClassToMonitor.methodToMonitor(..));\u000a\u000a    Object arround() : monitor() {\u000a        Monitor monitor = MonitorFactory.start(thisJoinPoint.toShortString());\u000a        Object returnedObject = proceed();\u000a        monitor.stop();\u000a        return returnedObject;\u000a    }\u000a}\u000a
p2269
aVlong startTime = System.currentTimeMillis();\u000a// ... do something ...\u000along estimatedTime = System.currentTimeMillis() - startTime;\u000a
p2270
atp2271
Rp2272
sg13
g14
sg15
Nsg16
S'long startTime = System.currentTimeMillis();\nlong estimatedTime = System.currentTimeMillis() - startTime;'
p2273
sg18
g3
((lp2274
VHow do I measure time elapsed in Java?
p2275
atp2276
Rp2277
sa(dp2278
g2
g3
((lp2279
tp2280
Rp2281
sg7
I1770010
sg8
g3
((lp2282
Vimport com.jamonapi.*;\u000a...\u000aMonitor mon=MonitorFactory.start("myFirstMonitor");\u000a...Code Being Timed...\u000amon.stop();\u000a
p2283
aVlong startTime = System.nanoTime();    \u000a// ... the code being measured ...    \u000along estimatedTime = System.nanoTime() - startTime;\u000a
p2284
aVpublic aspect MonitorAspect {\u000a    pointcut monitor() : execution(* *.ClassToMonitor.methodToMonitor(..));\u000a\u000a    Object arround() : monitor() {\u000a        Monitor monitor = MonitorFactory.start(thisJoinPoint.toShortString());\u000a        Object returnedObject = proceed();\u000a        monitor.stop();\u000a        return returnedObject;\u000a    }\u000a}\u000a
p2285
aVlong startTime = System.currentTimeMillis();\u000a// ... do something ...\u000along estimatedTime = System.currentTimeMillis() - startTime;\u000a
p2286
atp2287
Rp2288
sg13
g14
sg15
Nsg16
S'long startTime = System.nanoTime();\nlong estimatedTime = System.nanoTime() - startTime;'
p2289
sg18
g3
((lp2290
g2275
atp2291
Rp2292
sa(dp2293
g2
g3
((lp2294
Vimport com.jamonapi.*;\u000a...\u000aMonitor mon=MonitorFactory.start("myFirstMonitor");\u000a...Code Being Timed...\u000amon.stop();\u000a
p2295
aVlong startTime = System.nanoTime();    \u000a// ... the code being measured ...    \u000along estimatedTime = System.nanoTime() - startTime;\u000a
p2296
aVpublic aspect MonitorAspect {\u000a    pointcut monitor() : execution(* *.ClassToMonitor.methodToMonitor(..));\u000a\u000a    Object arround() : monitor() {\u000a        Monitor monitor = MonitorFactory.start(thisJoinPoint.toShortString());\u000a        Object returnedObject = proceed();\u000a        monitor.stop();\u000a        return returnedObject;\u000a    }\u000a}\u000a
p2297
aVlong startTime = System.currentTimeMillis();\u000a// ... do something ...\u000along estimatedTime = System.currentTimeMillis() - startTime;\u000a
p2298
atp2299
Rp2300
sg7
I1770010
sg8
g3
((lp2301
Vimport com.jamonapi.*;\u000a...\u000aMonitor mon=MonitorFactory.start("myFirstMonitor");\u000a...Code Being Timed...\u000amon.stop();\u000a
p2302
aVlong startTime = System.nanoTime();    \u000a// ... the code being measured ...    \u000along estimatedTime = System.nanoTime() - startTime;\u000a
p2303
aVpublic aspect MonitorAspect {\u000a    pointcut monitor() : execution(* *.ClassToMonitor.methodToMonitor(..));\u000a\u000a    Object arround() : monitor() {\u000a        Monitor monitor = MonitorFactory.start(thisJoinPoint.toShortString());\u000a        Object returnedObject = proceed();\u000a        monitor.stop();\u000a        return returnedObject;\u000a    }\u000a}\u000a
p2304
aVlong startTime = System.currentTimeMillis();\u000a// ... do something ...\u000along estimatedTime = System.currentTimeMillis() - startTime;\u000a
p2305
atp2306
Rp2307
sg13
g14
sg15
Nsg16
S'Monitor monitor = MonitorFactory.start(thisJoinPoint.toShortString());\nObject returnedObject = proceed();\nmonitor.stop();\nreturn returnedObject;'
p2308
sg18
g3
((lp2309
g2275
atp2310
Rp2311
sa(dp2312
g2
g3
((lp2313
V    TimeWatch watch = TimeWatch.start();\u000a    // do something\u000a    long passedTimeInMs = watch.time();\u000a    long passedTimeInSeconds = watch.time(TimeUnit.SECONDS);\u000a
p2314
aVpublic class TimeWatch {    \u000a    long starts;\u000a\u000a    public static TimeWatch start() {\u000a        return new TimeWatch();\u000a    }\u000a\u000a    private TimeWatch() {\u000a        reset();\u000a    }\u000a\u000a    public TimeWatch reset() {\u000a        starts = System.currentTimeMillis();\u000a        return this;\u000a    }\u000a\u000a    public long time() {\u000a        long ends = System.currentTimeMillis();\u000a        return ends - starts;\u000a    }\u000a\u000a    public long time(TimeUnit unit) {\u000a        return unit.convert(time(), TimeUnit.MILLISECONDS);\u000a    }\u000a}\u000a
p2315
atp2316
Rp2317
sg7
I1770010
sg8
g3
((lp2318
V    TimeWatch watch = TimeWatch.start();\u000a    // do something\u000a    long passedTimeInMs = watch.time();\u000a    long passedTimeInSeconds = watch.time(TimeUnit.SECONDS);\u000a
p2319
aVpublic class TimeWatch {    \u000a    long starts;\u000a\u000a    public static TimeWatch start() {\u000a        return new TimeWatch();\u000a    }\u000a\u000a    private TimeWatch() {\u000a        reset();\u000a    }\u000a\u000a    public TimeWatch reset() {\u000a        starts = System.currentTimeMillis();\u000a        return this;\u000a    }\u000a\u000a    public long time() {\u000a        long ends = System.currentTimeMillis();\u000a        return ends - starts;\u000a    }\u000a\u000a    public long time(TimeUnit unit) {\u000a        return unit.convert(time(), TimeUnit.MILLISECONDS);\u000a    }\u000a}\u000a
p2320
atp2321
Rp2322
sg13
g14
sg15
S'public class TimeWatch {\n\n    long starts;\n\n    public static TimeWatch start() {\n        return new TimeWatch();\n    }\n\n    private TimeWatch() {\n        reset();\n    }\n\n    public TimeWatch reset() {\n        starts = System.currentTimeMillis();\n        return this;\n    }\n\n    public long time() {\n        long ends = System.currentTimeMillis();\n        return ends - starts;\n    }\n\n    public long time(TimeUnit unit) {\n        return unit.convert(time(), TimeUnit.MILLISECONDS);\n    }\n}'
p2323
sg16
S'TimeWatch watch = TimeWatch.start();\nlong passedTimeInMs = watch.time();'
p2324
sg18
g3
((lp2325
g2275
atp2326
Rp2327
sa(dp2328
g2
g3
((lp2329
tp2330
Rp2331
sg7
I2564298
sg8
g3
((lp2332
VString[] errorSoon = {"Hello", "World"};\u000a
p2333
aVString[] errorSoon;                   // <--declared statement\u000aString[] errorSoon = new String[100]; // <--initialized statement\u000a
p2334
aVString[] errorSoon = new String[2];\u000aerrorSoon[0] = "Hello";\u000aerrorSoon[1] = "World";\u000a
p2335
atp2336
Rp2337
sg13
g14
sg15
Nsg16
S'String[] errorSoon = new String[100];'
p2338
sg18
g3
((lp2339
VJava: how to initialize String[]?
p2340
atp2341
Rp2342
sa(dp2343
g2
g3
((lp2344
tp2345
Rp2346
sg7
I2564298
sg8
g3
((lp2347
VString[] errorSoon = {"Hello", "World"};\u000a
p2348
aVString[] errorSoon;                   // <--declared statement\u000aString[] errorSoon = new String[100]; // <--initialized statement\u000a
p2349
aVString[] errorSoon = new String[2];\u000aerrorSoon[0] = "Hello";\u000aerrorSoon[1] = "World";\u000a
p2350
atp2351
Rp2352
sg13
g14
sg15
Nsg16
S'String[] errorSoon = { "Hello", "World" };'
p2353
sg18
g3
((lp2354
g2340
atp2355
Rp2356
sa(dp2357
g2
g3
((lp2358
tp2359
Rp2360
sg7
I2564298
sg8
g3
((lp2361
VString[] errorSoon = {"Hello", "World"};\u000a
p2362
aVString[] errorSoon;                   // <--declared statement\u000aString[] errorSoon = new String[100]; // <--initialized statement\u000a
p2363
aVString[] errorSoon = new String[2];\u000aerrorSoon[0] = "Hello";\u000aerrorSoon[1] = "World";\u000a
p2364
atp2365
Rp2366
sg13
g14
sg15
Nsg16
S'String[] errorSoon = new String[2];\nerrorSoon[0] = "Hello";\nerrorSoon[1] = "World";'
p2367
sg18
g3
((lp2368
g2340
atp2369
Rp2370
sa(dp2371
g2
g3
((lp2372
tp2373
Rp2374
sg7
I2564298
sg8
g3
((lp2375
VString[] args = new String[]{"firstarg", "secondarg", "thirdarg"};\u000a
p2376
atp2377
Rp2378
sg13
g14
sg15
Nsg16
S'String[] args = new String[] { "firstarg", "secondarg", "thirdarg" };'
p2379
sg18
g3
((lp2380
g2340
atp2381
Rp2382
sa(dp2383
g2
g3
((lp2384
tp2385
Rp2386
sg7
I2564298
sg8
g3
((lp2387
VString[] errorSoon = { "foo", "bar" };\u000a
p2388
aVString[] errorSoon = new String[2];\u000aerrorSoon[0] = "foo";\u000aerrorSoon[1] = "bar";\u000a
p2389
atp2390
Rp2391
sg13
g14
sg15
Nsg16
S'String[] errorSoon = { "foo", "bar" };'
p2392
sg18
g3
((lp2393
g2340
atp2394
Rp2395
sa(dp2396
g2
g3
((lp2397
tp2398
Rp2399
sg7
I2564298
sg8
g3
((lp2400
VString[] errorSoon = { "foo", "bar" };\u000a
p2401
aVString[] errorSoon = new String[2];\u000aerrorSoon[0] = "foo";\u000aerrorSoon[1] = "bar";\u000a
p2402
atp2403
Rp2404
sg13
g14
sg15
Nsg16
S'String[] errorSoon = new String[2];\nerrorSoon[0] = "foo";\nerrorSoon[1] = "bar";'
p2405
sg18
g3
((lp2406
g2340
atp2407
Rp2408
sa(dp2409
g2
g3
((lp2410
V @RequestMapping(method = RequestMethod.GET)   \u000a public ModelAndView showResults(final HttpServletRequest request, Principal principal) {\u000a\u000a     final String currentUser = principal.getName();\u000a\u000a }\u000a
p2411
atp2412
Rp2413
sg7
I248562
sg8
g3
((lp2414
V @RequestMapping(method = RequestMethod.GET)   \u000a public ModelAndView showResults(final HttpServletRequest request, Principal principal) {\u000a\u000a     final String currentUser = principal.getName();\u000a\u000a }\u000a
p2415
atp2416
Rp2417
sg13
g14
sg15
Nsg16
S'final String currentUser = principal.getName();'
p2418
sg18
g3
((lp2419
VWhen using Spring Security, what is the proper way to obtain current username (i.e. SecurityContext) information in a bean?
p2420
atp2421
Rp2422
sa(dp2423
g2
g3
((lp2424
Vpublic void testJackson() throws IOException {  \u000a    ObjectMapper mapper = new ObjectMapper(); \u000a    File from = new File("albumnList.txt"); \u000a    TypeReference<HashMap<String,Object>> typeRef \u000a            = new TypeReference<HashMap<String,Object>>() {};\u000a\u000a    HashMap<String,Object> o = mapper.readValue(from, typeRef); \u000a    System.out.println("Got " + o); \u000a}   \u000a
p2425
aVnew ByteArrayInputStream(astring.getBytes("UTF-8")); \u000a
p2426
atp2427
Rp2428
sg7
I2525042
sg8
g3
((lp2429
Vpublic void testJackson() throws IOException {  \u000a    ObjectMapper mapper = new ObjectMapper(); \u000a    File from = new File("albumnList.txt"); \u000a    TypeReference<HashMap<String,Object>> typeRef \u000a            = new TypeReference<HashMap<String,Object>>() {};\u000a\u000a    HashMap<String,Object> o = mapper.readValue(from, typeRef); \u000a    System.out.println("Got " + o); \u000a}   \u000a
p2430
aVnew ByteArrayInputStream(astring.getBytes("UTF-8")); \u000a
p2431
atp2432
Rp2433
sg13
g14
sg15
S'ObjectMapper mapper = new ObjectMapper();\nFile from = new File("albumnList.txt");\nTypeReference<HashMap<String, Object>> typeRef = new TypeReference<HashMap<String, Object>>() {\n};'
p2434
sg16
S'HashMap<String, Object> o = mapper.readValue(from, typeRef);'
p2435
sg18
g3
((lp2436
VHow to convert a JSON string to a Map<String, String> with Jackson JSON
p2437
atp2438
Rp2439
sa(dp2440
g2
g3
((lp2441
VMap<String, String> result = new ObjectMapper().readValue(\u000a    data, TypeFactory.mapType(HashMap.class, String.class, String.class));\u000a
p2442
aVMap<String, String> result;\u000aObjectMapper mapper;\u000aTypeFactory factory;\u000aMapType type;\u000a\u000afactory = TypeFactory.defaultInstance();\u000atype    = factory.constructMapType(HashMap.class, String.class, String.class);\u000amapper  = new ObjectMapper();\u000aresult  = mapper.readValue(data, type);\u000a
p2443
atp2444
Rp2445
sg7
I2525042
sg8
g3
((lp2446
VMap<String, String> result = new ObjectMapper().readValue(\u000a    data, TypeFactory.mapType(HashMap.class, String.class, String.class));\u000a
p2447
aVMap<String, String> result;\u000aObjectMapper mapper;\u000aTypeFactory factory;\u000aMapType type;\u000a\u000afactory = TypeFactory.defaultInstance();\u000atype    = factory.constructMapType(HashMap.class, String.class, String.class);\u000amapper  = new ObjectMapper();\u000aresult  = mapper.readValue(data, type);\u000a
p2448
atp2449
Rp2450
sg13
g14
sg15
S'Map<String, String> result;\nObjectMapper mapper;\nTypeFactory factory;\nMapType type;\nfactory = TypeFactory.defaultInstance();\ntype = factory.constructMapType(HashMap.class, String.class, String.class);\nmapper = new ObjectMapper();'
p2451
sg16
S'result = mapper.readValue(data, type);'
p2452
sg18
g3
((lp2453
g2437
atp2454
Rp2455
sa(dp2456
g2
g3
((lp2457
tp2458
Rp2459
sg7
I2525042
sg8
g3
((lp2460
VMap<String, String> result = new ObjectMapper().readValue(\u000a    data, TypeFactory.mapType(HashMap.class, String.class, String.class));\u000a
p2461
aVMap<String, String> result;\u000aObjectMapper mapper;\u000aTypeFactory factory;\u000aMapType type;\u000a\u000afactory = TypeFactory.defaultInstance();\u000atype    = factory.constructMapType(HashMap.class, String.class, String.class);\u000amapper  = new ObjectMapper();\u000aresult  = mapper.readValue(data, type);\u000a
p2462
atp2463
Rp2464
sg13
g14
sg15
Nsg16
S'Map<String, String> result = new ObjectMapper().readValue(data, TypeFactory.mapType(HashMap.class, String.class, String.class));'
p2465
sg18
g3
((lp2466
g2437
atp2467
Rp2468
sa(dp2469
g2
g3
((lp2470
VHashMap<String,Object> props;\u000a\u000a// src is a File, InputStream, String or such\u000aprops = new ObjectMapper().readValue(src, new TypeReference<HashMap<String,Object>>() {});\u000a// or:\u000aprops = (HashMap<String,Object>) new ObjectMapper().readValue(src, HashMap.class);\u000a// or even just:\u000a@SuppressWarnings("unchecked") // suppresses typed/untype mismatch warnings, which is harmless\u000aprops = new ObjectMapper().readValue(src, HashMap.class);\u000a
p2471
atp2472
Rp2473
sg7
I2525042
sg8
g3
((lp2474
VHashMap<String,Object> props;\u000a\u000a// src is a File, InputStream, String or such\u000aprops = new ObjectMapper().readValue(src, new TypeReference<HashMap<String,Object>>() {});\u000a// or:\u000aprops = (HashMap<String,Object>) new ObjectMapper().readValue(src, HashMap.class);\u000a// or even just:\u000a@SuppressWarnings("unchecked") // suppresses typed/untype mismatch warnings, which is harmless\u000aprops = new ObjectMapper().readValue(src, HashMap.class);\u000a
p2475
atp2476
Rp2477
sg13
g14
sg15
S'HashMap<String, Object> props;'
p2478
sg16
S'props = new ObjectMapper().readValue(src, new TypeReference<HashMap<String, Object>>() {\n});'
p2479
sg18
g3
((lp2480
g2437
atp2481
Rp2482
sa(dp2483
g2
g3
((lp2484
VHashMap<String,Object> props;\u000a\u000a// src is a File, InputStream, String or such\u000aprops = new ObjectMapper().readValue(src, new TypeReference<HashMap<String,Object>>() {});\u000a// or:\u000aprops = (HashMap<String,Object>) new ObjectMapper().readValue(src, HashMap.class);\u000a// or even just:\u000a@SuppressWarnings("unchecked") // suppresses typed/untype mismatch warnings, which is harmless\u000aprops = new ObjectMapper().readValue(src, HashMap.class);\u000a
p2485
atp2486
Rp2487
sg7
I2525042
sg8
g3
((lp2488
VHashMap<String,Object> props;\u000a\u000a// src is a File, InputStream, String or such\u000aprops = new ObjectMapper().readValue(src, new TypeReference<HashMap<String,Object>>() {});\u000a// or:\u000aprops = (HashMap<String,Object>) new ObjectMapper().readValue(src, HashMap.class);\u000a// or even just:\u000a@SuppressWarnings("unchecked") // suppresses typed/untype mismatch warnings, which is harmless\u000aprops = new ObjectMapper().readValue(src, HashMap.class);\u000a
p2489
atp2490
Rp2491
sg13
g14
sg15
S'HashMap<String, Object> props;'
p2492
sg16
S'props = (HashMap<String, Object>) new ObjectMapper().readValue(src, HashMap.class);'
p2493
sg18
g3
((lp2494
g2437
atp2495
Rp2496
sa(dp2497
g2
g3
((lp2498
VHashMap<String,Object> props;\u000a\u000a// src is a File, InputStream, String or such\u000aprops = new ObjectMapper().readValue(src, new TypeReference<HashMap<String,Object>>() {});\u000a// or:\u000aprops = (HashMap<String,Object>) new ObjectMapper().readValue(src, HashMap.class);\u000a// or even just:\u000a@SuppressWarnings("unchecked") // suppresses typed/untype mismatch warnings, which is harmless\u000aprops = new ObjectMapper().readValue(src, HashMap.class);\u000a
p2499
atp2500
Rp2501
sg7
I2525042
sg8
g3
((lp2502
VHashMap<String,Object> props;\u000a\u000a// src is a File, InputStream, String or such\u000aprops = new ObjectMapper().readValue(src, new TypeReference<HashMap<String,Object>>() {});\u000a// or:\u000aprops = (HashMap<String,Object>) new ObjectMapper().readValue(src, HashMap.class);\u000a// or even just:\u000a@SuppressWarnings("unchecked") // suppresses typed/untype mismatch warnings, which is harmless\u000aprops = new ObjectMapper().readValue(src, HashMap.class);\u000a
p2503
atp2504
Rp2505
sg13
g14
sg15
Nsg16
S'props = new ObjectMapper().readValue(src, HashMap.class);'
p2506
sg18
g3
((lp2507
g2437
atp2508
Rp2509
sa(dp2510
g2
g3
((lp2511
tp2512
Rp2513
sg7
I1383797
sg8
g3
((lp2514
Vpublic static <T, E> Set<T> getKeysByValue(Map<T, E> map, E value) {\u000a    return map.entrySet()\u000a              .stream()\u000a              .filter(entry -> Objects.equals(entry.getValue(), value))\u000a              .map(Map.Entry::getKey)\u000a              .collect(Collectors.toSet());\u000a}\u000a
p2515
aVBiMap<Token, Character> tokenToChar = \u000a    ImmutableBiMap.of(Token.LEFT_BRACKET, '[', Token.LEFT_PARENTHESIS, '(');\u000aToken token = tokenToChar.inverse().get('(');\u000aCharacter c = tokenToChar.get(token);\u000a
p2516
aVpublic static <T, E> Set<T> getKeysByValue(Map<T, E> map, E value) {\u000a    Set<T> keys = new HashSet<T>();\u000a    for (Entry<T, E> entry : map.entrySet()) {\u000a        if (Objects.equals(value, entry.getValue())) {\u000a            keys.add(entry.getKey());\u000a        }\u000a    }\u000a    return keys;\u000a}\u000a
p2517
aVpublic static <T, E> T getKeyByValue(Map<T, E> map, E value) {\u000a    for (Entry<T, E> entry : map.entrySet()) {\u000a        if (Objects.equals(value, entry.getValue())) {\u000a            return entry.getKey();\u000a        }\u000a    }\u000a    return null;\u000a}\u000a
p2518
atp2519
Rp2520
sg13
g14
sg15
Nsg16
S'Set<T> keys = new HashSet<T>();\nfor (Entry<T, E> entry : map.entrySet()) {\n    if (Objects.equals(value, entry.getValue())) {\n        keys.add(entry.getKey());\n    }\n}'
p2521
sg18
g3
((lp2522
VJava Hashmap: How to get key from value?
p2523
atp2524
Rp2525
sa(dp2526
g2
g3
((lp2527
tp2528
Rp2529
sg7
I1383797
sg8
g3
((lp2530
Vpublic static <T, E> Set<T> getKeysByValue(Map<T, E> map, E value) {\u000a    return map.entrySet()\u000a              .stream()\u000a              .filter(entry -> Objects.equals(entry.getValue(), value))\u000a              .map(Map.Entry::getKey)\u000a              .collect(Collectors.toSet());\u000a}\u000a
p2531
aVBiMap<Token, Character> tokenToChar = \u000a    ImmutableBiMap.of(Token.LEFT_BRACKET, '[', Token.LEFT_PARENTHESIS, '(');\u000aToken token = tokenToChar.inverse().get('(');\u000aCharacter c = tokenToChar.get(token);\u000a
p2532
aVpublic static <T, E> Set<T> getKeysByValue(Map<T, E> map, E value) {\u000a    Set<T> keys = new HashSet<T>();\u000a    for (Entry<T, E> entry : map.entrySet()) {\u000a        if (Objects.equals(value, entry.getValue())) {\u000a            keys.add(entry.getKey());\u000a        }\u000a    }\u000a    return keys;\u000a}\u000a
p2533
aVpublic static <T, E> T getKeyByValue(Map<T, E> map, E value) {\u000a    for (Entry<T, E> entry : map.entrySet()) {\u000a        if (Objects.equals(value, entry.getValue())) {\u000a            return entry.getKey();\u000a        }\u000a    }\u000a    return null;\u000a}\u000a
p2534
atp2535
Rp2536
sg13
g14
sg15
Nsg16
S'for (Entry<T, E> entry : map.entrySet()) {\n    if (Objects.equals(value, entry.getValue())) {\n        return entry.getKey();\n    }\n}'
p2537
sg18
g3
((lp2538
g2523
atp2539
Rp2540
sa(dp2541
g2
g3
((lp2542
tp2543
Rp2544
sg7
I1383797
sg8
g3
((lp2545
Vpublic static <T, E> Set<T> getKeysByValue(Map<T, E> map, E value) {\u000a    return map.entrySet()\u000a              .stream()\u000a              .filter(entry -> Objects.equals(entry.getValue(), value))\u000a              .map(Map.Entry::getKey)\u000a              .collect(Collectors.toSet());\u000a}\u000a
p2546
aVBiMap<Token, Character> tokenToChar = \u000a    ImmutableBiMap.of(Token.LEFT_BRACKET, '[', Token.LEFT_PARENTHESIS, '(');\u000aToken token = tokenToChar.inverse().get('(');\u000aCharacter c = tokenToChar.get(token);\u000a
p2547
aVpublic static <T, E> Set<T> getKeysByValue(Map<T, E> map, E value) {\u000a    Set<T> keys = new HashSet<T>();\u000a    for (Entry<T, E> entry : map.entrySet()) {\u000a        if (Objects.equals(value, entry.getValue())) {\u000a            keys.add(entry.getKey());\u000a        }\u000a    }\u000a    return keys;\u000a}\u000a
p2548
aVpublic static <T, E> T getKeyByValue(Map<T, E> map, E value) {\u000a    for (Entry<T, E> entry : map.entrySet()) {\u000a        if (Objects.equals(value, entry.getValue())) {\u000a            return entry.getKey();\u000a        }\u000a    }\u000a    return null;\u000a}\u000a
p2549
atp2550
Rp2551
sg13
g14
sg15
Nsg16
S'return map.entrySet().stream().filter(entry -> Objects.equals(entry.getValue(), value)).map(Map.Entry::getKey).collect(Collectors.toSet());'
p2552
sg18
g3
((lp2553
g2523
atp2554
Rp2555
sa(dp2556
g2
g3
((lp2557
Vpublic static <T, E> Set<T> getKeysByValue(Map<T, E> map, E value) {\u000a    return map.entrySet()\u000a              .stream()\u000a              .filter(entry -> Objects.equals(entry.getValue(), value))\u000a              .map(Map.Entry::getKey)\u000a              .collect(Collectors.toSet());\u000a}\u000a
p2558
aVBiMap<Token, Character> tokenToChar = \u000a    ImmutableBiMap.of(Token.LEFT_BRACKET, '[', Token.LEFT_PARENTHESIS, '(');\u000aToken token = tokenToChar.inverse().get('(');\u000aCharacter c = tokenToChar.get(token);\u000a
p2559
aVpublic static <T, E> Set<T> getKeysByValue(Map<T, E> map, E value) {\u000a    Set<T> keys = new HashSet<T>();\u000a    for (Entry<T, E> entry : map.entrySet()) {\u000a        if (Objects.equals(value, entry.getValue())) {\u000a            keys.add(entry.getKey());\u000a        }\u000a    }\u000a    return keys;\u000a}\u000a
p2560
aVpublic static <T, E> T getKeyByValue(Map<T, E> map, E value) {\u000a    for (Entry<T, E> entry : map.entrySet()) {\u000a        if (Objects.equals(value, entry.getValue())) {\u000a            return entry.getKey();\u000a        }\u000a    }\u000a    return null;\u000a}\u000a
p2561
atp2562
Rp2563
sg7
I1383797
sg8
g3
((lp2564
Vpublic static <T, E> Set<T> getKeysByValue(Map<T, E> map, E value) {\u000a    return map.entrySet()\u000a              .stream()\u000a              .filter(entry -> Objects.equals(entry.getValue(), value))\u000a              .map(Map.Entry::getKey)\u000a              .collect(Collectors.toSet());\u000a}\u000a
p2565
aVBiMap<Token, Character> tokenToChar = \u000a    ImmutableBiMap.of(Token.LEFT_BRACKET, '[', Token.LEFT_PARENTHESIS, '(');\u000aToken token = tokenToChar.inverse().get('(');\u000aCharacter c = tokenToChar.get(token);\u000a
p2566
aVpublic static <T, E> Set<T> getKeysByValue(Map<T, E> map, E value) {\u000a    Set<T> keys = new HashSet<T>();\u000a    for (Entry<T, E> entry : map.entrySet()) {\u000a        if (Objects.equals(value, entry.getValue())) {\u000a            keys.add(entry.getKey());\u000a        }\u000a    }\u000a    return keys;\u000a}\u000a
p2567
aVpublic static <T, E> T getKeyByValue(Map<T, E> map, E value) {\u000a    for (Entry<T, E> entry : map.entrySet()) {\u000a        if (Objects.equals(value, entry.getValue())) {\u000a            return entry.getKey();\u000a        }\u000a    }\u000a    return null;\u000a}\u000a
p2568
atp2569
Rp2570
sg13
g14
sg15
S"BiMap<Token, Character> tokenToChar = ImmutableBiMap.of(Token.LEFT_BRACKET, '[', Token.LEFT_PARENTHESIS, '(');"
p2571
sg16
S"Token token = tokenToChar.inverse().get('(');"
p2572
sg18
g3
((lp2573
g2523
atp2574
Rp2575
sa(dp2576
g2
g3
((lp2577
V1. Key to value\u000a\u000a2. Value to key \u000a
p2578
aVpublic class NewClass1 {\u000a\u000a    public static void main(String[] args) {\u000a       Map<Integer, String> testMap = new HashMap<Integer, String>();\u000a        testMap.put(10, "a");\u000a        testMap.put(20, "b");\u000a        testMap.put(30, "c");\u000a        testMap.put(40, "d");\u000a        for (Entry<Integer, String> entry : testMap.entrySet()) {\u000a            if (entry.getValue().equals("c")) {\u000a                System.out.println(entry.getKey());\u000a            }\u000a        }\u000a    }\u000a}\u000a
p2579
atp2580
Rp2581
sg7
I1383797
sg8
g3
((lp2582
V1. Key to value\u000a\u000a2. Value to key \u000a
p2583
aVpublic class NewClass1 {\u000a\u000a    public static void main(String[] args) {\u000a       Map<Integer, String> testMap = new HashMap<Integer, String>();\u000a        testMap.put(10, "a");\u000a        testMap.put(20, "b");\u000a        testMap.put(30, "c");\u000a        testMap.put(40, "d");\u000a        for (Entry<Integer, String> entry : testMap.entrySet()) {\u000a            if (entry.getValue().equals("c")) {\u000a                System.out.println(entry.getKey());\u000a            }\u000a        }\u000a    }\u000a}\u000a
p2584
atp2585
Rp2586
sg13
g14
sg15
S'Map<Integer, String> testMap = new HashMap<Integer, String>();\ntestMap.put(10, "a");\ntestMap.put(20, "b");\ntestMap.put(30, "c");\ntestMap.put(40, "d");'
p2587
sg16
S'for (Entry<Integer, String> entry : testMap.entrySet()) {\n    if (entry.getValue().equals("c")) {\n        System.out.println(entry.getKey());\n    }\n}'
p2588
sg18
g3
((lp2589
g2523
atp2590
Rp2591
sa(dp2592
g2
g3
((lp2593
VMap<String, String> map = ...;  // wherever you get this from\u000a\u000a// Get the first entry that the iterator returns\u000aMap.Entry<String, String> entry = map.entrySet().iterator().next();\u000a
p2594
aVSystem.out.println("Key: "+entry.getKey()+", Value: "+entry.getValue());\u000a
p2595
atp2596
Rp2597
sg7
I1509391
sg8
g3
((lp2598
VMap<String, String> map = ...;  // wherever you get this from\u000a\u000a// Get the first entry that the iterator returns\u000aMap.Entry<String, String> entry = map.entrySet().iterator().next();\u000a
p2599
aVSystem.out.println("Key: "+entry.getKey()+", Value: "+entry.getValue());\u000a
p2600
atp2601
Rp2602
sg13
g14
sg15
Nsg16
S'Map.Entry<String, String> entry = map.entrySet().iterator().next();'
p2603
sg18
g3
((lp2604
Vhow to get the one entry from hashmap without iterating
p2605
atp2606
Rp2607
sa(dp2608
g2
g3
((lp2609
tp2610
Rp2611
sg7
I1509391
sg8
g3
((lp2612
VhashMapObject.get(zeroth_index);\u000a
p2613
aVfor(Map.Entry<String, String> entry : MapObj.entrySet()) {\u000a    return entry;\u000a}\u000a
p2614
atp2615
Rp2616
sg13
g14
sg15
Nsg16
S'for (Map.Entry<String, String> entry : MapObj.entrySet()) {\n    return entry;\n}'
p2617
sg18
g3
((lp2618
g2605
atp2619
Rp2620
sa(dp2621
g2
g3
((lp2622
VTreeMap<String, String> myMap = new TreeMap<String, String>();\u000aString first = myMap.firstEntry().getValue();\u000aString firstOther = myMap.get(myMap.firstKey());\u000a
p2623
atp2624
Rp2625
sg7
I1509391
sg8
g3
((lp2626
VTreeMap<String, String> myMap = new TreeMap<String, String>();\u000aString first = myMap.firstEntry().getValue();\u000aString firstOther = myMap.get(myMap.firstKey());\u000a
p2627
atp2628
Rp2629
sg13
g14
sg15
S'TreeMap<String, String> myMap = new TreeMap<String, String>();'
p2630
sg16
S'String first = myMap.firstEntry().getValue();'
p2631
sg18
g3
((lp2632
g2605
atp2633
Rp2634
sa(dp2635
g2
g3
((lp2636
VTreeMap<String, String> myMap = new TreeMap<String, String>();\u000aString first = myMap.firstEntry().getValue();\u000aString firstOther = myMap.get(myMap.firstKey());\u000a
p2637
atp2638
Rp2639
sg7
I1509391
sg8
g3
((lp2640
VTreeMap<String, String> myMap = new TreeMap<String, String>();\u000aString first = myMap.firstEntry().getValue();\u000aString firstOther = myMap.get(myMap.firstKey());\u000a
p2641
atp2642
Rp2643
sg13
g14
sg15
S'TreeMap<String, String> myMap = new TreeMap<String, String>();'
p2644
sg16
S'String firstOther = myMap.get(myMap.firstKey());'
p2645
sg18
g3
((lp2646
g2605
atp2647
Rp2648
sa(dp2649
g2
g3
((lp2650
tp2651
Rp2652
sg7
I1509391
sg8
g3
((lp2653
Vreturn new ArrayList(hashMapObject.entrySet()).get(0);\u000a
p2654
aVreturn hashMapObject.entrySet().toArray()[0];\u000a
p2655
aVreturn hashMapObject.entrySet().iterator().next();\u000a
p2656
atp2657
Rp2658
sg13
g14
sg15
Nsg16
S'return hashMapObject.entrySet().iterator().next();'
p2659
sg18
g3
((lp2660
g2605
atp2661
Rp2662
sa(dp2663
g2
g3
((lp2664
tp2665
Rp2666
sg7
I1509391
sg8
g3
((lp2667
Vreturn new ArrayList(hashMapObject.entrySet()).get(0);\u000a
p2668
aVreturn hashMapObject.entrySet().toArray()[0];\u000a
p2669
aVreturn hashMapObject.entrySet().iterator().next();\u000a
p2670
atp2671
Rp2672
sg13
g14
sg15
Nsg16
S'return new ArrayList(hashMapObject.entrySet()).get(0);'
p2673
sg18
g3
((lp2674
g2605
atp2675
Rp2676
sa(dp2677
g2
g3
((lp2678
tp2679
Rp2680
sg7
I1509391
sg8
g3
((lp2681
Vreturn new ArrayList(hashMapObject.entrySet()).get(0);\u000a
p2682
aVreturn hashMapObject.entrySet().toArray()[0];\u000a
p2683
aVreturn hashMapObject.entrySet().iterator().next();\u000a
p2684
atp2685
Rp2686
sg13
g14
sg15
Nsg16
S'return hashMapObject.entrySet().toArray()[0];'
p2687
sg18
g3
((lp2688
g2605
atp2689
Rp2690
sa(dp2691
g2
g3
((lp2692
tp2693
Rp2694
sg7
I5283444
sg8
g3
((lp2695
VStringBuilder builder = new StringBuilder();\u000afor(String s : arr) {\u000a    builder.append(s);\u000a}\u000aString str = builder.toString();\u000a
p2696
aVString str = String.join(",", arr);\u000a
p2697
aVString str = Arrays.toString(arr);\u000a
p2698
atp2699
Rp2700
sg13
VConvert array of strings into a string in Java
p2701
sg15
Nsg16
S'String str = Arrays.toString(arr);'
p2702
sg18
g3
((lp2703
VConvert array of strings into a string in Java
p2704
atp2705
Rp2706
sa(dp2707
g2
g3
((lp2708
tp2709
Rp2710
sg7
I5283444
sg8
g3
((lp2711
VStringBuilder builder = new StringBuilder();\u000afor(String s : arr) {\u000a    builder.append(s);\u000a}\u000aString str = builder.toString();\u000a
p2712
aVString str = String.join(",", arr);\u000a
p2713
aVString str = Arrays.toString(arr);\u000a
p2714
atp2715
Rp2716
sg13
VConvert array of strings into a string in Java
p2717
sg15
Nsg16
S'StringBuilder builder = new StringBuilder();\nfor (String s : arr) {\n    builder.append(s);\n}\nString str = builder.toString();'
p2718
sg18
g3
((lp2719
g2704
atp2720
Rp2721
sa(dp2722
g2
g3
((lp2723
tp2724
Rp2725
sg7
I5283444
sg8
g3
((lp2726
VStringBuilder builder = new StringBuilder();\u000afor(String s : arr) {\u000a    builder.append(s);\u000a}\u000aString str = builder.toString();\u000a
p2727
aVString str = String.join(",", arr);\u000a
p2728
aVString str = Arrays.toString(arr);\u000a
p2729
atp2730
Rp2731
sg13
VConvert array of strings into a string in Java
p2732
sg15
Nsg16
S'String str = String.join(",", arr);'
p2733
sg18
g3
((lp2734
g2704
atp2735
Rp2736
sa(dp2737
g2
g3
((lp2738
tp2739
Rp2740
sg7
I5283444
sg8
g3
((lp2741
VString joinedString = StringUtils.join(new Object[]{"a", "b", 1}, "-");\u000aSystem.out.println(joinedString);\u000a
p2742
aVa-b-1\u000a
p2743
atp2744
Rp2745
sg13
VConvert array of strings into a string in Java
p2746
sg15
Nsg16
S'String joinedString = StringUtils.join(new Object[] { "a", "b", 1 }, "-");'
p2747
sg18
g3
((lp2748
g2704
atp2749
Rp2750
sa(dp2751
g2
g3
((lp2752
tp2753
Rp2754
sg7
I5283444
sg8
g3
((lp2755
Vnew String("Harry, Ron, Hermione");\u000a
p2756
aVJoiner.on(", ").skipNulls().join("Harry", null, "Ron", "Hermione");\u000a
p2757
aVString.join(", ", "Harry", "Ron", "Hermione");\u000a
p2758
atp2759
Rp2760
sg13
VConvert array of strings into a string in Java
p2761
sg15
Nsg16
S'Joiner.on(", ").skipNulls().join("Harry", null, "Ron", "Hermione");'
p2762
sg18
g3
((lp2763
g2704
atp2764
Rp2765
sa(dp2766
g2
g3
((lp2767
tp2768
Rp2769
sg7
I5283444
sg8
g3
((lp2770
Vnew String("Harry, Ron, Hermione");\u000a
p2771
aVJoiner.on(", ").skipNulls().join("Harry", null, "Ron", "Hermione");\u000a
p2772
aVString.join(", ", "Harry", "Ron", "Hermione");\u000a
p2773
atp2774
Rp2775
sg13
VConvert array of strings into a string in Java
p2776
sg15
Nsg16
S'String.join(", ", "Harry", "Ron", "Hermione");'
p2777
sg18
g3
((lp2778
g2704
atp2779
Rp2780
sa(dp2781
g2
g3
((lp2782
VString url = "jdbc:mysql://localhost:3306/javabase";\u000aString username = "java";\u000aString password = "password";\u000a\u000aSystem.out.println("Connecting database...");\u000a\u000atry (Connection connection = DriverManager.getConnection(url, username, password)) {\u000a    System.out.println("Database connected!");\u000a} catch (SQLException e) {\u000a    throw new IllegalStateException("Cannot connect the database!", e);\u000a}\u000a
p2783
aVCREATE DATABASE javabase DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;\u000a
p2784
aVSystem.out.println("Loading driver...");\u000a\u000atry {\u000a    Class.forName("com.mysql.jdbc.Driver");\u000a    System.out.println("Driver loaded!");\u000a} catch (ClassNotFoundException e) {\u000a    throw new IllegalStateException("Cannot find the driver in the classpath!", e);\u000a}\u000a
p2785
aVCREATE USER 'java'@'localhost' IDENTIFIED BY 'password';\u000aGRANT ALL ON javabase.* TO 'java'@'localhost' IDENTIFIED BY 'password';\u000a
p2786
atp2787
Rp2788
sg7
I2839321
sg8
g3
((lp2789
VString url = "jdbc:mysql://localhost:3306/javabase";\u000aString username = "java";\u000aString password = "password";\u000a\u000aSystem.out.println("Connecting database...");\u000a\u000atry (Connection connection = DriverManager.getConnection(url, username, password)) {\u000a    System.out.println("Database connected!");\u000a} catch (SQLException e) {\u000a    throw new IllegalStateException("Cannot connect the database!", e);\u000a}\u000a
p2790
aVCREATE DATABASE javabase DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;\u000a
p2791
aVSystem.out.println("Loading driver...");\u000a\u000atry {\u000a    Class.forName("com.mysql.jdbc.Driver");\u000a    System.out.println("Driver loaded!");\u000a} catch (ClassNotFoundException e) {\u000a    throw new IllegalStateException("Cannot find the driver in the classpath!", e);\u000a}\u000a
p2792
aVCREATE USER 'java'@'localhost' IDENTIFIED BY 'password';\u000aGRANT ALL ON javabase.* TO 'java'@'localhost' IDENTIFIED BY 'password';\u000a
p2793
atp2794
Rp2795
sg13
VConnect Java to a MySQL database
p2796
sg15
S'String url = "jdbc:mysql://localhost:3306/javabase";\nString username = "java";\nString password = "password";'
p2797
sg16
S'try (Connection connection = DriverManager.getConnection(url, username, password)) {\n    System.out.println("Database connected!");\n} catch (SQLException e) {\n    throw new IllegalStateException("Cannot connect the database!", e);\n}'
p2798
sg18
g3
((lp2799
VConnect Java to a MySQL database
p2800
atp2801
Rp2802
sa(dp2803
g2
g3
((lp2804
VMysqlDataSource dataSource = new MysqlDataSource();\u000adataSource.setUser("scott");\u000adataSource.setPassword("tiger");\u000adataSource.setServerName("myDBHost.example.org");\u000a
p2805
aVContext context = new InitialContext();\u000aDataSource dataSource = (DataSource) context.lookup("java:comp/env/jdbc/myDB");\u000a
p2806
aVConnection conn = dataSource.getConnection();\u000aStatement stmt = conn.createStatement();\u000aResultSet rs = stmt.executeQuery("SELECT ID FROM USERS");\u000a...\u000ars.close();\u000astmt.close();\u000aconn.close();\u000a
p2807
atp2808
Rp2809
sg7
I2839321
sg8
g3
((lp2810
VMysqlDataSource dataSource = new MysqlDataSource();\u000adataSource.setUser("scott");\u000adataSource.setPassword("tiger");\u000adataSource.setServerName("myDBHost.example.org");\u000a
p2811
aVContext context = new InitialContext();\u000aDataSource dataSource = (DataSource) context.lookup("java:comp/env/jdbc/myDB");\u000a
p2812
aVConnection conn = dataSource.getConnection();\u000aStatement stmt = conn.createStatement();\u000aResultSet rs = stmt.executeQuery("SELECT ID FROM USERS");\u000a...\u000ars.close();\u000astmt.close();\u000aconn.close();\u000a
p2813
atp2814
Rp2815
sg13
VConnect Java to a MySQL database
p2816
sg15
S'Context context = new InitialContext();\nDataSource dataSource = (DataSource) context.lookup("java:comp/env/jdbc/myDB");'
p2817
sg16
S'Connection conn = dataSource.getConnection();'
p2818
sg18
g3
((lp2819
g2800
atp2820
Rp2821
sa(dp2822
g2
g3
((lp2823
VMysqlDataSource dataSource = new MysqlDataSource();\u000adataSource.setUser("scott");\u000adataSource.setPassword("tiger");\u000adataSource.setServerName("myDBHost.example.org");\u000a
p2824
aVContext context = new InitialContext();\u000aDataSource dataSource = (DataSource) context.lookup("java:comp/env/jdbc/myDB");\u000a
p2825
aVConnection conn = dataSource.getConnection();\u000aStatement stmt = conn.createStatement();\u000aResultSet rs = stmt.executeQuery("SELECT ID FROM USERS");\u000a...\u000ars.close();\u000astmt.close();\u000aconn.close();\u000a
p2826
atp2827
Rp2828
sg7
I2839321
sg8
g3
((lp2829
VMysqlDataSource dataSource = new MysqlDataSource();\u000adataSource.setUser("scott");\u000adataSource.setPassword("tiger");\u000adataSource.setServerName("myDBHost.example.org");\u000a
p2830
aVContext context = new InitialContext();\u000aDataSource dataSource = (DataSource) context.lookup("java:comp/env/jdbc/myDB");\u000a
p2831
aVConnection conn = dataSource.getConnection();\u000aStatement stmt = conn.createStatement();\u000aResultSet rs = stmt.executeQuery("SELECT ID FROM USERS");\u000a...\u000ars.close();\u000astmt.close();\u000aconn.close();\u000a
p2832
atp2833
Rp2834
sg13
VConnect Java to a MySQL database
p2835
sg15
S'MysqlDataSource dataSource = new MysqlDataSource();\ndataSource.setUser("scott");\ndataSource.setPassword("tiger");\ndataSource.setServerName("myDBHost.example.org");'
p2836
sg16
S'Connection conn = dataSource.getConnection();'
p2837
sg18
g3
((lp2838
g2800
atp2839
Rp2840
sa(dp2841
g2
g3
((lp2842
V// connect database\u000apublic Connection connect() {\u000a    if (connection == null) {\u000a        try {\u000a            Class.forName(DATABASE_DRIVER);\u000a            connection = DriverManager.getConnection(DATABASE_URL, getProperties());\u000a        } catch (ClassNotFoundException | SQLException e) {\u000a            // Java 7+\u000a            e.printStackTrace();\u000a        }\u000a    }\u000a    return connection;\u000a}\u000a
p2843
aVimport java.sql.Connection;\u000aimport java.sql.DriverManager;\u000aimport java.sql.SQLException;\u000aimport java.util.Properties;\u000a\u000apublic class MysqlConnect {\u000a    // init database constants\u000a    private static final String DATABASE_DRIVER = "com.mysql.jdbc.Driver";\u000a    private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/database_name";\u000a    private static final String USERNAME = "root";\u000a    private static final String PASSWORD = "";\u000a    private static final String MAX_POOL = "250";\u000a\u000a    // init connection object\u000a    private Connection connection;\u000a    // init properties object\u000a    private Properties properties;\u000a\u000a    // create properties\u000a    private Properties getProperties() {\u000a        if (properties == null) {\u000a            properties = new Properties();\u000a            properties.setProperty("user", USERNAME);\u000a            properties.setProperty("password", PASSWORD);\u000a            properties.setProperty("MaxPooledStatements", MAX_POOL);\u000a        }\u000a        return properties;\u000a    }\u000a\u000a    // connect database\u000a    public Connection connect() {\u000a        if (connection == null) {\u000a            try {\u000a                Class.forName(DATABASE_DRIVER);\u000a                connection = DriverManager.getConnection(DATABASE_URL, getProperties());\u000a            } catch (ClassNotFoundException | SQLException e) {\u000a                e.printStackTrace();\u000a            }\u000a        }\u000a        return connection;\u000a    }\u000a\u000a    // disconnect database\u000a    public void disconnect() {\u000a        if (connection != null) {\u000a            try {\u000a                connection.close();\u000a                connection = null;\u000a            } catch (SQLException e) {\u000a                e.printStackTrace();\u000a            }\u000a        }\u000a    }\u000a}\u000a
p2844
aV// init connection object\u000aprivate Connection connection;\u000a// init properties object\u000aprivate Properties properties;\u000a
p2845
aV// init database constants\u000aprivate static final String DATABASE_DRIVER = "com.mysql.jdbc.Driver";\u000aprivate static final String DATABASE_URL = "jdbc:mysql://localhost:3306/database_name";\u000aprivate static final String USERNAME = "root";\u000aprivate static final String PASSWORD = "";\u000aprivate static final String MAX_POOL = "250"; // set your own limit\u000a
p2846
aV// !_ note _! this is just init\u000a// it will not create a connection\u000aMysqlConnect mysqlConnect = new MysqlConnect();\u000a
p2847
aVString sql = "SELECT * FROM `stackoverflow`";\u000atry {\u000a    PreparedStatement statement = mysqlConnect.connect().prepareStatement(sql);\u000a    ... go on ...\u000a    ... go on ...\u000a    ... DONE ....\u000a} catch (SQLException e) {\u000a    e.printStackTrace();\u000a} finally {\u000a    mysqlConnect.disconnect();\u000a}\u000a
p2848
aV// create properties\u000aprivate Properties getProperties() {\u000a    if (properties == null) {\u000a        properties = new Properties();\u000a        properties.setProperty("user", USERNAME);\u000a        properties.setProperty("password", PASSWORD);\u000a        properties.setProperty("MaxPooledStatements", MAX_POOL);\u000a    }\u000a    return properties;\u000a}\u000a
p2849
aV// disconnect database\u000apublic void disconnect() {\u000a    if (connection != null) {\u000a        try {\u000a            connection.close();\u000a            connection = null;\u000a        } catch (SQLException e) {\u000a            e.printStackTrace();\u000a        }\u000a    }\u000a}\u000a
p2850
atp2851
Rp2852
sg7
I2839321
sg8
g3
((lp2853
V// connect database\u000apublic Connection connect() {\u000a    if (connection == null) {\u000a        try {\u000a            Class.forName(DATABASE_DRIVER);\u000a            connection = DriverManager.getConnection(DATABASE_URL, getProperties());\u000a        } catch (ClassNotFoundException | SQLException e) {\u000a            // Java 7+\u000a            e.printStackTrace();\u000a        }\u000a    }\u000a    return connection;\u000a}\u000a
p2854
aVimport java.sql.Connection;\u000aimport java.sql.DriverManager;\u000aimport java.sql.SQLException;\u000aimport java.util.Properties;\u000a\u000apublic class MysqlConnect {\u000a    // init database constants\u000a    private static final String DATABASE_DRIVER = "com.mysql.jdbc.Driver";\u000a    private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/database_name";\u000a    private static final String USERNAME = "root";\u000a    private static final String PASSWORD = "";\u000a    private static final String MAX_POOL = "250";\u000a\u000a    // init connection object\u000a    private Connection connection;\u000a    // init properties object\u000a    private Properties properties;\u000a\u000a    // create properties\u000a    private Properties getProperties() {\u000a        if (properties == null) {\u000a            properties = new Properties();\u000a            properties.setProperty("user", USERNAME);\u000a            properties.setProperty("password", PASSWORD);\u000a            properties.setProperty("MaxPooledStatements", MAX_POOL);\u000a        }\u000a        return properties;\u000a    }\u000a\u000a    // connect database\u000a    public Connection connect() {\u000a        if (connection == null) {\u000a            try {\u000a                Class.forName(DATABASE_DRIVER);\u000a                connection = DriverManager.getConnection(DATABASE_URL, getProperties());\u000a            } catch (ClassNotFoundException | SQLException e) {\u000a                e.printStackTrace();\u000a            }\u000a        }\u000a        return connection;\u000a    }\u000a\u000a    // disconnect database\u000a    public void disconnect() {\u000a        if (connection != null) {\u000a            try {\u000a                connection.close();\u000a                connection = null;\u000a            } catch (SQLException e) {\u000a                e.printStackTrace();\u000a            }\u000a        }\u000a    }\u000a}\u000a
p2855
aV// init connection object\u000aprivate Connection connection;\u000a// init properties object\u000aprivate Properties properties;\u000a
p2856
aV// init database constants\u000aprivate static final String DATABASE_DRIVER = "com.mysql.jdbc.Driver";\u000aprivate static final String DATABASE_URL = "jdbc:mysql://localhost:3306/database_name";\u000aprivate static final String USERNAME = "root";\u000aprivate static final String PASSWORD = "";\u000aprivate static final String MAX_POOL = "250"; // set your own limit\u000a
p2857
aV// !_ note _! this is just init\u000a// it will not create a connection\u000aMysqlConnect mysqlConnect = new MysqlConnect();\u000a
p2858
aVString sql = "SELECT * FROM `stackoverflow`";\u000atry {\u000a    PreparedStatement statement = mysqlConnect.connect().prepareStatement(sql);\u000a    ... go on ...\u000a    ... go on ...\u000a    ... DONE ....\u000a} catch (SQLException e) {\u000a    e.printStackTrace();\u000a} finally {\u000a    mysqlConnect.disconnect();\u000a}\u000a
p2859
aV// create properties\u000aprivate Properties getProperties() {\u000a    if (properties == null) {\u000a        properties = new Properties();\u000a        properties.setProperty("user", USERNAME);\u000a        properties.setProperty("password", PASSWORD);\u000a        properties.setProperty("MaxPooledStatements", MAX_POOL);\u000a    }\u000a    return properties;\u000a}\u000a
p2860
aV// disconnect database\u000apublic void disconnect() {\u000a    if (connection != null) {\u000a        try {\u000a            connection.close();\u000a            connection = null;\u000a        } catch (SQLException e) {\u000a            e.printStackTrace();\u000a        }\u000a    }\u000a}\u000a
p2861
atp2862
Rp2863
sg13
VConnect Java to a MySQL database
p2864
sg15
S'private static final String DATABASE_DRIVER = "com.mysql.jdbc.Driver";\nprivate static final String DATABASE_URL = "jdbc:mysql://localhost:3306/database_name";\nprivate static final String USERNAME = "root";\nprivate static final String PASSWORD = "";\nprivate static final String MAX_POOL = "250";\nprivate Connection connection;\nprivate Properties properties;\nprivate Properties getProperties() {\n    if (properties == null) {\n        properties = new Properties();\n        properties.setProperty("user", USERNAME);\n        properties.setProperty("password", PASSWORD);\n        properties.setProperty("MaxPooledStatements", MAX_POOL);\n    }\n    return properties;\n}'
p2865
sg16
S'Class.forName(DATABASE_DRIVER);\nconnection = DriverManager.getConnection(DATABASE_URL, getProperties());'
p2866
sg18
g3
((lp2867
g2800
atp2868
Rp2869
sa(dp2870
g2
g3
((lp2871
tp2872
Rp2873
sg7
I332079
sg8
g3
((lp2874
V  String hexString = new String(Hex.encodeHex(messageDigest));\u000a
p2875
atp2876
Rp2877
sg13
g14
sg15
Nsg16
S'String hexString = new String(Hex.encodeHex(messageDigest));'
p2878
sg18
g3
((lp2879
VIn Java, how do I convert a byte array to a string of hex digits while keeping leading zeros?
p2880
atp2881
Rp2882
sa(dp2883
g2
g3
((lp2884
tp2885
Rp2886
sg7
I332079
sg8
g3
((lp2887
Vpublic static String toHex(byte[] bytes) {\u000a    BigInteger bi = new BigInteger(1, bytes);\u000a    return String.format("%0" + (bytes.length << 1) + "X", bi);\u000a}\u000a
p2888
atp2889
Rp2890
sg13
g14
sg15
Nsg16
S'BigInteger bi = new BigInteger(1, bytes);'
p2891
sg18
g3
((lp2892
g2880
atp2893
Rp2894
sa(dp2895
g2
g3
((lp2896
tp2897
Rp2898
sg7
I332079
sg8
g3
((lp2899
Vpublic static String toHexString(byte[] bytes) {\u000a    StringBuilder hexString = new StringBuilder();\u000a\u000a    for (int i = 0; i < bytes.length; i++) {\u000a        String hex = Integer.toHexString(0xFF & bytes[i]);\u000a        if (hex.length() == 1) {\u000a            hexString.append('0');\u000a        }\u000a        hexString.append(hex);\u000a    }\u000a\u000a    return hexString.toString();\u000a}\u000a
p2900
atp2901
Rp2902
sg13
g14
sg15
Nsg16
S"StringBuilder hexString = new StringBuilder();\nfor (int i = 0; i < bytes.length; i++) {\n    String hex = Integer.toHexString(0xFF & bytes[i]);\n    if (hex.length() == 1) {\n        hexString.append('0');\n    }\n    hexString.append(hex);\n}"
p2903
sg18
g3
((lp2904
g2880
atp2905
Rp2906
sa(dp2907
g2
g3
((lp2908
tp2909
Rp2910
sg7
I7438612
sg8
g3
((lp2911
Vpublic String method(String str) {\u000a    if (str != null && str.length() > 0 && str.charAt(str.length() - 1) == 'x') {\u000a        str = str.substring(0, str.length() - 1);\u000a    }\u000a    return str;\u000a}\u000a
p2912
atp2913
Rp2914
sg13
g14
sg15
Nsg16
S"if (str != null && str.length() > 0 && str.charAt(str.length() - 1) == 'x') {\n    str = str.substring(0, str.length() - 1);\n}"
p2915
sg18
g3
((lp2916
VHow to remove the last character from a string?
p2917
atp2918
Rp2919
sa(dp2920
g2
g3
((lp2921
tp2922
Rp2923
sg7
I7438612
sg8
g3
((lp2924
Vimport java.util.*;\u000aimport java.lang.*;\u000a\u000apublic class Main {\u000a    public static void main (String[] args) throws java.lang.Exception {\u000a        String s1 = "Remove Last CharacterY";\u000a        String s2 = "Remove Last Character2";\u000a        System.out.println("After removing s1==" + removeLastChar(s1) + "==");\u000a        System.out.println("After removing s2==" + removeLastChar(s2) + "==");\u000a\u000a    }\u000a\u000a    private static String removeLastChar(String str) {\u000a        return str.substring(0, str.length() - 1);\u000a    }\u000a}\u000a
p2925
aVprivate static String removeLastChar(String str) {\u000a    return str.substring(0, str.length() - 1);\u000a}\u000a
p2926
atp2927
Rp2928
sg13
g14
sg15
Nsg16
S'return str.substring(0, str.length() - 1);'
p2929
sg18
g3
((lp2930
g2917
atp2931
Rp2932
sa(dp2933
g2
g3
((lp2934
Vimport java.util.*;\u000aimport java.lang.*;\u000a\u000apublic class Main {\u000a    public static void main (String[] args) throws java.lang.Exception {\u000a        String s1 = "Remove Last CharacterY";\u000a        String s2 = "Remove Last Character2";\u000a        System.out.println("After removing s1==" + removeLastChar(s1) + "==");\u000a        System.out.println("After removing s2==" + removeLastChar(s2) + "==");\u000a\u000a    }\u000a\u000a    private static String removeLastChar(String str) {\u000a        return str.substring(0, str.length() - 1);\u000a    }\u000a}\u000a
p2935
aVprivate static String removeLastChar(String str) {\u000a    return str.substring(0, str.length() - 1);\u000a}\u000a
p2936
atp2937
Rp2938
sg7
I7438612
sg8
g3
((lp2939
Vimport java.util.*;\u000aimport java.lang.*;\u000a\u000apublic class Main {\u000a    public static void main (String[] args) throws java.lang.Exception {\u000a        String s1 = "Remove Last CharacterY";\u000a        String s2 = "Remove Last Character2";\u000a        System.out.println("After removing s1==" + removeLastChar(s1) + "==");\u000a        System.out.println("After removing s2==" + removeLastChar(s2) + "==");\u000a\u000a    }\u000a\u000a    private static String removeLastChar(String str) {\u000a        return str.substring(0, str.length() - 1);\u000a    }\u000a}\u000a
p2940
aVprivate static String removeLastChar(String str) {\u000a    return str.substring(0, str.length() - 1);\u000a}\u000a
p2941
atp2942
Rp2943
sg13
g14
sg15
Nsg16
S'return str.substring(0, str.length() - 1);'
p2944
sg18
g3
((lp2945
g2917
atp2946
Rp2947
sa(dp2948
g2
g3
((lp2949
tp2950
Rp2951
sg7
I7438612
sg8
g3
((lp2952
V"aaabcd".replaceFirst(".$",""); //=> aaabc  \u000a
p2953
atp2954
Rp2955
sg13
g14
sg15
Nsg16
S'"aaabcd".replaceFirst(".$", "");'
p2956
sg18
g3
((lp2957
g2917
atp2958
Rp2959
sa(dp2960
g2
g3
((lp2961
tp2962
Rp2963
sg7
I2137755
sg8
g3
((lp2964
Vfor(int i = 0; i < validData.length / 2; i++)\u000a{\u000a    int temp = validData[i];\u000a    validData[i] = validData[validData.length - i - 1];\u000a    validData[validData.length - i - 1] = temp;\u000a}\u000a
p2965
atp2966
Rp2967
sg13
g14
sg15
Nsg16
S'for (int i = 0; i < validData.length / 2; i++) {\n    int temp = validData[i];\n    validData[i] = validData[validData.length - i - 1];\n    validData[validData.length - i - 1] = temp;\n}'
p2968
sg18
g3
((lp2969
VHow do I reverse an int array in Java?
p2970
atp2971
Rp2972
sa(dp2973
g2
g3
((lp2974
tp2975
Rp2976
sg7
I2137755
sg8
g3
((lp2977
Vpublic class ArrayHandle {\u000a    public static Object[] reverse(Object[] arr) {\u000a        List<Object> list = Arrays.asList(arr);\u000a        Collections.reverse(list);\u000a        return list.toArray();\u000a    }\u000a}\u000a
p2978
atp2979
Rp2980
sg13
g14
sg15
Nsg16
S'List<Object> list = Arrays.asList(arr);\nCollections.reverse(list);'
p2981
sg18
g3
((lp2982
g2970
atp2983
Rp2984
sa(dp2985
g2
g3
((lp2986
VList<Fruit> fruits= new ArrayList<Fruit>();\u000a\u000aFruit fruit;\u000afor(int i = 0; i < 100; i++)\u000a{\u000a  fruit = new Fruit();\u000a  fruit.setname(...);\u000a  fruits.add(fruit);\u000a}\u000a\u000a// Sorting\u000aCollections.sort(fruits, new Comparator<Fruit>() {\u000a        @Override\u000a        public int compare(Fruit fruit2, Fruit fruit1)\u000a        {\u000a\u000a            return  fruit1.fruitName.compareTo(fruit2.fruitName);\u000a        }\u000a    });\u000a
p2987
atp2988
Rp2989
sg7
I18441846
sg8
g3
((lp2990
VList<Fruit> fruits= new ArrayList<Fruit>();\u000a\u000aFruit fruit;\u000afor(int i = 0; i < 100; i++)\u000a{\u000a  fruit = new Fruit();\u000a  fruit.setname(...);\u000a  fruits.add(fruit);\u000a}\u000a\u000a// Sorting\u000aCollections.sort(fruits, new Comparator<Fruit>() {\u000a        @Override\u000a        public int compare(Fruit fruit2, Fruit fruit1)\u000a        {\u000a\u000a            return  fruit1.fruitName.compareTo(fruit2.fruitName);\u000a        }\u000a    });\u000a
p2991
atp2992
Rp2993
sg13
g14
sg15
Nsg16
S'Collections.sort(fruits, new Comparator<Fruit>() {\n\n    @Override\n    public int compare(Fruit fruit2, Fruit fruit1) {\n        return fruit1.fruitName.compareTo(fruit2.fruitName);\n    }\n});'
p2994
sg18
g3
((lp2995
VHow to sort an ArrayList in Java
p2996
atp2997
Rp2998
sa(dp2999
g2
g3
((lp3000
tp3001
Rp3002
sg7
I18441846
sg8
g3
((lp3003
VCollections.sort(fruitList);\u000a
p3004
aVpublic class Fruit implements Comparable<Fruit> {\u000a
p3005
aV@Override\u000a    public int compareTo(Fruit fruit) {\u000a        //write code here for compare name\u000a    }\u000a
p3006
atp3007
Rp3008
sg13
g14
sg15
Nsg16
S'Collections.sort(fruitList);'
p3009
sg18
g3
((lp3010
g2996
atp3011
Rp3012
sa(dp3013
g2
g3
((lp3014
VBeanComparator fieldComparator = new BeanComparator(\u000a                "fruitName");\u000aCollections.sort(fruits, fieldComparator);\u000a
p3015
atp3016
Rp3017
sg7
I18441846
sg8
g3
((lp3018
VBeanComparator fieldComparator = new BeanComparator(\u000a                "fruitName");\u000aCollections.sort(fruits, fieldComparator);\u000a
p3019
atp3020
Rp3021
sg13
g14
sg15
S'BeanComparator fieldComparator = new BeanComparator("fruitName");'
p3022
sg16
S'Collections.sort(fruits, fieldComparator);'
p3023
sg18
g3
((lp3024
g2996
atp3025
Rp3026
sa(dp3027
g2
g3
((lp3028
tp3029
Rp3030
sg7
I3402735
sg8
g3
((lp3031
VString content = new Scanner(new File("filename")).useDelimiter("\u005c\u005cZ").next();\u000aSystem.out.println(content);\u000a
p3032
atp3033
Rp3034
sg13
g14
sg15
Nsg16
S'String content = new Scanner(new File("filename")).useDelimiter("\\\\Z").next();'
p3035
sg18
g3
((lp3036
VWhat is simplest way to read a file into String?
p3037
atp3038
Rp3039
sa(dp3040
g2
g3
((lp3041
tp3042
Rp3043
sg7
I3402735
sg8
g3
((lp3044
tp3045
Rp3046
sg13
g14
sg15
Nsg16
S'new String(Files.readAllBytes(Paths.get(filePath)));'
p3047
sg18
g3
((lp3048
g3037
atp3049
Rp3050
sa(dp3051
g2
g3
((lp3052
tp3053
Rp3054
sg7
I3402735
sg8
g3
((lp3055
VFileInputStream fisTargetFile = new FileInputStream(new File("test.txt"));\u000a\u000aString targetFileStr = IOUtils.toString(fisTargetFile, "UTF-8");\u000a
p3056
atp3057
Rp3058
sg13
g14
sg15
Nsg16
S'FileInputStream fisTargetFile = new FileInputStream(new File("test.txt"));\nString targetFileStr = IOUtils.toString(fisTargetFile, "UTF-8");'
p3059
sg18
g3
((lp3060
g3037
atp3061
Rp3062
sa(dp3063
g2
g3
((lp3064
tp3065
Rp3066
sg7
I5927109
sg8
g3
((lp3067
VCollections.sort(myList, new Comparator<MyObject>() {\u000a  public int compare(MyObject o1, MyObject o2) {\u000a      if (o1.getDateTime() == null || o2.getDateTime() == null)\u000a        return 0;\u000a      return o1.getDateTime().compareTo(o2.getDateTime());\u000a  }\u000a});\u000a
p3068
aVCollections.sort(myList);\u000a
p3069
aVpublic static class MyObject implements Comparable<MyObject> {\u000a\u000a  private Date dateTime;\u000a\u000a  public Date getDateTime() {\u000a    return dateTime;\u000a  }\u000a\u000a  public void setDateTime(Date datetime) {\u000a    this.dateTime = datetime;\u000a  }\u000a\u000a  @Override\u000a  public int compareTo(MyObject o) {\u000a    return getDateTime().compareTo(o.getDateTime());\u000a  }\u000a}\u000a
p3070
aVCollections.sort(myList, new Comparator<MyObject>() {\u000a  public int compare(MyObject o1, MyObject o2) {\u000a      return o1.getDateTime().compareTo(o2.getDateTime());\u000a  }\u000a});\u000a
p3071
aVpublic static class MyObject implements Comparable<MyObject> {\u000a\u000a  private Date dateTime;\u000a\u000a  public Date getDateTime() {\u000a    return dateTime;\u000a  }\u000a\u000a  public void setDateTime(Date datetime) {\u000a    this.dateTime = datetime;\u000a  }\u000a\u000a  @Override\u000a  public int compareTo(MyObject o) {\u000a    if (getDateTime() == null || o.getDateTime() == null)\u000a      return 0;\u000a    return getDateTime().compareTo(o.getDateTime());\u000a  }\u000a}\u000a
p3072
atp3073
Rp3074
sg13
VSort objects in ArrayList by date?
p3075
sg15
Nsg16
S'Collections.sort(myList, new Comparator<MyObject>() {\n\n    public int compare(MyObject o1, MyObject o2) {\n        return o1.getDateTime().compareTo(o2.getDateTime());\n    }\n});'
p3076
sg18
g3
((lp3077
VSort objects in ArrayList by date?
p3078
atp3079
Rp3080
sa(dp3081
g2
g3
((lp3082
tp3083
Rp3084
sg7
I5927109
sg8
g3
((lp3085
VCollections.sort(myList, new Comparator<MyObject>() {\u000a  public int compare(MyObject o1, MyObject o2) {\u000a      if (o1.getDateTime() == null || o2.getDateTime() == null)\u000a        return 0;\u000a      return o1.getDateTime().compareTo(o2.getDateTime());\u000a  }\u000a});\u000a
p3086
aVCollections.sort(myList);\u000a
p3087
aVpublic static class MyObject implements Comparable<MyObject> {\u000a\u000a  private Date dateTime;\u000a\u000a  public Date getDateTime() {\u000a    return dateTime;\u000a  }\u000a\u000a  public void setDateTime(Date datetime) {\u000a    this.dateTime = datetime;\u000a  }\u000a\u000a  @Override\u000a  public int compareTo(MyObject o) {\u000a    return getDateTime().compareTo(o.getDateTime());\u000a  }\u000a}\u000a
p3088
aVCollections.sort(myList, new Comparator<MyObject>() {\u000a  public int compare(MyObject o1, MyObject o2) {\u000a      return o1.getDateTime().compareTo(o2.getDateTime());\u000a  }\u000a});\u000a
p3089
aVpublic static class MyObject implements Comparable<MyObject> {\u000a\u000a  private Date dateTime;\u000a\u000a  public Date getDateTime() {\u000a    return dateTime;\u000a  }\u000a\u000a  public void setDateTime(Date datetime) {\u000a    this.dateTime = datetime;\u000a  }\u000a\u000a  @Override\u000a  public int compareTo(MyObject o) {\u000a    if (getDateTime() == null || o.getDateTime() == null)\u000a      return 0;\u000a    return getDateTime().compareTo(o.getDateTime());\u000a  }\u000a}\u000a
p3090
atp3091
Rp3092
sg13
VSort objects in ArrayList by date?
p3093
sg15
Nsg16
S'Collections.sort(myList, new Comparator<MyObject>() {\n\n    public int compare(MyObject o1, MyObject o2) {\n        if (o1.getDateTime() == null || o2.getDateTime() == null)\n            return 0;\n        return o1.getDateTime().compareTo(o2.getDateTime());\n    }\n});'
p3094
sg18
g3
((lp3095
g3078
atp3096
Rp3097
sa(dp3098
g2
g3
((lp3099
VCollections.sort(myList, new Comparator<MyObject>() {\u000a  public int compare(MyObject o1, MyObject o2) {\u000a      if (o1.getDateTime() == null || o2.getDateTime() == null)\u000a        return 0;\u000a      return o1.getDateTime().compareTo(o2.getDateTime());\u000a  }\u000a});\u000a
p3100
aVCollections.sort(myList);\u000a
p3101
aVpublic static class MyObject implements Comparable<MyObject> {\u000a\u000a  private Date dateTime;\u000a\u000a  public Date getDateTime() {\u000a    return dateTime;\u000a  }\u000a\u000a  public void setDateTime(Date datetime) {\u000a    this.dateTime = datetime;\u000a  }\u000a\u000a  @Override\u000a  public int compareTo(MyObject o) {\u000a    return getDateTime().compareTo(o.getDateTime());\u000a  }\u000a}\u000a
p3102
aVCollections.sort(myList, new Comparator<MyObject>() {\u000a  public int compare(MyObject o1, MyObject o2) {\u000a      return o1.getDateTime().compareTo(o2.getDateTime());\u000a  }\u000a});\u000a
p3103
aVpublic static class MyObject implements Comparable<MyObject> {\u000a\u000a  private Date dateTime;\u000a\u000a  public Date getDateTime() {\u000a    return dateTime;\u000a  }\u000a\u000a  public void setDateTime(Date datetime) {\u000a    this.dateTime = datetime;\u000a  }\u000a\u000a  @Override\u000a  public int compareTo(MyObject o) {\u000a    if (getDateTime() == null || o.getDateTime() == null)\u000a      return 0;\u000a    return getDateTime().compareTo(o.getDateTime());\u000a  }\u000a}\u000a
p3104
atp3105
Rp3106
sg7
I5927109
sg8
g3
((lp3107
VCollections.sort(myList, new Comparator<MyObject>() {\u000a  public int compare(MyObject o1, MyObject o2) {\u000a      if (o1.getDateTime() == null || o2.getDateTime() == null)\u000a        return 0;\u000a      return o1.getDateTime().compareTo(o2.getDateTime());\u000a  }\u000a});\u000a
p3108
aVCollections.sort(myList);\u000a
p3109
aVpublic static class MyObject implements Comparable<MyObject> {\u000a\u000a  private Date dateTime;\u000a\u000a  public Date getDateTime() {\u000a    return dateTime;\u000a  }\u000a\u000a  public void setDateTime(Date datetime) {\u000a    this.dateTime = datetime;\u000a  }\u000a\u000a  @Override\u000a  public int compareTo(MyObject o) {\u000a    return getDateTime().compareTo(o.getDateTime());\u000a  }\u000a}\u000a
p3110
aVCollections.sort(myList, new Comparator<MyObject>() {\u000a  public int compare(MyObject o1, MyObject o2) {\u000a      return o1.getDateTime().compareTo(o2.getDateTime());\u000a  }\u000a});\u000a
p3111
aVpublic static class MyObject implements Comparable<MyObject> {\u000a\u000a  private Date dateTime;\u000a\u000a  public Date getDateTime() {\u000a    return dateTime;\u000a  }\u000a\u000a  public void setDateTime(Date datetime) {\u000a    this.dateTime = datetime;\u000a  }\u000a\u000a  @Override\u000a  public int compareTo(MyObject o) {\u000a    if (getDateTime() == null || o.getDateTime() == null)\u000a      return 0;\u000a    return getDateTime().compareTo(o.getDateTime());\u000a  }\u000a}\u000a
p3112
atp3113
Rp3114
sg13
VSort objects in ArrayList by date?
p3115
sg15
S'public static class MyObject implements Comparable<MyObject> {\n\n    private Date dateTime;\n\n    public Date getDateTime() {\n        return dateTime;\n    }\n\n    public void setDateTime(Date datetime) {\n        this.dateTime = datetime;\n    }\n\n    @Override\n    public int compareTo(MyObject o) {\n        return getDateTime().compareTo(o.getDateTime());\n    }\n}'
p3116
sg16
S'Collections.sort(myList);'
p3117
sg18
g3
((lp3118
g3078
atp3119
Rp3120
sa(dp3121
g2
g3
((lp3122
VCollections.sort(myList, new Comparator<MyObject>() {\u000a  public int compare(MyObject o1, MyObject o2) {\u000a      if (o1.getDateTime() == null || o2.getDateTime() == null)\u000a        return 0;\u000a      return o1.getDateTime().compareTo(o2.getDateTime());\u000a  }\u000a});\u000a
p3123
aVCollections.sort(myList);\u000a
p3124
aVpublic static class MyObject implements Comparable<MyObject> {\u000a\u000a  private Date dateTime;\u000a\u000a  public Date getDateTime() {\u000a    return dateTime;\u000a  }\u000a\u000a  public void setDateTime(Date datetime) {\u000a    this.dateTime = datetime;\u000a  }\u000a\u000a  @Override\u000a  public int compareTo(MyObject o) {\u000a    return getDateTime().compareTo(o.getDateTime());\u000a  }\u000a}\u000a
p3125
aVCollections.sort(myList, new Comparator<MyObject>() {\u000a  public int compare(MyObject o1, MyObject o2) {\u000a      return o1.getDateTime().compareTo(o2.getDateTime());\u000a  }\u000a});\u000a
p3126
aVpublic static class MyObject implements Comparable<MyObject> {\u000a\u000a  private Date dateTime;\u000a\u000a  public Date getDateTime() {\u000a    return dateTime;\u000a  }\u000a\u000a  public void setDateTime(Date datetime) {\u000a    this.dateTime = datetime;\u000a  }\u000a\u000a  @Override\u000a  public int compareTo(MyObject o) {\u000a    if (getDateTime() == null || o.getDateTime() == null)\u000a      return 0;\u000a    return getDateTime().compareTo(o.getDateTime());\u000a  }\u000a}\u000a
p3127
atp3128
Rp3129
sg7
I5927109
sg8
g3
((lp3130
VCollections.sort(myList, new Comparator<MyObject>() {\u000a  public int compare(MyObject o1, MyObject o2) {\u000a      if (o1.getDateTime() == null || o2.getDateTime() == null)\u000a        return 0;\u000a      return o1.getDateTime().compareTo(o2.getDateTime());\u000a  }\u000a});\u000a
p3131
aVCollections.sort(myList);\u000a
p3132
aVpublic static class MyObject implements Comparable<MyObject> {\u000a\u000a  private Date dateTime;\u000a\u000a  public Date getDateTime() {\u000a    return dateTime;\u000a  }\u000a\u000a  public void setDateTime(Date datetime) {\u000a    this.dateTime = datetime;\u000a  }\u000a\u000a  @Override\u000a  public int compareTo(MyObject o) {\u000a    return getDateTime().compareTo(o.getDateTime());\u000a  }\u000a}\u000a
p3133
aVCollections.sort(myList, new Comparator<MyObject>() {\u000a  public int compare(MyObject o1, MyObject o2) {\u000a      return o1.getDateTime().compareTo(o2.getDateTime());\u000a  }\u000a});\u000a
p3134
aVpublic static class MyObject implements Comparable<MyObject> {\u000a\u000a  private Date dateTime;\u000a\u000a  public Date getDateTime() {\u000a    return dateTime;\u000a  }\u000a\u000a  public void setDateTime(Date datetime) {\u000a    this.dateTime = datetime;\u000a  }\u000a\u000a  @Override\u000a  public int compareTo(MyObject o) {\u000a    if (getDateTime() == null || o.getDateTime() == null)\u000a      return 0;\u000a    return getDateTime().compareTo(o.getDateTime());\u000a  }\u000a}\u000a
p3135
atp3136
Rp3137
sg13
VSort objects in ArrayList by date?
p3138
sg15
S'public static class MyObject implements Comparable<MyObject> {\n\n    private Date dateTime;\n\n    public Date getDateTime() {\n        return dateTime;\n    }\n\n    public void setDateTime(Date datetime) {\n        this.dateTime = datetime;\n    }\n\n    @Override\n    public int compareTo(MyObject o) {\n        if (getDateTime() == null || o.getDateTime() == null)\n            return 0;\n        return getDateTime().compareTo(o.getDateTime());\n    }\n}'
p3139
sg16
S'Collections.sort(myList);'
p3140
sg18
g3
((lp3141
g3078
atp3142
Rp3143
sa(dp3144
g2
g3
((lp3145
tp3146
Rp3147
sg7
I5927109
sg8
g3
((lp3148
VCollections.sort(myList, new Comparator<MyObject>() {\u000a    public int compare(MyObject o1, MyObject o2) {\u000a        return o1.getDateTime().lt(o2.getDateTime()) ? -1 : 1;\u000a    }\u000a});\u000a
p3149
atp3150
Rp3151
sg13
VSort objects in ArrayList by date?
p3152
sg15
Nsg16
S'Collections.sort(myList, new Comparator<MyObject>() {\n\n    public int compare(MyObject o1, MyObject o2) {\n        return o1.getDateTime().lt(o2.getDateTime()) ? -1 : 1;\n    }\n});'
p3153
sg18
g3
((lp3154
g3078
atp3155
Rp3156
sa(dp3157
g2
g3
((lp3158
tp3159
Rp3160
sg7
I5993779
sg8
g3
((lp3161
VString[]tokens = pdfName.split("-|\u005c\u005c.");\u000a
p3162
atp3163
Rp3164
sg13
VUse String.split() with multiple delimiters
p3165
sg15
Nsg16
S'String[] tokens = pdfName.split("-|\\\\.");'
p3166
sg18
g3
((lp3167
VUse String.split() with multiple delimiters
p3168
atp3169
Rp3170
sa(dp3171
g2
g3
((lp3172
tp3173
Rp3174
sg7
I5993779
sg8
g3
((lp3175
VString[] tokens=pdfName.split("\u005c\u005cW");\u000a
p3176
atp3177
Rp3178
sg13
VUse String.split() with multiple delimiters
p3179
sg15
Nsg16
S'String[] tokens = pdfName.split("\\\\W");'
p3180
sg18
g3
((lp3181
g3168
atp3182
Rp3183
sa(dp3184
g2
g3
((lp3185
tp3186
Rp3187
sg7
I8559092
sg8
g3
((lp3188
VList<List<Individual>> group = new ArrayList<List<Individual>>(4);\u000a
p3189
aVArrayList<ArrayList<Individual>> group = new ArrayList<ArrayList<Individual>>(4);\u000a
p3190
atp3191
Rp3192
sg13
VCreate an Array of Arraylists
p3193
sg15
Nsg16
S'ArrayList<ArrayList<Individual>> group = new ArrayList<ArrayList<Individual>>(4);'
p3194
sg18
g3
((lp3195
VCreate an Array of Arraylists
p3196
atp3197
Rp3198
sa(dp3199
g2
g3
((lp3200
tp3201
Rp3202
sg7
I8559092
sg8
g3
((lp3203
VList<List<Individual>> group = new ArrayList<List<Individual>>(4);\u000a
p3204
aVArrayList<ArrayList<Individual>> group = new ArrayList<ArrayList<Individual>>(4);\u000a
p3205
atp3206
Rp3207
sg13
VCreate an Array of Arraylists
p3208
sg15
Nsg16
S'List<List<Individual>> group = new ArrayList<List<Individual>>(4);'
p3209
sg18
g3
((lp3210
g3196
atp3211
Rp3212
sa(dp3213
g2
g3
((lp3214
tp3215
Rp3216
sg7
I8559092
sg8
g3
((lp3217
VArrayList<Individual>[] group = (ArrayList<Individual>[])new ArrayList[4];\u000a
p3218
atp3219
Rp3220
sg13
VCreate an Array of Arraylists
p3221
sg15
Nsg16
S'ArrayList<Individual>[] group = (ArrayList<Individual>[]) new ArrayList[4];'
p3222
sg18
g3
((lp3223
g3196
atp3224
Rp3225
sa(dp3226
g2
g3
((lp3227
tp3228
Rp3229
sg7
I8559092
sg8
g3
((lp3230
VArrayList<String>[] group = new ArrayList[4];\u000a
p3231
atp3232
Rp3233
sg13
VCreate an Array of Arraylists
p3234
sg15
Nsg16
S'ArrayList<String>[] group = new ArrayList[4];'
p3235
sg18
g3
((lp3236
g3196
atp3237
Rp3238
sa(dp3239
g2
g3
((lp3240
tp3241
Rp3242
sg7
I3551821
sg8
g3
((lp3243
VFile sdCard = Environment.getExternalStorageDirectory();\u000aFile dir = new File (sdCard.getAbsolutePath() + "/dir1/dir2");\u000adir.mkdirs();\u000aFile file = new File(dir, "filename");\u000a\u000aFileOutputStream f = new FileOutputStream(file);\u000a...\u000a
p3244
atp3245
Rp3246
sg13
g14
sg15
Nsg16
S'File sdCard = Environment.getExternalStorageDirectory();\nFile dir = new File(sdCard.getAbsolutePath() + "/dir1/dir2");\ndir.mkdirs();\nFile file = new File(dir, "filename");\nFileOutputStream f = new FileOutputStream(file);'
p3247
sg18
g3
((lp3248
VAndroid write to sd card folder
p3249
atp3250
Rp3251
sa(dp3252
g2
g3
((lp3253
V// get external storage file reference\u000aFileWriter writer = new FileWriter(getExternalStorageDirectory()); \u000a// Writes the content to the file\u000awriter.write("This\u005cn is\u005cn an\u005cn example\u005cn"); \u000awriter.flush();\u000awriter.close();\u000a
p3254
aV<?xml version="1.0" encoding="utf-8"?>\u000a<manifest xmlns:android="http://schemas.android.com/apk/res/android"\u000a    package="your.company.package"\u000a    android:versionCode="1"\u000a    android:versionName="0.1">\u000a    <application android:icon="@drawable/icon" android:label="@string/app_name">\u000a        <!-- ... -->\u000a    </application>\u000a    <uses-sdk android:minSdkVersion="7" />\u000a    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />\u000a</manifest> \u000a
p3255
aVboolean mExternalStorageAvailable = false;\u000aboolean mExternalStorageWriteable = false;\u000aString state = Environment.getExternalStorageState();\u000a\u000aif (Environment.MEDIA_MOUNTED.equals(state)) {\u000a    // We can read and write the media\u000a    mExternalStorageAvailable = mExternalStorageWriteable = true;\u000a} else if (Environment.MEDIA_MOUNTED_READ_ONLY.equals(state)) {\u000a    // We can only read the media\u000a    mExternalStorageAvailable = true;\u000a    mExternalStorageWriteable = false;\u000a} else {\u000a    // Something else is wrong. It may be one of many other states, but all we need\u000a    //  to know is we can neither read nor write\u000a    mExternalStorageAvailable = mExternalStorageWriteable = false;\u000a}\u000a
p3256
atp3257
Rp3258
sg7
I3551821
sg8
g3
((lp3259
V// get external storage file reference\u000aFileWriter writer = new FileWriter(getExternalStorageDirectory()); \u000a// Writes the content to the file\u000awriter.write("This\u005cn is\u005cn an\u005cn example\u005cn"); \u000awriter.flush();\u000awriter.close();\u000a
p3260
aV<?xml version="1.0" encoding="utf-8"?>\u000a<manifest xmlns:android="http://schemas.android.com/apk/res/android"\u000a    package="your.company.package"\u000a    android:versionCode="1"\u000a    android:versionName="0.1">\u000a    <application android:icon="@drawable/icon" android:label="@string/app_name">\u000a        <!-- ... -->\u000a    </application>\u000a    <uses-sdk android:minSdkVersion="7" />\u000a    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />\u000a</manifest> \u000a
p3261
aVboolean mExternalStorageAvailable = false;\u000aboolean mExternalStorageWriteable = false;\u000aString state = Environment.getExternalStorageState();\u000a\u000aif (Environment.MEDIA_MOUNTED.equals(state)) {\u000a    // We can read and write the media\u000a    mExternalStorageAvailable = mExternalStorageWriteable = true;\u000a} else if (Environment.MEDIA_MOUNTED_READ_ONLY.equals(state)) {\u000a    // We can only read the media\u000a    mExternalStorageAvailable = true;\u000a    mExternalStorageWriteable = false;\u000a} else {\u000a    // Something else is wrong. It may be one of many other states, but all we need\u000a    //  to know is we can neither read nor write\u000a    mExternalStorageAvailable = mExternalStorageWriteable = false;\u000a}\u000a
p3262
atp3263
Rp3264
sg13
g14
sg15
S'boolean mExternalStorageAvailable = false;\nboolean mExternalStorageWriteable = false;\nString state = Environment.getExternalStorageState();\nif (Environment.MEDIA_MOUNTED.equals(state)) {\n    mExternalStorageAvailable = mExternalStorageWriteable = true;\n} else if (Environment.MEDIA_MOUNTED_READ_ONLY.equals(state)) {\n    mExternalStorageAvailable = true;\n    mExternalStorageWriteable = false;\n} else {\n    mExternalStorageAvailable = mExternalStorageWriteable = false;\n}'
p3265
sg16
S'FileWriter writer = new FileWriter(getExternalStorageDirectory());\nwriter.write("This\\n is\\n an\\n example\\n");\nwriter.flush();\nwriter.close();'
p3266
sg18
g3
((lp3267
g3249
atp3268
Rp3269
sa(dp3270
g2
g3
((lp3271
VJFrame frame = new JFrame("test");\u000aframe.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);\u000aJPanel panel = new JPanel(new GridLayout(4,4,4,4));\u000a\u000afor(int i=0 ; i<16 ; i++){\u000a    JButton btn = new JButton(String.valueOf(i));\u000a    btn.setPreferredSize(new Dimension(40, 40));\u000a    panel.add(btn);\u000a}\u000aframe.setContentPane(panel);\u000aframe.pack();\u000aframe.setVisible(true);\u000a
p3272
aVJFrame frame = new JFrame("Colored Trails");\u000aframe.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);\u000a\u000aJPanel mainPanel = new JPanel();\u000amainPanel.setLayout(new BoxLayout(mainPanel, BoxLayout.Y_AXIS));\u000a\u000aJPanel firstPanel = new JPanel();\u000afirstPanel.setLayout(new GridLayout(4, 4));\u000afirstPanel.setMaximumSize(new Dimension(400, 400));\u000aJButton btn;\u000afor (int i=1; i<=4; i++) {\u000a    for (int j=1; j<=4; j++) {\u000a        btn = new JButton();\u000a        btn.setPreferredSize(new Dimension(100, 100));\u000a        firstPanel.add(btn);\u000a    }\u000a}\u000a\u000aJPanel secondPanel = new JPanel();\u000asecondPanel.setLayout(new GridLayout(5, 13));\u000asecondPanel.setMaximumSize(new Dimension(520, 200));\u000afor (int i=1; i<=5; i++) {\u000a    for (int j=1; j<=13; j++) {\u000a        btn = new JButton();\u000a        btn.setPreferredSize(new Dimension(40, 40));\u000a        secondPanel.add(btn);\u000a    }\u000a}\u000a\u000amainPanel.add(firstPanel);\u000amainPanel.add(secondPanel);\u000aframe.setContentPane(mainPanel);\u000a\u000aframe.setSize(520,600);\u000aframe.setMinimumSize(new Dimension(520,600));\u000aframe.setVisible(true);\u000a
p3273
atp3274
Rp3275
sg7
I2536873
sg8
g3
((lp3276
VJFrame frame = new JFrame("test");\u000aframe.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);\u000aJPanel panel = new JPanel(new GridLayout(4,4,4,4));\u000a\u000afor(int i=0 ; i<16 ; i++){\u000a    JButton btn = new JButton(String.valueOf(i));\u000a    btn.setPreferredSize(new Dimension(40, 40));\u000a    panel.add(btn);\u000a}\u000aframe.setContentPane(panel);\u000aframe.pack();\u000aframe.setVisible(true);\u000a
p3277
aVJFrame frame = new JFrame("Colored Trails");\u000aframe.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);\u000a\u000aJPanel mainPanel = new JPanel();\u000amainPanel.setLayout(new BoxLayout(mainPanel, BoxLayout.Y_AXIS));\u000a\u000aJPanel firstPanel = new JPanel();\u000afirstPanel.setLayout(new GridLayout(4, 4));\u000afirstPanel.setMaximumSize(new Dimension(400, 400));\u000aJButton btn;\u000afor (int i=1; i<=4; i++) {\u000a    for (int j=1; j<=4; j++) {\u000a        btn = new JButton();\u000a        btn.setPreferredSize(new Dimension(100, 100));\u000a        firstPanel.add(btn);\u000a    }\u000a}\u000a\u000aJPanel secondPanel = new JPanel();\u000asecondPanel.setLayout(new GridLayout(5, 13));\u000asecondPanel.setMaximumSize(new Dimension(520, 200));\u000afor (int i=1; i<=5; i++) {\u000a    for (int j=1; j<=13; j++) {\u000a        btn = new JButton();\u000a        btn.setPreferredSize(new Dimension(40, 40));\u000a        secondPanel.add(btn);\u000a    }\u000a}\u000a\u000amainPanel.add(firstPanel);\u000amainPanel.add(secondPanel);\u000aframe.setContentPane(mainPanel);\u000a\u000aframe.setSize(520,600);\u000aframe.setMinimumSize(new Dimension(520,600));\u000aframe.setVisible(true);\u000a
p3278
atp3279
Rp3280
sg13
g14
sg15
S'JButton btn = new JButton(String.valueOf(i));'
p3281
sg16
S'btn.setPreferredSize(new Dimension(40, 40));'
p3282
sg18
g3
((lp3283
VHow can I set size of a button?
p3284
atp3285
Rp3286
sa(dp3287
g2
g3
((lp3288
VJFrame frame = new JFrame("test");\u000aframe.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);\u000aJPanel panel = new JPanel(new GridLayout(4,4,4,4));\u000a\u000afor(int i=0 ; i<16 ; i++){\u000a    JButton btn = new JButton(String.valueOf(i));\u000a    btn.setPreferredSize(new Dimension(40, 40));\u000a    panel.add(btn);\u000a}\u000aframe.setContentPane(panel);\u000aframe.pack();\u000aframe.setVisible(true);\u000a
p3289
aVJFrame frame = new JFrame("Colored Trails");\u000aframe.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);\u000a\u000aJPanel mainPanel = new JPanel();\u000amainPanel.setLayout(new BoxLayout(mainPanel, BoxLayout.Y_AXIS));\u000a\u000aJPanel firstPanel = new JPanel();\u000afirstPanel.setLayout(new GridLayout(4, 4));\u000afirstPanel.setMaximumSize(new Dimension(400, 400));\u000aJButton btn;\u000afor (int i=1; i<=4; i++) {\u000a    for (int j=1; j<=4; j++) {\u000a        btn = new JButton();\u000a        btn.setPreferredSize(new Dimension(100, 100));\u000a        firstPanel.add(btn);\u000a    }\u000a}\u000a\u000aJPanel secondPanel = new JPanel();\u000asecondPanel.setLayout(new GridLayout(5, 13));\u000asecondPanel.setMaximumSize(new Dimension(520, 200));\u000afor (int i=1; i<=5; i++) {\u000a    for (int j=1; j<=13; j++) {\u000a        btn = new JButton();\u000a        btn.setPreferredSize(new Dimension(40, 40));\u000a        secondPanel.add(btn);\u000a    }\u000a}\u000a\u000amainPanel.add(firstPanel);\u000amainPanel.add(secondPanel);\u000aframe.setContentPane(mainPanel);\u000a\u000aframe.setSize(520,600);\u000aframe.setMinimumSize(new Dimension(520,600));\u000aframe.setVisible(true);\u000a
p3290
atp3291
Rp3292
sg7
I2536873
sg8
g3
((lp3293
VJFrame frame = new JFrame("test");\u000aframe.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);\u000aJPanel panel = new JPanel(new GridLayout(4,4,4,4));\u000a\u000afor(int i=0 ; i<16 ; i++){\u000a    JButton btn = new JButton(String.valueOf(i));\u000a    btn.setPreferredSize(new Dimension(40, 40));\u000a    panel.add(btn);\u000a}\u000aframe.setContentPane(panel);\u000aframe.pack();\u000aframe.setVisible(true);\u000a
p3294
aVJFrame frame = new JFrame("Colored Trails");\u000aframe.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);\u000a\u000aJPanel mainPanel = new JPanel();\u000amainPanel.setLayout(new BoxLayout(mainPanel, BoxLayout.Y_AXIS));\u000a\u000aJPanel firstPanel = new JPanel();\u000afirstPanel.setLayout(new GridLayout(4, 4));\u000afirstPanel.setMaximumSize(new Dimension(400, 400));\u000aJButton btn;\u000afor (int i=1; i<=4; i++) {\u000a    for (int j=1; j<=4; j++) {\u000a        btn = new JButton();\u000a        btn.setPreferredSize(new Dimension(100, 100));\u000a        firstPanel.add(btn);\u000a    }\u000a}\u000a\u000aJPanel secondPanel = new JPanel();\u000asecondPanel.setLayout(new GridLayout(5, 13));\u000asecondPanel.setMaximumSize(new Dimension(520, 200));\u000afor (int i=1; i<=5; i++) {\u000a    for (int j=1; j<=13; j++) {\u000a        btn = new JButton();\u000a        btn.setPreferredSize(new Dimension(40, 40));\u000a        secondPanel.add(btn);\u000a    }\u000a}\u000a\u000amainPanel.add(firstPanel);\u000amainPanel.add(secondPanel);\u000aframe.setContentPane(mainPanel);\u000a\u000aframe.setSize(520,600);\u000aframe.setMinimumSize(new Dimension(520,600));\u000aframe.setVisible(true);\u000a
p3295
atp3296
Rp3297
sg13
g14
sg15
S'btn = new JButton();'
p3298
sg16
S'btn.setPreferredSize(new Dimension(100, 100));'
p3299
sg18
g3
((lp3300
g3284
atp3301
Rp3302
sa(dp3303
g2
g3
((lp3304
VJFrame frame = new JFrame("test");\u000aframe.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);\u000aJPanel panel = new JPanel(new GridLayout(4,4,4,4));\u000a\u000afor(int i=0 ; i<16 ; i++){\u000a    JButton btn = new JButton(String.valueOf(i));\u000a    btn.setPreferredSize(new Dimension(40, 40));\u000a    panel.add(btn);\u000a}\u000aframe.setContentPane(panel);\u000aframe.pack();\u000aframe.setVisible(true);\u000a
p3305
aVJFrame frame = new JFrame("Colored Trails");\u000aframe.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);\u000a\u000aJPanel mainPanel = new JPanel();\u000amainPanel.setLayout(new BoxLayout(mainPanel, BoxLayout.Y_AXIS));\u000a\u000aJPanel firstPanel = new JPanel();\u000afirstPanel.setLayout(new GridLayout(4, 4));\u000afirstPanel.setMaximumSize(new Dimension(400, 400));\u000aJButton btn;\u000afor (int i=1; i<=4; i++) {\u000a    for (int j=1; j<=4; j++) {\u000a        btn = new JButton();\u000a        btn.setPreferredSize(new Dimension(100, 100));\u000a        firstPanel.add(btn);\u000a    }\u000a}\u000a\u000aJPanel secondPanel = new JPanel();\u000asecondPanel.setLayout(new GridLayout(5, 13));\u000asecondPanel.setMaximumSize(new Dimension(520, 200));\u000afor (int i=1; i<=5; i++) {\u000a    for (int j=1; j<=13; j++) {\u000a        btn = new JButton();\u000a        btn.setPreferredSize(new Dimension(40, 40));\u000a        secondPanel.add(btn);\u000a    }\u000a}\u000a\u000amainPanel.add(firstPanel);\u000amainPanel.add(secondPanel);\u000aframe.setContentPane(mainPanel);\u000a\u000aframe.setSize(520,600);\u000aframe.setMinimumSize(new Dimension(520,600));\u000aframe.setVisible(true);\u000a
p3306
atp3307
Rp3308
sg7
I2536873
sg8
g3
((lp3309
VJFrame frame = new JFrame("test");\u000aframe.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);\u000aJPanel panel = new JPanel(new GridLayout(4,4,4,4));\u000a\u000afor(int i=0 ; i<16 ; i++){\u000a    JButton btn = new JButton(String.valueOf(i));\u000a    btn.setPreferredSize(new Dimension(40, 40));\u000a    panel.add(btn);\u000a}\u000aframe.setContentPane(panel);\u000aframe.pack();\u000aframe.setVisible(true);\u000a
p3310
aVJFrame frame = new JFrame("Colored Trails");\u000aframe.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);\u000a\u000aJPanel mainPanel = new JPanel();\u000amainPanel.setLayout(new BoxLayout(mainPanel, BoxLayout.Y_AXIS));\u000a\u000aJPanel firstPanel = new JPanel();\u000afirstPanel.setLayout(new GridLayout(4, 4));\u000afirstPanel.setMaximumSize(new Dimension(400, 400));\u000aJButton btn;\u000afor (int i=1; i<=4; i++) {\u000a    for (int j=1; j<=4; j++) {\u000a        btn = new JButton();\u000a        btn.setPreferredSize(new Dimension(100, 100));\u000a        firstPanel.add(btn);\u000a    }\u000a}\u000a\u000aJPanel secondPanel = new JPanel();\u000asecondPanel.setLayout(new GridLayout(5, 13));\u000asecondPanel.setMaximumSize(new Dimension(520, 200));\u000afor (int i=1; i<=5; i++) {\u000a    for (int j=1; j<=13; j++) {\u000a        btn = new JButton();\u000a        btn.setPreferredSize(new Dimension(40, 40));\u000a        secondPanel.add(btn);\u000a    }\u000a}\u000a\u000amainPanel.add(firstPanel);\u000amainPanel.add(secondPanel);\u000aframe.setContentPane(mainPanel);\u000a\u000aframe.setSize(520,600);\u000aframe.setMinimumSize(new Dimension(520,600));\u000aframe.setVisible(true);\u000a
p3311
atp3312
Rp3313
sg13
g14
sg15
S'btn = new JButton();'
p3314
sg16
S'btn.setPreferredSize(new Dimension(40, 40));'
p3315
sg18
g3
((lp3316
g3284
atp3317
Rp3318
sa(dp3319
g2
g3
((lp3320
V<%\u000a    String redirectURL = "http://whatever.com/myJSPFile.jsp";\u000a    response.sendRedirect(redirectURL);\u000a%>\u000a
p3321
atp3322
Rp3323
sg7
I4967482
sg8
g3
((lp3324
V<%\u000a    String redirectURL = "http://whatever.com/myJSPFile.jsp";\u000a    response.sendRedirect(redirectURL);\u000a%>\u000a
p3325
atp3326
Rp3327
sg13
VRedirect pages in JSP?
p3328
sg15
S'String redirectURL = "http://whatever.com/myJSPFile.jsp";'
p3329
sg16
S'response.sendRedirect(redirectURL);'
p3330
sg18
g3
((lp3331
VRedirect pages in JSP?
p3332
atp3333
Rp3334
sa(dp3335
g2
g3
((lp3336
tp3337
Rp3338
sg7
I10796160
sg8
g3
((lp3339
Vtest.split(Pattern.quote("|"));\u000a
p3340
aVtest.split("\u005c\u005c|");\u000a
p3341
atp3342
Rp3343
sg13
VSplitting a Java String by the pipe symbol using split("|")
p3344
sg15
Nsg16
S'test.split("\\\\|");'
p3345
sg18
g3
((lp3346
VSplitting a Java String by the pipe symbol using split("|")
p3347
atp3348
Rp3349
sa(dp3350
g2
g3
((lp3351
tp3352
Rp3353
sg7
I10796160
sg8
g3
((lp3354
Vtest.split(Pattern.quote("|"));\u000a
p3355
aVtest.split("\u005c\u005c|");\u000a
p3356
atp3357
Rp3358
sg13
VSplitting a Java String by the pipe symbol using split("|")
p3359
sg15
Nsg16
S'test.split(Pattern.quote("|"));'
p3360
sg18
g3
((lp3361
g3347
atp3362
Rp3363
sa(dp3364
g2
g3
((lp3365
tp3366
Rp3367
sg7
I10796160
sg8
g3
((lp3368
Vstring.split(Pattern.quote("|"))\u000a
p3369
atp3370
Rp3371
sg13
VSplitting a Java String by the pipe symbol using split("|")
p3372
sg15
Nsg16
S'string.split(Pattern.quote("|"));'
p3373
sg18
g3
((lp3374
g3347
atp3375
Rp3376
sa(dp3377
g2
g3
((lp3378
Vpublic static void main(String[] args) {\u000a    String test = "A|B|C||D";\u000a\u000a    String[] result = test.split("\u005c\u005c|");\u000a\u000a    for (String s : result) {\u000a        System.out.println(">" + s + "<");\u000a    }\u000a}\u000a
p3379
atp3380
Rp3381
sg7
I10796160
sg8
g3
((lp3382
Vpublic static void main(String[] args) {\u000a    String test = "A|B|C||D";\u000a\u000a    String[] result = test.split("\u005c\u005c|");\u000a\u000a    for (String s : result) {\u000a        System.out.println(">" + s + "<");\u000a    }\u000a}\u000a
p3383
atp3384
Rp3385
sg13
VSplitting a Java String by the pipe symbol using split("|")
p3386
sg15
S'String test = "A|B|C||D";'
p3387
sg16
S'String[] result = test.split("\\\\|");'
p3388
sg18
g3
((lp3389
g3347
atp3390
Rp3391
sa(dp3392
g2
g3
((lp3393
VBufferedImage bimg = ImageIO.read(new File(filename));\u000aint width          = bimg.getWidth();\u000aint height         = bimg.getHeight();\u000a
p3394
atp3395
Rp3396
sg7
I672916
sg8
g3
((lp3397
VBufferedImage bimg = ImageIO.read(new File(filename));\u000aint width          = bimg.getWidth();\u000aint height         = bimg.getHeight();\u000a
p3398
atp3399
Rp3400
sg13
g14
sg15
S'BufferedImage bimg = ImageIO.read(new File(filename));'
p3401
sg16
S'int width = bimg.getWidth();\nint height = bimg.getHeight();'
p3402
sg18
g3
((lp3403
VHow to get image height and width using java?
p3404
atp3405
Rp3406
sa(dp3407
g2
g3
((lp3408
tp3409
Rp3410
sg7
I14145235
sg8
g3
((lp3411
tp3412
Rp3413
sg13
g14
sg15
Nsg16
S'listName.isEmpty();'
p3414
sg18
g3
((lp3415
VJava ArrayList - Check if list is empty
p3416
atp3417
Rp3418
sa(dp3419
g2
g3
((lp3420
tp3421
Rp3422
sg7
I4138364
sg8
g3
((lp3423
VMap<String, Item> map = \u000a    list.stream().collect(Collectors.toMap(Item::getKey, item -> item));\u000a
p3424
aV0 => 9 (i.e 3 + 6)\u000a1 => 5 (i.e 1 + 4)\u000a2 => 7 (i.e 2 + 5)\u000a
p3425
aVimport java.util.Arrays;\u000aimport java.util.List;\u000aimport java.util.Map;\u000aimport java.util.stream.Collectors;\u000a\u000apublic class Test{\u000a    public static void main (String [] args){\u000a        List<Item> list = IntStream.rangeClosed(1, 4)\u000a                                   .mapToObj(Item::new)\u000a                                   .collect(Collectors.toList()); //[Item [i=1], Item [i=2], Item [i=3], Item [i=4]]\u000a\u000a        Map<String, Item> map = \u000a            list.stream().collect(Collectors.toMap(Item::getKey, item -> item));\u000a\u000a        map.forEach((k, v) -> System.out.println(k + " => " + v));\u000a    }\u000a}\u000aclass Item {\u000a\u000a    private final int i;\u000a\u000a    public Item(int i){\u000a        this.i = i;\u000a    }\u000a\u000a    public String getKey(){\u000a        return "Key-"+i;\u000a    }\u000a\u000a    @Override\u000a    public String toString() {\u000a        return "Item [i=" + i + "]";\u000a    }\u000a}\u000a
p3426
aVKey-1 => Item [i=1]\u000aKey-2 => Item [i=2]\u000aKey-3 => Item [i=3]\u000aKey-4 => Item [i=4]\u000a
p3427
aVMap<String, Integer> map = \u000a    intList.stream().collect(toMap(i -> String.valueOf(i % 3), \u000a                                   i -> i, \u000a                                   Integer::sum));\u000a
p3428
aVList<Integer> intList = Arrays.asList(1, 2, 3, 4, 5, 6);\u000aMap<String, Integer> map = \u000a    intList.stream().collect(toMap(i -> String.valueOf(i % 3), i -> i));\u000a
p3429
atp3430
Rp3431
sg13
g14
sg15
Nsg16
S'Map<String, Item> map = list.stream().collect(Collectors.toMap(Item::getKey, item -> item));'
p3432
sg18
g3
((lp3433
VJava: How to convert List to Map
p3434
atp3435
Rp3436
sa(dp3437
g2
g3
((lp3438
tp3439
Rp3440
sg7
I4138364
sg8
g3
((lp3441
VMap<String, Item> map = \u000a    list.stream().collect(Collectors.toMap(Item::getKey, item -> item));\u000a
p3442
aV0 => 9 (i.e 3 + 6)\u000a1 => 5 (i.e 1 + 4)\u000a2 => 7 (i.e 2 + 5)\u000a
p3443
aVimport java.util.Arrays;\u000aimport java.util.List;\u000aimport java.util.Map;\u000aimport java.util.stream.Collectors;\u000a\u000apublic class Test{\u000a    public static void main (String [] args){\u000a        List<Item> list = IntStream.rangeClosed(1, 4)\u000a                                   .mapToObj(Item::new)\u000a                                   .collect(Collectors.toList()); //[Item [i=1], Item [i=2], Item [i=3], Item [i=4]]\u000a\u000a        Map<String, Item> map = \u000a            list.stream().collect(Collectors.toMap(Item::getKey, item -> item));\u000a\u000a        map.forEach((k, v) -> System.out.println(k + " => " + v));\u000a    }\u000a}\u000aclass Item {\u000a\u000a    private final int i;\u000a\u000a    public Item(int i){\u000a        this.i = i;\u000a    }\u000a\u000a    public String getKey(){\u000a        return "Key-"+i;\u000a    }\u000a\u000a    @Override\u000a    public String toString() {\u000a        return "Item [i=" + i + "]";\u000a    }\u000a}\u000a
p3444
aVKey-1 => Item [i=1]\u000aKey-2 => Item [i=2]\u000aKey-3 => Item [i=3]\u000aKey-4 => Item [i=4]\u000a
p3445
aVMap<String, Integer> map = \u000a    intList.stream().collect(toMap(i -> String.valueOf(i % 3), \u000a                                   i -> i, \u000a                                   Integer::sum));\u000a
p3446
aVList<Integer> intList = Arrays.asList(1, 2, 3, 4, 5, 6);\u000aMap<String, Integer> map = \u000a    intList.stream().collect(toMap(i -> String.valueOf(i % 3), i -> i));\u000a
p3447
atp3448
Rp3449
sg13
g14
sg15
Nsg16
S'Map<String, Item> map = list.stream().collect(Collectors.toMap(Item::getKey, item -> item));'
p3450
sg18
g3
((lp3451
g3434
atp3452
Rp3453
sa(dp3454
g2
g3
((lp3455
tp3456
Rp3457
sg7
I811851
sg8
g3
((lp3458
Vpublic class CharacterHandler {\u000a    //Java 7 source level\u000a    public static void main(String[] args) throws IOException {\u000a        // replace this with a known encoding if possible\u000a        Charset encoding = Charset.defaultCharset();\u000a        for (String filename : args) {\u000a            File file = new File(filename);\u000a            handleFile(file, encoding);\u000a        }\u000a    }\u000a\u000a    private static void handleFile(File file, Charset encoding)\u000a            throws IOException {\u000a        try (InputStream in = new FileInputStream(file);\u000a             Reader reader = new InputStreamReader(in, encoding);\u000a             // buffer for efficiency\u000a             Reader buffer = new BufferedReader(reader)) {\u000a            handleCharacters(buffer);\u000a        }\u000a    }\u000a\u000a    private static void handleCharacters(Reader reader)\u000a            throws IOException {\u000a        int r;\u000a        while ((r = reader.read()) != -1) {\u000a            char ch = (char) r;\u000a            System.out.println("Do something with " + ch);\u000a        }\u000a    }\u000a}\u000a
p3459
atp3460
Rp3461
sg13
g14
sg15
Nsg16
S'int r;\nwhile ((r = reader.read()) != -1) {\n    char ch = (char) r;\n    System.out.println("Do something with " + ch);\n}'
p3462
sg18
g3
((lp3463
VHow do I read input character-by-character in Java?
p3464
atp3465
Rp3466
sa(dp3467
g2
g3
((lp3468
tp3469
Rp3470
sg7
I811851
sg8
g3
((lp3471
VBufferedReader reader = new BufferedReader(\u000a    new InputStreamReader(\u000a        new FileInputStream(file),\u000a        Charset.forName("UTF-8")));\u000aint c;\u000awhile((c = reader.read()) != -1) {\u000a  char character = (char) c;\u000a  // Do something with your character\u000a}\u000a
p3472
atp3473
Rp3474
sg13
g14
sg15
Nsg16
S'BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(file), Charset.forName("UTF-8")));\nint c;\nwhile ((c = reader.read()) != -1) {\n    char character = (char) c;\n}'
p3475
sg18
g3
((lp3476
g3464
atp3477
Rp3478
sa(dp3479
g2
g3
((lp3480
Vimport java.io.BufferedReader;\u000aimport java.io.IOException;\u000aimport java.io.InputStreamReader;\u000a\u000apublic class Reader {\u000a\u000a    public static void main(String[] args) throws IOException {\u000a\u000a        BufferedReader buffer = new BufferedReader(\u000a                 new InputStreamReader(System.in));\u000a        int c = 0;\u000a        while((c = buffer.read()) != -1) {\u000a            char character = (char) c;          \u000a            System.out.println(character);          \u000a        }       \u000a    }   \u000a}\u000a
p3481
atp3482
Rp3483
sg7
I811851
sg8
g3
((lp3484
Vimport java.io.BufferedReader;\u000aimport java.io.IOException;\u000aimport java.io.InputStreamReader;\u000a\u000apublic class Reader {\u000a\u000a    public static void main(String[] args) throws IOException {\u000a\u000a        BufferedReader buffer = new BufferedReader(\u000a                 new InputStreamReader(System.in));\u000a        int c = 0;\u000a        while((c = buffer.read()) != -1) {\u000a            char character = (char) c;          \u000a            System.out.println(character);          \u000a        }       \u000a    }   \u000a}\u000a
p3485
atp3486
Rp3487
sg13
g14
sg15
S'import java.io.BufferedReader;\nimport java.io.IOException;\nimport java.io.InputStreamReader;'
p3488
sg16
S'BufferedReader buffer = new BufferedReader(new InputStreamReader(System.in));\nint c = 0;\nwhile ((c = buffer.read()) != -1) {\n    char character = (char) c;\n    System.out.println(character);\n}'
p3489
sg18
g3
((lp3490
g3464
atp3491
Rp3492
sa(dp3493
g2
g3
((lp3494
tp3495
Rp3496
sg7
I1522108
sg8
g3
((lp3497
VSystem.out.println(new String(list).indexOf("e")); \u000a
p3498
atp3499
Rp3500
sg13
g14
sg15
Nsg16
S'System.out.println(new String(list).indexOf("e"));'
p3501
sg18
g3
((lp3502
VHow to find the index of an element in an array in Java?
p3503
atp3504
Rp3505
sa(dp3506
g2
g3
((lp3507
VArrayList<Character> list = new ArrayList<Character>();\u000alist.add('m');\u000alist.add('e');\u000alist.add('y');\u000a\u000aSystem.out.println(list.indexOf('e'));\u000a
p3508
aVList list = Arrays.asList(new Character[] { 'm', 'e', 'y' });\u000aSystem.out.println(list.indexOf('e'));\u000a
p3509
aVpublic class T {\u000a  public static void main( String args[] ) {\u000a    char[] list = {'m', 'e', 'y'};\u000a\u000a    int index = -1;\u000a\u000a    for (int i = 0; (i < list.length) && (index == -1); i++) {\u000a        if (list[i] == 'e') {\u000a            index = i;\u000a        }\u000a    }\u000a\u000a    System.out.println(index);\u000a  }\u000a}\u000a
p3510
atp3511
Rp3512
sg7
I1522108
sg8
g3
((lp3513
VArrayList<Character> list = new ArrayList<Character>();\u000alist.add('m');\u000alist.add('e');\u000alist.add('y');\u000a\u000aSystem.out.println(list.indexOf('e'));\u000a
p3514
aVList list = Arrays.asList(new Character[] { 'm', 'e', 'y' });\u000aSystem.out.println(list.indexOf('e'));\u000a
p3515
aVpublic class T {\u000a  public static void main( String args[] ) {\u000a    char[] list = {'m', 'e', 'y'};\u000a\u000a    int index = -1;\u000a\u000a    for (int i = 0; (i < list.length) && (index == -1); i++) {\u000a        if (list[i] == 'e') {\u000a            index = i;\u000a        }\u000a    }\u000a\u000a    System.out.println(index);\u000a  }\u000a}\u000a
p3516
atp3517
Rp3518
sg13
g14
sg15
S"char[] list = { 'm', 'e', 'y' };"
p3519
sg16
S"int index = -1;\nfor (int i = 0; (i < list.length) && (index == -1); i++) {\n    if (list[i] == 'e') {\n        index = i;\n    }\n}"
p3520
sg18
g3
((lp3521
g3503
atp3522
Rp3523
sa(dp3524
g2
g3
((lp3525
VArrayList<Character> list = new ArrayList<Character>();\u000alist.add('m');\u000alist.add('e');\u000alist.add('y');\u000a\u000aSystem.out.println(list.indexOf('e'));\u000a
p3526
aVList list = Arrays.asList(new Character[] { 'm', 'e', 'y' });\u000aSystem.out.println(list.indexOf('e'));\u000a
p3527
aVpublic class T {\u000a  public static void main( String args[] ) {\u000a    char[] list = {'m', 'e', 'y'};\u000a\u000a    int index = -1;\u000a\u000a    for (int i = 0; (i < list.length) && (index == -1); i++) {\u000a        if (list[i] == 'e') {\u000a            index = i;\u000a        }\u000a    }\u000a\u000a    System.out.println(index);\u000a  }\u000a}\u000a
p3528
atp3529
Rp3530
sg7
I1522108
sg8
g3
((lp3531
VArrayList<Character> list = new ArrayList<Character>();\u000alist.add('m');\u000alist.add('e');\u000alist.add('y');\u000a\u000aSystem.out.println(list.indexOf('e'));\u000a
p3532
aVList list = Arrays.asList(new Character[] { 'm', 'e', 'y' });\u000aSystem.out.println(list.indexOf('e'));\u000a
p3533
aVpublic class T {\u000a  public static void main( String args[] ) {\u000a    char[] list = {'m', 'e', 'y'};\u000a\u000a    int index = -1;\u000a\u000a    for (int i = 0; (i < list.length) && (index == -1); i++) {\u000a        if (list[i] == 'e') {\u000a            index = i;\u000a        }\u000a    }\u000a\u000a    System.out.println(index);\u000a  }\u000a}\u000a
p3534
atp3535
Rp3536
sg13
g14
sg15
S"ArrayList<Character> list = new ArrayList<Character>();\nlist.add('m');\nlist.add('e');\nlist.add('y');"
p3537
sg16
S"System.out.println(list.indexOf('e'));"
p3538
sg18
g3
((lp3539
g3503
atp3540
Rp3541
sa(dp3542
g2
g3
((lp3543
VArrayList<Character> list = new ArrayList<Character>();\u000alist.add('m');\u000alist.add('e');\u000alist.add('y');\u000a\u000aSystem.out.println(list.indexOf('e'));\u000a
p3544
aVList list = Arrays.asList(new Character[] { 'm', 'e', 'y' });\u000aSystem.out.println(list.indexOf('e'));\u000a
p3545
aVpublic class T {\u000a  public static void main( String args[] ) {\u000a    char[] list = {'m', 'e', 'y'};\u000a\u000a    int index = -1;\u000a\u000a    for (int i = 0; (i < list.length) && (index == -1); i++) {\u000a        if (list[i] == 'e') {\u000a            index = i;\u000a        }\u000a    }\u000a\u000a    System.out.println(index);\u000a  }\u000a}\u000a
p3546
atp3547
Rp3548
sg7
I1522108
sg8
g3
((lp3549
VArrayList<Character> list = new ArrayList<Character>();\u000alist.add('m');\u000alist.add('e');\u000alist.add('y');\u000a\u000aSystem.out.println(list.indexOf('e'));\u000a
p3550
aVList list = Arrays.asList(new Character[] { 'm', 'e', 'y' });\u000aSystem.out.println(list.indexOf('e'));\u000a
p3551
aVpublic class T {\u000a  public static void main( String args[] ) {\u000a    char[] list = {'m', 'e', 'y'};\u000a\u000a    int index = -1;\u000a\u000a    for (int i = 0; (i < list.length) && (index == -1); i++) {\u000a        if (list[i] == 'e') {\u000a            index = i;\u000a        }\u000a    }\u000a\u000a    System.out.println(index);\u000a  }\u000a}\u000a
p3552
atp3553
Rp3554
sg13
g14
sg15
S"List list = Arrays.asList(new Character[] { 'm', 'e', 'y' });"
p3555
sg16
S"System.out.println(list.indexOf('e'));"
p3556
sg18
g3
((lp3557
g3503
atp3558
Rp3559
sa(dp3560
g2
g3
((lp3561
tp3562
Rp3563
sg7
I1522108
sg8
g3
((lp3564
Vfor (int i = 0; i < list.length; i++) {\u000a  if (list[i] == 'e') {\u000a    System.out.println(i);\u000a    break;\u000a  }\u000a}\u000a
p3565
atp3566
Rp3567
sg13
g14
sg15
Nsg16
S"for (int i = 0; i < list.length; i++) {\n    if (list[i] == 'e') {\n        System.out.println(i);\n        break;\n    }\n}"
p3568
sg18
g3
((lp3569
g3503
atp3570
Rp3571
sa(dp3572
g2
g3
((lp3573
tp3574
Rp3575
sg7
I822322
sg8
g3
((lp3576
VMap<K2, K1> m2;\u000aMap<K1, V>  m1;\u000a
p3577
atp3578
Rp3579
sg13
g14
sg15
Nsg16
S'Map<K2, K1> m2;\nMap<K1, V> m1;'
p3580
sg18
g3
((lp3581
VHow to implement a Map with multiple keys?
p3582
atp3583
Rp3584
sa(dp3585
g2
g3
((lp3586
VList<MyClass> myObjects = mapper.readValue(jsonInput, new TypeReference<List<MyClass>>(){});\u000a
p3587
aVimport com.fasterxml.jackson.databind.ObjectMapper;// in play 2.3\u000aObjectMapper mapper = new ObjectMapper();\u000a
p3588
aVMyClass[] myObjects = mapper.readValue(json, MyClass[].class);\u000a
p3589
aVList<MyClass> myObjects = mapper.readValue(jsonInput, mapper.getTypeFactory().constructCollectionType(List.class, MyClass.class));\u000a
p3590
atp3591
Rp3592
sg7
I6349421
sg8
g3
((lp3593
VList<MyClass> myObjects = mapper.readValue(jsonInput, new TypeReference<List<MyClass>>(){});\u000a
p3594
aVimport com.fasterxml.jackson.databind.ObjectMapper;// in play 2.3\u000aObjectMapper mapper = new ObjectMapper();\u000a
p3595
aVMyClass[] myObjects = mapper.readValue(json, MyClass[].class);\u000a
p3596
aVList<MyClass> myObjects = mapper.readValue(jsonInput, mapper.getTypeFactory().constructCollectionType(List.class, MyClass.class));\u000a
p3597
atp3598
Rp3599
sg13
g14
sg15
Nsg16
S'MyClass[] myObjects = mapper.readValue(json, MyClass[].class);'
p3600
sg18
g3
((lp3601
VHow to use Jackson to deserialise an array of objects
p3602
atp3603
Rp3604
sa(dp3605
g2
g3
((lp3606
VList<MyClass> myObjects = mapper.readValue(jsonInput, new TypeReference<List<MyClass>>(){});\u000a
p3607
aVimport com.fasterxml.jackson.databind.ObjectMapper;// in play 2.3\u000aObjectMapper mapper = new ObjectMapper();\u000a
p3608
aVMyClass[] myObjects = mapper.readValue(json, MyClass[].class);\u000a
p3609
aVList<MyClass> myObjects = mapper.readValue(jsonInput, mapper.getTypeFactory().constructCollectionType(List.class, MyClass.class));\u000a
p3610
atp3611
Rp3612
sg7
I6349421
sg8
g3
((lp3613
VList<MyClass> myObjects = mapper.readValue(jsonInput, new TypeReference<List<MyClass>>(){});\u000a
p3614
aVimport com.fasterxml.jackson.databind.ObjectMapper;// in play 2.3\u000aObjectMapper mapper = new ObjectMapper();\u000a
p3615
aVMyClass[] myObjects = mapper.readValue(json, MyClass[].class);\u000a
p3616
aVList<MyClass> myObjects = mapper.readValue(jsonInput, mapper.getTypeFactory().constructCollectionType(List.class, MyClass.class));\u000a
p3617
atp3618
Rp3619
sg13
g14
sg15
Nsg16
S'List<MyClass> myObjects = mapper.readValue(jsonInput, new TypeReference<List<MyClass>>() {\n});'
p3620
sg18
g3
((lp3621
g3602
atp3622
Rp3623
sa(dp3624
g2
g3
((lp3625
VList<MyClass> myObjects = mapper.readValue(jsonInput, new TypeReference<List<MyClass>>(){});\u000a
p3626
aVimport com.fasterxml.jackson.databind.ObjectMapper;// in play 2.3\u000aObjectMapper mapper = new ObjectMapper();\u000a
p3627
aVMyClass[] myObjects = mapper.readValue(json, MyClass[].class);\u000a
p3628
aVList<MyClass> myObjects = mapper.readValue(jsonInput, mapper.getTypeFactory().constructCollectionType(List.class, MyClass.class));\u000a
p3629
atp3630
Rp3631
sg7
I6349421
sg8
g3
((lp3632
VList<MyClass> myObjects = mapper.readValue(jsonInput, new TypeReference<List<MyClass>>(){});\u000a
p3633
aVimport com.fasterxml.jackson.databind.ObjectMapper;// in play 2.3\u000aObjectMapper mapper = new ObjectMapper();\u000a
p3634
aVMyClass[] myObjects = mapper.readValue(json, MyClass[].class);\u000a
p3635
aVList<MyClass> myObjects = mapper.readValue(jsonInput, mapper.getTypeFactory().constructCollectionType(List.class, MyClass.class));\u000a
p3636
atp3637
Rp3638
sg13
g14
sg15
Nsg16
S'List<MyClass> myObjects = mapper.readValue(jsonInput, mapper.getTypeFactory().constructCollectionType(List.class, MyClass.class));'
p3639
sg18
g3
((lp3640
g3602
atp3641
Rp3642
sa(dp3643
g2
g3
((lp3644
tp3645
Rp3646
sg7
I6349421
sg8
g3
((lp3647
VList<MyClass> myObjects = Arrays.asList(mapper.readValue(json, MyClass[].class))\u000a
p3648
atp3649
Rp3650
sg13
g14
sg15
Nsg16
S'List<MyClass> myObjects = Arrays.asList(mapper.readValue(json, MyClass[].class));'
p3651
sg18
g3
((lp3652
g3602
atp3653
Rp3654
sa(dp3655
g2
g3
((lp3656
Vtry {\u000a    ObjectMapper mapper = new ObjectMapper();\u000a    JsonFactory f = new JsonFactory();\u000a    List<User> lstUser = null;\u000a    JsonParser jp = f.createJsonParser(new File("C:\u005c\u005cmaven\u005c\u005cuser.json"));\u000a    TypeReference<List<User>> tRef = new TypeReference<List<User>>() {};\u000a    lstUser = mapper.readValue(jp, tRef);\u000a    for (User user : lstUser) {\u000a        System.out.println(user.toString());\u000a    }\u000a\u000a} catch (JsonGenerationException e) {\u000a    e.printStackTrace();\u000a} catch (JsonMappingException e) {\u000a    e.printStackTrace();\u000a} catch (IOException e) {\u000a    e.printStackTrace();\u000a}\u000a
p3657
atp3658
Rp3659
sg7
I6349421
sg8
g3
((lp3660
Vtry {\u000a    ObjectMapper mapper = new ObjectMapper();\u000a    JsonFactory f = new JsonFactory();\u000a    List<User> lstUser = null;\u000a    JsonParser jp = f.createJsonParser(new File("C:\u005c\u005cmaven\u005c\u005cuser.json"));\u000a    TypeReference<List<User>> tRef = new TypeReference<List<User>>() {};\u000a    lstUser = mapper.readValue(jp, tRef);\u000a    for (User user : lstUser) {\u000a        System.out.println(user.toString());\u000a    }\u000a\u000a} catch (JsonGenerationException e) {\u000a    e.printStackTrace();\u000a} catch (JsonMappingException e) {\u000a    e.printStackTrace();\u000a} catch (IOException e) {\u000a    e.printStackTrace();\u000a}\u000a
p3661
atp3662
Rp3663
sg13
g14
sg15
S'ObjectMapper mapper = new ObjectMapper();\nJsonFactory f = new JsonFactory();\nList<User> lstUser = null;'
p3664
sg16
S'JsonParser jp = f.createJsonParser(new File("C:\\\\maven\\\\user.json"));\nTypeReference<List<User>> tRef = new TypeReference<List<User>>() {\n};\nlstUser = mapper.readValue(jp, tRef);'
p3665
sg18
g3
((lp3666
g3602
atp3667
Rp3668
sa(dp3669
g2
g3
((lp3670
tp3671
Rp3672
sg7
I4051887
sg8
g3
((lp3673
V("00000000" + "Apple").substring("Apple".length())\u000a
p3674
atp3675
Rp3676
sg13
g14
sg15
Nsg16
S'("00000000" + "Apple").substring("Apple".length());'
p3677
sg18
g3
((lp3678
VHow to format a Java string with leading zero?
p3679
atp3680
Rp3681
sa(dp3682
g2
g3
((lp3683
tp3684
Rp3685
sg7
I4051887
sg8
g3
((lp3686
V StringUtils.leftPad(yourString, 8, '0');\u000a
p3687
atp3688
Rp3689
sg13
g14
sg15
Nsg16
S"StringUtils.leftPad(yourString, 8, '0');"
p3690
sg18
g3
((lp3691
g3679
atp3692
Rp3693
sa(dp3694
g2
g3
((lp3695
VString s = "Hello World!";\u000a\u000a// String => CharSequence conversion:\u000a\u000aCharSequence cs = s;  // String is already a CharSequence\u000a
p3696
atp3697
Rp3698
sg7
I1391970
sg8
g3
((lp3699
VString s = "Hello World!";\u000a\u000a// String => CharSequence conversion:\u000a\u000aCharSequence cs = s;  // String is already a CharSequence\u000a
p3700
atp3701
Rp3702
sg13
g14
sg15
S'String s = "Hello World!";'
p3703
sg16
S'CharSequence cs = s;'
p3704
sg18
g3
((lp3705
VHow to convert a String to CharSequence?
p3706
atp3707
Rp3708
sa(dp3709
g2
g3
((lp3710
tp3711
Rp3712
sg7
I1391970
sg8
g3
((lp3713
tp3714
Rp3715
sg13
g14
sg15
Nsg16
S'CharSequence cs = new String("string");'
p3716
sg18
g3
((lp3717
g3706
atp3718
Rp3719
sa(dp3720
g2
g3
((lp3721
tp3722
Rp3723
sg7
I1391970
sg8
g3
((lp3724
tp3725
Rp3726
sg13
g14
sg15
Nsg16
S'CharSequence cs = "string";'
p3727
sg18
g3
((lp3728
g3706
atp3729
Rp3730
sa(dp3731
g2
g3
((lp3732
Vpublic static void main(String[] args) {  \u000a\u000a    Logger logger = Logger.getLogger("MyLog");  \u000a    FileHandler fh;  \u000a\u000a    try {  \u000a\u000a        // This block configure the logger with handler and formatter  \u000a        fh = new FileHandler("C:/temp/test/MyLogFile.log");  \u000a        logger.addHandler(fh);\u000a        SimpleFormatter formatter = new SimpleFormatter();  \u000a        fh.setFormatter(formatter);  \u000a\u000a        // the following statement is used to log any messages  \u000a        logger.info("My first log");  \u000a\u000a    } catch (SecurityException e) {  \u000a        e.printStackTrace();  \u000a    } catch (IOException e) {  \u000a        e.printStackTrace();  \u000a    }  \u000a\u000a    logger.info("Hi How r u?");  \u000a\u000a}\u000a
p3733
aVlogger.setUseParentHandlers(false);\u000a
p3734
aVApr 2, 2013 9:57:08 AM testing.MyLogger main  \u000aINFO: My first log  \u000aApr 2, 2013 9:57:08 AM testing.MyLogger main  \u000aINFO: Hi How r u?\u000a
p3735
atp3736
Rp3737
sg7
I15758685
sg8
g3
((lp3738
Vpublic static void main(String[] args) {  \u000a\u000a    Logger logger = Logger.getLogger("MyLog");  \u000a    FileHandler fh;  \u000a\u000a    try {  \u000a\u000a        // This block configure the logger with handler and formatter  \u000a        fh = new FileHandler("C:/temp/test/MyLogFile.log");  \u000a        logger.addHandler(fh);\u000a        SimpleFormatter formatter = new SimpleFormatter();  \u000a        fh.setFormatter(formatter);  \u000a\u000a        // the following statement is used to log any messages  \u000a        logger.info("My first log");  \u000a\u000a    } catch (SecurityException e) {  \u000a        e.printStackTrace();  \u000a    } catch (IOException e) {  \u000a        e.printStackTrace();  \u000a    }  \u000a\u000a    logger.info("Hi How r u?");  \u000a\u000a}\u000a
p3739
aVlogger.setUseParentHandlers(false);\u000a
p3740
aVApr 2, 2013 9:57:08 AM testing.MyLogger main  \u000aINFO: My first log  \u000aApr 2, 2013 9:57:08 AM testing.MyLogger main  \u000aINFO: Hi How r u?\u000a
p3741
atp3742
Rp3743
sg13
g14
sg15
S'Logger logger = Logger.getLogger("MyLog");\nFileHandler fh;'
p3744
sg16
S'fh = new FileHandler("C:/temp/test/MyLogFile.log");\nlogger.addHandler(fh);\nSimpleFormatter formatter = new SimpleFormatter();\nfh.setFormatter(formatter);\nlogger.info("My first log");'
p3745
sg18
g3
((lp3746
VHow to write logs in text file when using java.util.logging.Logger
p3747
atp3748
Rp3749
sa(dp3750
g2
g3
((lp3751
Vfh.setFormatter(new Formatter() {\u000a            @Override\u000a            public String format(LogRecord record) {\u000a                SimpleDateFormat logTime = new SimpleDateFormat("MM-dd-yyyy HH:mm:ss");\u000a                Calendar cal = new GregorianCalendar();\u000a                cal.setTimeInMillis(record.getMillis());\u000a                return record.getLevel()\u000a                        + logTime.format(cal.getTime())\u000a                        + " || "\u000a                        + record.getSourceClassName().substring(\u000a                                record.getSourceClassName().lastIndexOf(".")+1,\u000a                                record.getSourceClassName().length())\u000a                        + "."\u000a                        + record.getSourceMethodName()\u000a                        + "() : "\u000a                        + record.getMessage() + "\u005cn";\u000a            }\u000a        });\u000a
p3752
aVpublic class LoggingTester {\u000a    private final Logger logger = Logger.getLogger(LoggingTester.class\u000a            .getName());\u000a    private FileHandler fh = null;\u000a\u000a    public LoggingTester() {\u000a        //just to make our log file nicer :)\u000a        SimpleDateFormat format = new SimpleDateFormat("M-d_HHmmss");\u000a        try {\u000a            fh = new FileHandler("C:/temp/test/MyLogFile_"\u000a                + format.format(Calendar.getInstance().getTime()) + ".log");\u000a        } catch (Exception e) {\u000a            e.printStackTrace();\u000a        }\u000a\u000a        fh.setFormatter(new SimpleFormatter());\u000a        logger.addHandler(fh);\u000a    }\u000a\u000a    public void doLogging() {\u000a        logger.info("info msg");\u000a        logger.severe("error message");\u000a        logger.fine("fine message"); //won't show because to high level of logging\u000a    }\u000a}   \u000a
p3753
atp3754
Rp3755
sg7
I15758685
sg8
g3
((lp3756
Vfh.setFormatter(new Formatter() {\u000a            @Override\u000a            public String format(LogRecord record) {\u000a                SimpleDateFormat logTime = new SimpleDateFormat("MM-dd-yyyy HH:mm:ss");\u000a                Calendar cal = new GregorianCalendar();\u000a                cal.setTimeInMillis(record.getMillis());\u000a                return record.getLevel()\u000a                        + logTime.format(cal.getTime())\u000a                        + " || "\u000a                        + record.getSourceClassName().substring(\u000a                                record.getSourceClassName().lastIndexOf(".")+1,\u000a                                record.getSourceClassName().length())\u000a                        + "."\u000a                        + record.getSourceMethodName()\u000a                        + "() : "\u000a                        + record.getMessage() + "\u005cn";\u000a            }\u000a        });\u000a
p3757
aVpublic class LoggingTester {\u000a    private final Logger logger = Logger.getLogger(LoggingTester.class\u000a            .getName());\u000a    private FileHandler fh = null;\u000a\u000a    public LoggingTester() {\u000a        //just to make our log file nicer :)\u000a        SimpleDateFormat format = new SimpleDateFormat("M-d_HHmmss");\u000a        try {\u000a            fh = new FileHandler("C:/temp/test/MyLogFile_"\u000a                + format.format(Calendar.getInstance().getTime()) + ".log");\u000a        } catch (Exception e) {\u000a            e.printStackTrace();\u000a        }\u000a\u000a        fh.setFormatter(new SimpleFormatter());\u000a        logger.addHandler(fh);\u000a    }\u000a\u000a    public void doLogging() {\u000a        logger.info("info msg");\u000a        logger.severe("error message");\u000a        logger.fine("fine message"); //won't show because to high level of logging\u000a    }\u000a}   \u000a
p3758
atp3759
Rp3760
sg13
g14
sg15
S'public LoggingTester() {\n    SimpleDateFormat format = new SimpleDateFormat("M-d_HHmmss");\n    try {\n        fh = new FileHandler("C:/temp/test/MyLogFile_" + format.format(Calendar.getInstance().getTime()) + ".log");\n    } catch (Exception e) {\n        e.printStackTrace();\n    }\n    fh.setFormatter(new SimpleFormatter());\n    logger.addHandler(fh);\n}'
p3761
sg16
S'logger.info("info msg");\nlogger.severe("error message");\nlogger.fine("fine message");'
p3762
sg18
g3
((lp3763
g3747
atp3764
Rp3765
sa(dp3766
g2
g3
((lp3767
V    public class CallAPI extends AsyncTask<String, String, String> {\u000a\u000a        public CallAPI(){\u000a            //set context variables if required\u000a        }\u000a\u000a        @Override\u000a        protected void onPreExecute() {\u000a            super.onPreExecute();\u000a        }\u000a\u000a\u000a         @Override\u000a         protected String doInBackground(String... params) {\u000a\u000a            String urlString = params[0]; // URL to call\u000a\u000a            String resultToDisplay = "";\u000a\u000a            InputStream in = null;\u000a            try {\u000a\u000a                URL url = new URL(urlString);\u000a\u000a                HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();\u000a\u000a                in = new BufferedInputStream(urlConnection.getInputStream());\u000a\u000a\u000a            } catch (Exception e) {\u000a\u000a                System.out.println(e.getMessage());\u000a\u000a                return e.getMessage();\u000a\u000a            }\u000a\u000a            try {\u000a                resultToDisplay = IOUtils.toString(in, "UTF-8");\u000a                //to [convert][1] byte stream to a string \u000a            } \u000a            catch (IOException e) {\u000a                e.printStackTrace();\u000a            }\u000a            return resultToDisplay;\u000a        }\u000a\u000a\u000a         @Override\u000a        protected void onPostExecute(String result) {\u000a            //Update the UI\u000a        }\u000a
p3768
aVpublic void postData() {\u000a    // Create a new HttpClient and Post Header\u000a    HttpClient httpclient = new DefaultHttpClient();\u000a    HttpPost httppost = new HttpPost("http://www.yoursite.com/script.php");\u000a\u000a    try {\u000a        // Add your data\u000a        List<NameValuePair> nameValuePairs = new ArrayList<NameValuePair>(2);\u000a        nameValuePairs.add(new BasicNameValuePair("id", "12345"));\u000a        nameValuePairs.add(new BasicNameValuePair("stringdata", "Hi"));\u000a        httppost.setEntity(new UrlEncodedFormEntity(nameValuePairs));\u000a\u000a        // Execute HTTP Post Request\u000a        HttpResponse response = httpclient.execute(httppost);\u000a\u000a    } catch (ClientProtocolException e) {\u000a        // TODO Auto-generated catch block\u000a    } catch (IOException e) {\u000a        // TODO Auto-generated catch block\u000a    }\u000a} \u000a
p3769
atp3770
Rp3771
sg7
I2938502
sg8
g3
((lp3772
V    public class CallAPI extends AsyncTask<String, String, String> {\u000a\u000a        public CallAPI(){\u000a            //set context variables if required\u000a        }\u000a\u000a        @Override\u000a        protected void onPreExecute() {\u000a            super.onPreExecute();\u000a        }\u000a\u000a\u000a         @Override\u000a         protected String doInBackground(String... params) {\u000a\u000a            String urlString = params[0]; // URL to call\u000a\u000a            String resultToDisplay = "";\u000a\u000a            InputStream in = null;\u000a            try {\u000a\u000a                URL url = new URL(urlString);\u000a\u000a                HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();\u000a\u000a                in = new BufferedInputStream(urlConnection.getInputStream());\u000a\u000a\u000a            } catch (Exception e) {\u000a\u000a                System.out.println(e.getMessage());\u000a\u000a                return e.getMessage();\u000a\u000a            }\u000a\u000a            try {\u000a                resultToDisplay = IOUtils.toString(in, "UTF-8");\u000a                //to [convert][1] byte stream to a string \u000a            } \u000a            catch (IOException e) {\u000a                e.printStackTrace();\u000a            }\u000a            return resultToDisplay;\u000a        }\u000a\u000a\u000a         @Override\u000a        protected void onPostExecute(String result) {\u000a            //Update the UI\u000a        }\u000a
p3773
aVpublic void postData() {\u000a    // Create a new HttpClient and Post Header\u000a    HttpClient httpclient = new DefaultHttpClient();\u000a    HttpPost httppost = new HttpPost("http://www.yoursite.com/script.php");\u000a\u000a    try {\u000a        // Add your data\u000a        List<NameValuePair> nameValuePairs = new ArrayList<NameValuePair>(2);\u000a        nameValuePairs.add(new BasicNameValuePair("id", "12345"));\u000a        nameValuePairs.add(new BasicNameValuePair("stringdata", "Hi"));\u000a        httppost.setEntity(new UrlEncodedFormEntity(nameValuePairs));\u000a\u000a        // Execute HTTP Post Request\u000a        HttpResponse response = httpclient.execute(httppost);\u000a\u000a    } catch (ClientProtocolException e) {\u000a        // TODO Auto-generated catch block\u000a    } catch (IOException e) {\u000a        // TODO Auto-generated catch block\u000a    }\u000a} \u000a
p3774
atp3775
Rp3776
sg13
VSending POST data in Android
p3777
sg15
Nsg16
S'URL url = new URL(urlString);\nHttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();\nin = new BufferedInputStream(urlConnection.getInputStream());'
p3778
sg18
g3
((lp3779
VSending POST data in Android
p3780
atp3781
Rp3782
sa(dp3783
g2
g3
((lp3784
tp3785
Rp3786
sg7
I2938502
sg8
g3
((lp3787
V    public class CallAPI extends AsyncTask<String, String, String> {\u000a\u000a        public CallAPI(){\u000a            //set context variables if required\u000a        }\u000a\u000a        @Override\u000a        protected void onPreExecute() {\u000a            super.onPreExecute();\u000a        }\u000a\u000a\u000a         @Override\u000a         protected String doInBackground(String... params) {\u000a\u000a            String urlString = params[0]; // URL to call\u000a\u000a            String resultToDisplay = "";\u000a\u000a            InputStream in = null;\u000a            try {\u000a\u000a                URL url = new URL(urlString);\u000a\u000a                HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();\u000a\u000a                in = new BufferedInputStream(urlConnection.getInputStream());\u000a\u000a\u000a            } catch (Exception e) {\u000a\u000a                System.out.println(e.getMessage());\u000a\u000a                return e.getMessage();\u000a\u000a            }\u000a\u000a            try {\u000a                resultToDisplay = IOUtils.toString(in, "UTF-8");\u000a                //to [convert][1] byte stream to a string \u000a            } \u000a            catch (IOException e) {\u000a                e.printStackTrace();\u000a            }\u000a            return resultToDisplay;\u000a        }\u000a\u000a\u000a         @Override\u000a        protected void onPostExecute(String result) {\u000a            //Update the UI\u000a        }\u000a
p3788
aVpublic void postData() {\u000a    // Create a new HttpClient and Post Header\u000a    HttpClient httpclient = new DefaultHttpClient();\u000a    HttpPost httppost = new HttpPost("http://www.yoursite.com/script.php");\u000a\u000a    try {\u000a        // Add your data\u000a        List<NameValuePair> nameValuePairs = new ArrayList<NameValuePair>(2);\u000a        nameValuePairs.add(new BasicNameValuePair("id", "12345"));\u000a        nameValuePairs.add(new BasicNameValuePair("stringdata", "Hi"));\u000a        httppost.setEntity(new UrlEncodedFormEntity(nameValuePairs));\u000a\u000a        // Execute HTTP Post Request\u000a        HttpResponse response = httpclient.execute(httppost);\u000a\u000a    } catch (ClientProtocolException e) {\u000a        // TODO Auto-generated catch block\u000a    } catch (IOException e) {\u000a        // TODO Auto-generated catch block\u000a    }\u000a} \u000a
p3789
atp3790
Rp3791
sg13
VSending POST data in Android
p3792
sg15
Nsg16
S'HttpClient httpclient = new DefaultHttpClient();\nHttpPost httppost = new HttpPost("http://www.yoursite.com/script.php");\ntry {\n    List<NameValuePair> nameValuePairs = new ArrayList<NameValuePair>(2);\n    nameValuePairs.add(new BasicNameValuePair("id", "12345"));\n    nameValuePairs.add(new BasicNameValuePair("stringdata", "Hi"));\n    httppost.setEntity(new UrlEncodedFormEntity(nameValuePairs));\n    HttpResponse response = httpclient.execute(httppost);\n} catch (ClientProtocolException e) {\n} catch (IOException e) {\n}'
p3793
sg18
g3
((lp3794
g3780
atp3795
Rp3796
sa(dp3797
g2
g3
((lp3798
Vprivate String getPostDataString(HashMap<String, String> params) throws UnsupportedEncodingException{\u000a        StringBuilder result = new StringBuilder();\u000a        boolean first = true;\u000a        for(Map.Entry<String, String> entry : params.entrySet()){\u000a            if (first)\u000a                first = false;\u000a            else\u000a                result.append("&");\u000a\u000a            result.append(URLEncoder.encode(entry.getKey(), "UTF-8"));\u000a            result.append("=");\u000a            result.append(URLEncoder.encode(entry.getValue(), "UTF-8"));\u000a        }\u000a\u000a        return result.toString();\u000a    }\u000a
p3799
aVconn.setRequestMethod("POST");\u000a
p3800
aVpublic class Empty extends\u000a        AsyncTask<Void, Void, Boolean> {\u000a\u000a    String urlString = "http://www.yoursite.com/";\u000a\u000a    private final String TAG = "post json example";\u000a    private Context context;\u000a\u000a    private int advertisementId;\u000a\u000a    public Empty(Context contex, int advertisementId) {\u000a\u000a        this.context = contex;\u000a        this.advertisementId = advertisementId;\u000a    }\u000a\u000a    @Override\u000a    protected void onPreExecute() {\u000a        Log.e(TAG, "1 - RequestVoteTask is about to start...");\u000a\u000a    }\u000a\u000a    @Override\u000a    protected Boolean doInBackground(Void... params) {\u000a        boolean status = false;\u000a\u000a        String response = "";\u000a        Log.e(TAG, "2 - pre Request to response...");\u000a\u000a        try {\u000a            response = performPostCall(urlString, new HashMap<String, String>() {\u000a\u000a                        private static final long serialVersionUID = 1L;\u000a\u000a                        {\u000a                            put("Accept", "application/json");\u000a                            put("Content-Type", "application/json");\u000a                        }\u000a                    });\u000a            Log.e(TAG, "3 - give Response...");\u000a            Log.e(TAG, "4 " + response.toString());\u000a        } catch (Exception e) {\u000a            // displayLoding(false);\u000a\u000a            Log.e(TAG, "Error ...");\u000a        }\u000a        Log.e(TAG, "5 - after Response...");\u000a\u000a        if (!response.equalsIgnoreCase("")) {\u000a            try {\u000a                Log.e(TAG, "6 - response !empty...");\u000a                //\u000a                JSONObject jRoot = new JSONObject(response);\u000a                JSONObject d = jRoot.getJSONObject("d");\u000a\u000a                int ResultType = d.getInt("ResultType");\u000a                Log.e("ResultType", ResultType + "");\u000a\u000a                if (ResultType == 1) {\u000a\u000a                    status = true;\u000a\u000a                }\u000a\u000a            } catch (JSONException e) {\u000a                // displayLoding(false);\u000a                // e.printStackTrace();\u000a                Log.e(TAG, "Error " + e.getMessage());\u000a            } finally {\u000a\u000a            }\u000a        } else {\u000a            Log.e(TAG, "6 - response is empty...");\u000a\u000a            status = false;\u000a        }\u000a\u000a        return status;\u000a    }\u000a\u000a    @Override\u000a    protected void onPostExecute(Boolean result) {\u000a        //\u000a        Log.e(TAG, "7 - onPostExecute ...");\u000a\u000a        if (result) {\u000a            Log.e(TAG, "8 - Update UI ...");\u000a\u000a            // setUpdateUI(adv);\u000a        } else {\u000a            Log.e(TAG, "8 - Finish ...");\u000a\u000a            // displayLoding(false);\u000a            // finish();\u000a        }\u000a\u000a    }\u000a\u000a    public String performPostCall(String requestURL,\u000a                                  HashMap<String, String> postDataParams) {\u000a\u000a        URL url;\u000a        String response = "";\u000a        try {\u000a            url = new URL(requestURL);\u000a\u000a            HttpURLConnection conn = (HttpURLConnection) url.openConnection();\u000a            conn.setReadTimeout(context.getResources().getInteger(\u000a                    R.integer.maximum_timeout_to_server));\u000a            conn.setConnectTimeout(context.getResources().getInteger(\u000a                    R.integer.maximum_timeout_to_server));\u000a            conn.setRequestMethod("POST");\u000a            conn.setDoInput(true);\u000a            conn.setDoOutput(true);\u000a\u000a            conn.setRequestProperty("Content-Type", "application/json");\u000a\u000a            Log.e(TAG, "11 - url : " + requestURL);\u000a\u000a            /*\u000a             * JSON\u000a             */\u000a\u000a            JSONObject root = new JSONObject();\u000a            //\u000a            String token = Static.getPrefsToken(context);\u000a\u000a            root.put("securityInfo", Static.getSecurityInfo(context));\u000a            root.put("advertisementId", advertisementId);\u000a\u000a            Log.e(TAG, "12 - root : " + root.toString());\u000a\u000a            String str = root.toString();\u000a            byte[] outputBytes = str.getBytes("UTF-8");\u000a            OutputStream os = conn.getOutputStream();\u000a            os.write(outputBytes);\u000a\u000a            int responseCode = conn.getResponseCode();\u000a\u000a            Log.e(TAG, "13 - responseCode : " + responseCode);\u000a\u000a            if (responseCode == HttpsURLConnection.HTTP_OK) {\u000a                Log.e(TAG, "14 - HTTP_OK");\u000a\u000a                String line;\u000a                BufferedReader br = new BufferedReader(new InputStreamReader(\u000a                        conn.getInputStream()));\u000a                while ((line = br.readLine()) != null) {\u000a                    response += line;\u000a                }\u000a            } else {\u000a                Log.e(TAG, "14 - False - HTTP_OK");\u000a                response = "";\u000a            }\u000a        } catch (Exception e) {\u000a            e.printStackTrace();\u000a        }\u000a\u000a        return response;\u000a    }\u000a}\u000a
p3801
aVpublic String  performPostCall(String requestURL,\u000a        HashMap<String, String> postDataParams) {\u000a\u000a    URL url;\u000a    String response = "";\u000a    try {\u000a        url = new URL(requestURL);\u000a\u000a        HttpURLConnection conn = (HttpURLConnection) url.openConnection();\u000a        conn.setReadTimeout(15000);\u000a        conn.setConnectTimeout(15000);\u000a        conn.setRequestMethod("GET");\u000a        conn.setDoInput(true);\u000a        conn.setDoOutput(true);\u000a\u000a\u000a        OutputStream os = conn.getOutputStream();\u000a        BufferedWriter writer = new BufferedWriter(\u000a                new OutputStreamWriter(os, "UTF-8"));\u000a        writer.write(getPostDataString(postDataParams));\u000a\u000a        writer.flush();\u000a        writer.close();\u000a        os.close();\u000a        int responseCode=conn.getResponseCode();\u000a\u000a        if (responseCode == HttpsURLConnection.HTTP_OK) {\u000a            String line;\u000a            BufferedReader br=new BufferedReader(new InputStreamReader(conn.getInputStream()));\u000a            while ((line=br.readLine()) != null) {\u000a                response+=line;\u000a            }\u000a        }\u000a        else {\u000a            response="";    \u000a\u000a        }\u000a    } catch (Exception e) {\u000a        e.printStackTrace();\u000a    }\u000a\u000a    return response;\u000a}\u000a
p3802
atp3803
Rp3804
sg7
I2938502
sg8
g3
((lp3805
Vprivate String getPostDataString(HashMap<String, String> params) throws UnsupportedEncodingException{\u000a        StringBuilder result = new StringBuilder();\u000a        boolean first = true;\u000a        for(Map.Entry<String, String> entry : params.entrySet()){\u000a            if (first)\u000a                first = false;\u000a            else\u000a                result.append("&");\u000a\u000a            result.append(URLEncoder.encode(entry.getKey(), "UTF-8"));\u000a            result.append("=");\u000a            result.append(URLEncoder.encode(entry.getValue(), "UTF-8"));\u000a        }\u000a\u000a        return result.toString();\u000a    }\u000a
p3806
aVconn.setRequestMethod("POST");\u000a
p3807
aVpublic class Empty extends\u000a        AsyncTask<Void, Void, Boolean> {\u000a\u000a    String urlString = "http://www.yoursite.com/";\u000a\u000a    private final String TAG = "post json example";\u000a    private Context context;\u000a\u000a    private int advertisementId;\u000a\u000a    public Empty(Context contex, int advertisementId) {\u000a\u000a        this.context = contex;\u000a        this.advertisementId = advertisementId;\u000a    }\u000a\u000a    @Override\u000a    protected void onPreExecute() {\u000a        Log.e(TAG, "1 - RequestVoteTask is about to start...");\u000a\u000a    }\u000a\u000a    @Override\u000a    protected Boolean doInBackground(Void... params) {\u000a        boolean status = false;\u000a\u000a        String response = "";\u000a        Log.e(TAG, "2 - pre Request to response...");\u000a\u000a        try {\u000a            response = performPostCall(urlString, new HashMap<String, String>() {\u000a\u000a                        private static final long serialVersionUID = 1L;\u000a\u000a                        {\u000a                            put("Accept", "application/json");\u000a                            put("Content-Type", "application/json");\u000a                        }\u000a                    });\u000a            Log.e(TAG, "3 - give Response...");\u000a            Log.e(TAG, "4 " + response.toString());\u000a        } catch (Exception e) {\u000a            // displayLoding(false);\u000a\u000a            Log.e(TAG, "Error ...");\u000a        }\u000a        Log.e(TAG, "5 - after Response...");\u000a\u000a        if (!response.equalsIgnoreCase("")) {\u000a            try {\u000a                Log.e(TAG, "6 - response !empty...");\u000a                //\u000a                JSONObject jRoot = new JSONObject(response);\u000a                JSONObject d = jRoot.getJSONObject("d");\u000a\u000a                int ResultType = d.getInt("ResultType");\u000a                Log.e("ResultType", ResultType + "");\u000a\u000a                if (ResultType == 1) {\u000a\u000a                    status = true;\u000a\u000a                }\u000a\u000a            } catch (JSONException e) {\u000a                // displayLoding(false);\u000a                // e.printStackTrace();\u000a                Log.e(TAG, "Error " + e.getMessage());\u000a            } finally {\u000a\u000a            }\u000a        } else {\u000a            Log.e(TAG, "6 - response is empty...");\u000a\u000a            status = false;\u000a        }\u000a\u000a        return status;\u000a    }\u000a\u000a    @Override\u000a    protected void onPostExecute(Boolean result) {\u000a        //\u000a        Log.e(TAG, "7 - onPostExecute ...");\u000a\u000a        if (result) {\u000a            Log.e(TAG, "8 - Update UI ...");\u000a\u000a            // setUpdateUI(adv);\u000a        } else {\u000a            Log.e(TAG, "8 - Finish ...");\u000a\u000a            // displayLoding(false);\u000a            // finish();\u000a        }\u000a\u000a    }\u000a\u000a    public String performPostCall(String requestURL,\u000a                                  HashMap<String, String> postDataParams) {\u000a\u000a        URL url;\u000a        String response = "";\u000a        try {\u000a            url = new URL(requestURL);\u000a\u000a            HttpURLConnection conn = (HttpURLConnection) url.openConnection();\u000a            conn.setReadTimeout(context.getResources().getInteger(\u000a                    R.integer.maximum_timeout_to_server));\u000a            conn.setConnectTimeout(context.getResources().getInteger(\u000a                    R.integer.maximum_timeout_to_server));\u000a            conn.setRequestMethod("POST");\u000a            conn.setDoInput(true);\u000a            conn.setDoOutput(true);\u000a\u000a            conn.setRequestProperty("Content-Type", "application/json");\u000a\u000a            Log.e(TAG, "11 - url : " + requestURL);\u000a\u000a            /*\u000a             * JSON\u000a             */\u000a\u000a            JSONObject root = new JSONObject();\u000a            //\u000a            String token = Static.getPrefsToken(context);\u000a\u000a            root.put("securityInfo", Static.getSecurityInfo(context));\u000a            root.put("advertisementId", advertisementId);\u000a\u000a            Log.e(TAG, "12 - root : " + root.toString());\u000a\u000a            String str = root.toString();\u000a            byte[] outputBytes = str.getBytes("UTF-8");\u000a            OutputStream os = conn.getOutputStream();\u000a            os.write(outputBytes);\u000a\u000a            int responseCode = conn.getResponseCode();\u000a\u000a            Log.e(TAG, "13 - responseCode : " + responseCode);\u000a\u000a            if (responseCode == HttpsURLConnection.HTTP_OK) {\u000a                Log.e(TAG, "14 - HTTP_OK");\u000a\u000a                String line;\u000a                BufferedReader br = new BufferedReader(new InputStreamReader(\u000a                        conn.getInputStream()));\u000a                while ((line = br.readLine()) != null) {\u000a                    response += line;\u000a                }\u000a            } else {\u000a                Log.e(TAG, "14 - False - HTTP_OK");\u000a                response = "";\u000a            }\u000a        } catch (Exception e) {\u000a            e.printStackTrace();\u000a        }\u000a\u000a        return response;\u000a    }\u000a}\u000a
p3808
aVpublic String  performPostCall(String requestURL,\u000a        HashMap<String, String> postDataParams) {\u000a\u000a    URL url;\u000a    String response = "";\u000a    try {\u000a        url = new URL(requestURL);\u000a\u000a        HttpURLConnection conn = (HttpURLConnection) url.openConnection();\u000a        conn.setReadTimeout(15000);\u000a        conn.setConnectTimeout(15000);\u000a        conn.setRequestMethod("GET");\u000a        conn.setDoInput(true);\u000a        conn.setDoOutput(true);\u000a\u000a\u000a        OutputStream os = conn.getOutputStream();\u000a        BufferedWriter writer = new BufferedWriter(\u000a                new OutputStreamWriter(os, "UTF-8"));\u000a        writer.write(getPostDataString(postDataParams));\u000a\u000a        writer.flush();\u000a        writer.close();\u000a        os.close();\u000a        int responseCode=conn.getResponseCode();\u000a\u000a        if (responseCode == HttpsURLConnection.HTTP_OK) {\u000a            String line;\u000a            BufferedReader br=new BufferedReader(new InputStreamReader(conn.getInputStream()));\u000a            while ((line=br.readLine()) != null) {\u000a                response+=line;\u000a            }\u000a        }\u000a        else {\u000a            response="";    \u000a\u000a        }\u000a    } catch (Exception e) {\u000a        e.printStackTrace();\u000a    }\u000a\u000a    return response;\u000a}\u000a
p3809
atp3810
Rp3811
sg13
VSending POST data in Android
p3812
sg15
S'StringBuilder result = new StringBuilder();\nboolean first = true;\nfor (Map.Entry<String, String> entry : params.entrySet()) {\n    if (first)\n        first = false;\n    else\n        result.append("&");\n    result.append(URLEncoder.encode(entry.getKey(), "UTF-8"));\n    result.append("=");\n    result.append(URLEncoder.encode(entry.getValue(), "UTF-8"));\n}'
p3813
sg16
S'URL url;\nString response = "";\ntry {\n    url = new URL(requestURL);\n    HttpURLConnection conn = (HttpURLConnection) url.openConnection();\n    conn.setReadTimeout(15000);\n    conn.setConnectTimeout(15000);\n    conn.setRequestMethod("GET");\n    conn.setDoInput(true);\n    conn.setDoOutput(true);\n    OutputStream os = conn.getOutputStream();\n    BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(os, "UTF-8"));\n    writer.write(getPostDataString(postDataParams));\n    writer.flush();\n    writer.close();\n    os.close();\n    int responseCode = conn.getResponseCode();\n    if (responseCode == HttpsURLConnection.HTTP_OK) {\n        String line;\n        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));\n        while ((line = br.readLine()) != null) {\n            response += line;\n        }\n    } else {\n        response = "";\n    }\n} catch (Exception e) {\n    e.printStackTrace();\n}'
p3814
sg18
g3
((lp3815
g3780
atp3816
Rp3817
sa(dp3818
g2
g3
((lp3819
tp3820
Rp3821
sg7
I20389890
sg8
g3
((lp3822
V/**\u000a * Returns a psuedo-random number between min and max, inclusive.\u000a * The difference between min and max can be at most\u000a * <code>Integer.MAX_VALUE - 1</code>.\u000a *\u000a * @param min Minimim value\u000a * @param max Maximim value.  Must be greater than min.\u000a * @return Integer between min and max, inclusive.\u000a * @see java.util.Random#nextInt(int)\u000a */\u000apublic static int randInt(int min, int max) {\u000a\u000a    // Usually this can be a field rather than a method variable\u000a    Random rand = new Random();\u000a\u000a    // nextInt is normally exclusive of the top value,\u000a    // so add 1 to make it inclusive\u000a    int randomNum = rand.nextInt((max - min) + 1) + min;\u000a\u000a    return randomNum;\u000a}\u000a
p3823
atp3824
Rp3825
sg13
VGenerating a Random Number between 1 and 10 Java
p3826
sg15
Nsg16
S'int randomNum = rand.nextInt((max - min) + 1) + min;'
p3827
sg18
g3
((lp3828
VGenerating a Random Number between 1 and 10 Java
p3829
atp3830
Rp3831
sa(dp3832
g2
g3
((lp3833
VRandom rn = new Random();\u000a\u000afor(int i =0; i < 100; i++)\u000a{\u000a    int answer = rn.nextInt(10) + 1;\u000a    System.out.println(answer);\u000a}\u000a
p3834
aVimport java.util.Random;\u000a
p3835
atp3836
Rp3837
sg7
I20389890
sg8
g3
((lp3838
VRandom rn = new Random();\u000a\u000afor(int i =0; i < 100; i++)\u000a{\u000a    int answer = rn.nextInt(10) + 1;\u000a    System.out.println(answer);\u000a}\u000a
p3839
aVimport java.util.Random;\u000a
p3840
atp3841
Rp3842
sg13
VGenerating a Random Number between 1 and 10 Java
p3843
sg15
Nsg16
S'int answer = rn.nextInt(10) + 1;'
p3844
sg18
g3
((lp3845
g3829
atp3846
Rp3847
sa(dp3848
g2
g3
((lp3849
tp3850
Rp3851
sg7
I14676407
sg8
g3
((lp3852
Vpublic void listf(String directoryName, ArrayList<File> files) {\u000a    File directory = new File(directoryName);\u000a\u000a    // get all the files from a directory\u000a    File[] fList = directory.listFiles();\u000a    for (File file : fList) {\u000a        if (file.isFile()) {\u000a            files.add(file);\u000a        } else if (file.isDirectory()) {\u000a            listf(file.getAbsolutePath(), files);\u000a        }\u000a    }\u000a}\u000a
p3853
atp3854
Rp3855
sg13
Vlist all files in the folder and also sub folders
p3856
sg15
Nsg16
S'File directory = new File(directoryName);\nFile[] fList = directory.listFiles();\nfor (File file : fList) {\n    if (file.isFile()) {\n        files.add(file);\n    } else if (file.isDirectory()) {\n        listf(file.getAbsolutePath(), files);\n    }\n}'
p3857
sg18
g3
((lp3858
Vlist all files in the folder and also sub folders
p3859
atp3860
Rp3861
sa(dp3862
g2
g3
((lp3863
tp3864
Rp3865
sg7
I14676407
sg8
g3
((lp3866
V    public static List<File> listf(String directoryName) {\u000a        File directory = new File(directoryName);\u000a\u000a        List<File> resultList = new ArrayList<File>();\u000a\u000a        // get all the files from a directory\u000a        File[] fList = directory.listFiles();\u000a        resultList.addAll(Arrays.asList(fList));\u000a        for (File file : fList) {\u000a            if (file.isFile()) {\u000a                System.out.println(file.getAbsolutePath());\u000a            } else if (file.isDirectory()) {\u000a                resultList.addAll(listf(file.getAbsolutePath()));\u000a            }\u000a        }\u000a        //System.out.println(fList);\u000a        return resultList;\u000a    } \u000a
p3867
atp3868
Rp3869
sg13
Vlist all files in the folder and also sub folders
p3870
sg15
Nsg16
S'File directory = new File(directoryName);\nList<File> resultList = new ArrayList<File>();\nFile[] fList = directory.listFiles();\nresultList.addAll(Arrays.asList(fList));\nfor (File file : fList) {\n    if (file.isFile()) {\n        System.out.println(file.getAbsolutePath());\n    } else if (file.isDirectory()) {\n        resultList.addAll(listf(file.getAbsolutePath()));\n    }\n}'
p3871
sg18
g3
((lp3872
g3859
atp3873
Rp3874
sa(dp3875
g2
g3
((lp3876
tp3877
Rp3878
sg7
I909843
sg8
g3
((lp3879
Vpublic class A {\u000a    static int UNIQUE_ID = 0;\u000a    int uid = ++UNIQUE_ID;\u000a\u000a    public int hashCode() {\u000a        return uid;\u000a    }\u000a}\u000a
p3880
atp3881
Rp3882
sg13
g14
sg15
Nsg16
S'public class A {\n\n    static int UNIQUE_ID = 0;\n\n    int uid = ++UNIQUE_ID;\n\n    public int hashCode() {\n        return uid;\n    }\n}'
p3883
sg18
g3
((lp3884
VHow to get the unique ID of an object which overrides hashCode()?
p3885
atp3886
Rp3887
sa(dp3888
g2
g3
((lp3889
VFile f = new File(path);\u000a
p3890
atp3891
Rp3892
sg7
I8721262
sg8
g3
((lp3893
Vlong length = f.length();\u000a
p3894
atp3895
Rp3896
sg13
g14
sg15
S'File f = new File(path);'
p3897
sg16
S'long length = f.length();'
p3898
sg18
g3
((lp3899
VHow to get file size in Java
p3900
atp3901
Rp3902
sa(dp3903
g2
g3
((lp3904
VFile f = new File(path);\u000a
p3905
atp3906
Rp3907
sg7
I8721262
sg8
g3
((lp3908
Vlong size = f.length();\u000a
p3909
atp3910
Rp3911
sg13
g14
sg15
S'File f = new File(path);'
p3912
sg16
S'long size = f.length();'
p3913
sg18
g3
((lp3914
g3900
atp3915
Rp3916
sa(dp3917
g2
g3
((lp3918
tp3919
Rp3920
sg7
I7074402
sg8
g3
((lp3921
VArrayList<Integer> str=new ArrayList<Integer>();\u000a    str.add(0);\u000a    str.add(1);\u000a    str.add(2);\u000a    str.add(3); \u000a    //Result = [0, 1, 2, 3]\u000a    str.add(1, 11);\u000a    str.add(2, 12);\u000a    //Result = [0, 11, 12, 1, 2, 3]\u000a
p3922
atp3923
Rp3924
sg13
g14
sg15
Nsg16
S'str.add(1, 11);'
p3925
sg18
g3
((lp3926
VHow to insert an object in an ArrayList at a specific position
p3927
atp3928
Rp3929
sa(dp3930
g2
g3
((lp3931
VArrayList<Integer> str=new ArrayList<Integer>();\u000a    str.add(0);\u000a    str.add(1);\u000a    str.add(2);\u000a    str.add(3); \u000a    //Result = [0, 1, 2, 3]\u000a    str.add(1, 11);\u000a    str.add(2, 12);\u000a    //Result = [0, 11, 12, 1, 2, 3]\u000a
p3932
atp3933
Rp3934
sg7
I7074402
sg8
g3
((lp3935
VArrayList<Integer> str=new ArrayList<Integer>();\u000a    str.add(0);\u000a    str.add(1);\u000a    str.add(2);\u000a    str.add(3); \u000a    //Result = [0, 1, 2, 3]\u000a    str.add(1, 11);\u000a    str.add(2, 12);\u000a    //Result = [0, 11, 12, 1, 2, 3]\u000a
p3936
atp3937
Rp3938
sg13
g14
sg15
S'ArrayList<Integer> str = new ArrayList<Integer>();\nstr.add(0);\nstr.add(1);\nstr.add(2);\nstr.add(3);'
p3939
sg16
S'str.add(2, 12);'
p3940
sg18
g3
((lp3941
g3927
atp3942
Rp3943
sa(dp3944
g2
g3
((lp3945
tp3946
Rp3947
sg7
I7074402
sg8
g3
((lp3948
tp3949
Rp3950
sg13
g14
sg15
Nsg16
S'arrayList.add(1, "INSERTED ELEMENT");'
p3951
sg18
g3
((lp3952
g3927
atp3953
Rp3954
sa(dp3955
g2
g3
((lp3956
tp3957
Rp3958
sg7
I4802887
sg8
g3
((lp3959
Vprivate transient String name;\u000a
p3960
atp3961
Rp3962
sg13
g14
sg15
Nsg16
S'private transient String name;'
p3963
sg18
g3
((lp3964
VGson: How to exclude specific fields from Serialization without annotations
p3965
atp3966
Rp3967
sa(dp3968
g2
g3
((lp3969
tp3970
Rp3971
sg7
I4802887
sg8
g3
((lp3972
VGson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();\u000a
p3973
aV@Expose private Long id;\u000a
p3974
atp3975
Rp3976
sg13
g14
sg15
Nsg16
S'@Expose\nprivate Long id;\nGson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();'
p3977
sg18
g3
((lp3978
g3965
atp3979
Rp3980
sa(dp3981
g2
g3
((lp3982
V    Gson gson = new GsonBuilder()\u000a        .setExclusionStrategies(new TestExclStrat())\u000a        //.serializeNulls() <-- uncomment to serialize NULL fields as well\u000a        .create();\u000a    Student src = new Student();\u000a    String json = gson.toJson(src);\u000a    System.out.println(json);\u000a
p3983
aVpublic boolean shouldSkipField(FieldAttributes f) {\u000a    return f.getName().toLowerCase().contains("name"); \u000a}\u000a
p3984
aV    public class TestExclStrat implements ExclusionStrategy {\u000a\u000a        private Class<?> c;\u000a        private String fieldName;\u000a        public TestExclStrat(String fqfn) throws SecurityException, NoSuchFieldException, ClassNotFoundException\u000a        {\u000a            this.c = Class.forName(fqfn.substring(0, fqfn.lastIndexOf(".")));\u000a            this.fieldName = fqfn.substring(fqfn.lastIndexOf(".")+1);\u000a        }\u000a        public boolean shouldSkipClass(Class<?> arg0) {\u000a            return false;\u000a        }\u000a\u000a        public boolean shouldSkipField(FieldAttributes f) {\u000a\u000a            return (f.getDeclaringClass() == c && f.getName().equals(fieldName));\u000a        }\u000a\u000a    }\u000a
p3985
aV    Gson gson = new GsonBuilder()\u000a        .setExclusionStrategies(new TestExclStrat("in.naishe.test.Country.name"))\u000a        //.serializeNulls()\u000a        .create();\u000a    Student src = new Student();\u000a    String json = gson.toJson(src);\u000a    System.out.println(json); \u000a
p3986
aV    public class TestExclStrat implements ExclusionStrategy {\u000a\u000a        public boolean shouldSkipClass(Class<?> arg0) {\u000a            return false;\u000a        }\u000a\u000a        public boolean shouldSkipField(FieldAttributes f) {\u000a\u000a            return (f.getDeclaringClass() == Student.class && f.getName().equals("firstName"))||\u000a            (f.getDeclaringClass() == Country.class && f.getName().equals("name"));\u000a        }\u000a\u000a    }\u000a
p3987
atp3988
Rp3989
sg7
I4802887
sg8
g3
((lp3990
V    Gson gson = new GsonBuilder()\u000a        .setExclusionStrategies(new TestExclStrat())\u000a        //.serializeNulls() <-- uncomment to serialize NULL fields as well\u000a        .create();\u000a    Student src = new Student();\u000a    String json = gson.toJson(src);\u000a    System.out.println(json);\u000a
p3991
aVpublic boolean shouldSkipField(FieldAttributes f) {\u000a    return f.getName().toLowerCase().contains("name"); \u000a}\u000a
p3992
aV    public class TestExclStrat implements ExclusionStrategy {\u000a\u000a        private Class<?> c;\u000a        private String fieldName;\u000a        public TestExclStrat(String fqfn) throws SecurityException, NoSuchFieldException, ClassNotFoundException\u000a        {\u000a            this.c = Class.forName(fqfn.substring(0, fqfn.lastIndexOf(".")));\u000a            this.fieldName = fqfn.substring(fqfn.lastIndexOf(".")+1);\u000a        }\u000a        public boolean shouldSkipClass(Class<?> arg0) {\u000a            return false;\u000a        }\u000a\u000a        public boolean shouldSkipField(FieldAttributes f) {\u000a\u000a            return (f.getDeclaringClass() == c && f.getName().equals(fieldName));\u000a        }\u000a\u000a    }\u000a
p3993
aV    Gson gson = new GsonBuilder()\u000a        .setExclusionStrategies(new TestExclStrat("in.naishe.test.Country.name"))\u000a        //.serializeNulls()\u000a        .create();\u000a    Student src = new Student();\u000a    String json = gson.toJson(src);\u000a    System.out.println(json); \u000a
p3994
aV    public class TestExclStrat implements ExclusionStrategy {\u000a\u000a        public boolean shouldSkipClass(Class<?> arg0) {\u000a            return false;\u000a        }\u000a\u000a        public boolean shouldSkipField(FieldAttributes f) {\u000a\u000a            return (f.getDeclaringClass() == Student.class && f.getName().equals("firstName"))||\u000a            (f.getDeclaringClass() == Country.class && f.getName().equals("name"));\u000a        }\u000a\u000a    }\u000a
p3995
atp3996
Rp3997
sg13
g14
sg15
S'public class TestExclStrat implements ExclusionStrategy {\n\n    public boolean shouldSkipClass(Class<?> arg0) {\n        return false;\n    }\n\n    public boolean shouldSkipField(FieldAttributes f) {\n        return (f.getDeclaringClass() == Student.class && f.getName().equals("firstName")) || (f.getDeclaringClass() == Country.class && f.getName().equals("name"));\n    }\n}'
p3998
sg16
S'Gson gson = new GsonBuilder().setExclusionStrategies(new TestExclStrat()).create();\nStudent src = new Student();\nString json = gson.toJson(src);'
p3999
sg18
g3
((lp4000
g3965
atp4001
Rp4002
sa(dp4003
g2
g3
((lp4004
V    Gson gson = new GsonBuilder()\u000a        .setExclusionStrategies(new TestExclStrat())\u000a        //.serializeNulls() <-- uncomment to serialize NULL fields as well\u000a        .create();\u000a    Student src = new Student();\u000a    String json = gson.toJson(src);\u000a    System.out.println(json);\u000a
p4005
aVpublic boolean shouldSkipField(FieldAttributes f) {\u000a    return f.getName().toLowerCase().contains("name"); \u000a}\u000a
p4006
aV    public class TestExclStrat implements ExclusionStrategy {\u000a\u000a        private Class<?> c;\u000a        private String fieldName;\u000a        public TestExclStrat(String fqfn) throws SecurityException, NoSuchFieldException, ClassNotFoundException\u000a        {\u000a            this.c = Class.forName(fqfn.substring(0, fqfn.lastIndexOf(".")));\u000a            this.fieldName = fqfn.substring(fqfn.lastIndexOf(".")+1);\u000a        }\u000a        public boolean shouldSkipClass(Class<?> arg0) {\u000a            return false;\u000a        }\u000a\u000a        public boolean shouldSkipField(FieldAttributes f) {\u000a\u000a            return (f.getDeclaringClass() == c && f.getName().equals(fieldName));\u000a        }\u000a\u000a    }\u000a
p4007
aV    Gson gson = new GsonBuilder()\u000a        .setExclusionStrategies(new TestExclStrat("in.naishe.test.Country.name"))\u000a        //.serializeNulls()\u000a        .create();\u000a    Student src = new Student();\u000a    String json = gson.toJson(src);\u000a    System.out.println(json); \u000a
p4008
aV    public class TestExclStrat implements ExclusionStrategy {\u000a\u000a        public boolean shouldSkipClass(Class<?> arg0) {\u000a            return false;\u000a        }\u000a\u000a        public boolean shouldSkipField(FieldAttributes f) {\u000a\u000a            return (f.getDeclaringClass() == Student.class && f.getName().equals("firstName"))||\u000a            (f.getDeclaringClass() == Country.class && f.getName().equals("name"));\u000a        }\u000a\u000a    }\u000a
p4009
atp4010
Rp4011
sg7
I4802887
sg8
g3
((lp4012
V    Gson gson = new GsonBuilder()\u000a        .setExclusionStrategies(new TestExclStrat())\u000a        //.serializeNulls() <-- uncomment to serialize NULL fields as well\u000a        .create();\u000a    Student src = new Student();\u000a    String json = gson.toJson(src);\u000a    System.out.println(json);\u000a
p4013
aVpublic boolean shouldSkipField(FieldAttributes f) {\u000a    return f.getName().toLowerCase().contains("name"); \u000a}\u000a
p4014
aV    public class TestExclStrat implements ExclusionStrategy {\u000a\u000a        private Class<?> c;\u000a        private String fieldName;\u000a        public TestExclStrat(String fqfn) throws SecurityException, NoSuchFieldException, ClassNotFoundException\u000a        {\u000a            this.c = Class.forName(fqfn.substring(0, fqfn.lastIndexOf(".")));\u000a            this.fieldName = fqfn.substring(fqfn.lastIndexOf(".")+1);\u000a        }\u000a        public boolean shouldSkipClass(Class<?> arg0) {\u000a            return false;\u000a        }\u000a\u000a        public boolean shouldSkipField(FieldAttributes f) {\u000a\u000a            return (f.getDeclaringClass() == c && f.getName().equals(fieldName));\u000a        }\u000a\u000a    }\u000a
p4015
aV    Gson gson = new GsonBuilder()\u000a        .setExclusionStrategies(new TestExclStrat("in.naishe.test.Country.name"))\u000a        //.serializeNulls()\u000a        .create();\u000a    Student src = new Student();\u000a    String json = gson.toJson(src);\u000a    System.out.println(json); \u000a
p4016
aV    public class TestExclStrat implements ExclusionStrategy {\u000a\u000a        public boolean shouldSkipClass(Class<?> arg0) {\u000a            return false;\u000a        }\u000a\u000a        public boolean shouldSkipField(FieldAttributes f) {\u000a\u000a            return (f.getDeclaringClass() == Student.class && f.getName().equals("firstName"))||\u000a            (f.getDeclaringClass() == Country.class && f.getName().equals("name"));\u000a        }\u000a\u000a    }\u000a
p4017
atp4018
Rp4019
sg13
g14
sg15
S'public class TestExclStrat implements ExclusionStrategy {\n\n    private Class<?> c;\n\n    private String fieldName;\n\n    public TestExclStrat(String fqfn) throws SecurityException, NoSuchFieldException, ClassNotFoundException {\n        this.c = Class.forName(fqfn.substring(0, fqfn.lastIndexOf(".")));\n        this.fieldName = fqfn.substring(fqfn.lastIndexOf(".") + 1);\n    }\n\n    public boolean shouldSkipClass(Class<?> arg0) {\n        return false;\n    }\n\n    public boolean shouldSkipField(FieldAttributes f) {\n        return (f.getDeclaringClass() == c && f.getName().equals(fieldName));\n    }\n}'
p4020
sg16
S'Gson gson = new GsonBuilder().setExclusionStrategies(new TestExclStrat("in.naishe.test.Country.name")).create();\nStudent src = new Student();\nString json = gson.toJson(src);'
p4021
sg18
g3
((lp4022
g3965
atp4023
Rp4024
sa(dp4025
g2
g3
((lp4026
Vpackage test;\u000a\u000aimport java.lang.reflect.Field;\u000aimport java.lang.reflect.ParameterizedType;\u000aimport java.util.ArrayList;\u000aimport java.util.List;\u000a\u000apublic class Test {\u000a\u000a    List<String> stringList = new ArrayList<String>();\u000a    List<Integer> integerList = new ArrayList<Integer>();\u000a\u000a    public static void main(String... args) throws Exception {\u000a        Field stringListField = Test.class.getDeclaredField("stringList");\u000a        ParameterizedType stringListType = (ParameterizedType) stringListField.getGenericType();\u000a        Class<?> stringListClass = (Class<?>) stringListType.getActualTypeArguments()[0];\u000a        System.out.println(stringListClass); // class java.lang.String.\u000a\u000a        Field integerListField = Test.class.getDeclaredField("integerList");\u000a        ParameterizedType integerListType = (ParameterizedType) integerListField.getGenericType();\u000a        Class<?> integerListClass = (Class<?>) integerListType.getActualTypeArguments()[0];\u000a        System.out.println(integerListClass); // class java.lang.Integer.\u000a    }\u000a}\u000a
p4027
atp4028
Rp4029
sg7
I1942644
sg8
g3
((lp4030
Vpackage test;\u000a\u000aimport java.lang.reflect.Field;\u000aimport java.lang.reflect.ParameterizedType;\u000aimport java.util.ArrayList;\u000aimport java.util.List;\u000a\u000apublic class Test {\u000a\u000a    List<String> stringList = new ArrayList<String>();\u000a    List<Integer> integerList = new ArrayList<Integer>();\u000a\u000a    public static void main(String... args) throws Exception {\u000a        Field stringListField = Test.class.getDeclaredField("stringList");\u000a        ParameterizedType stringListType = (ParameterizedType) stringListField.getGenericType();\u000a        Class<?> stringListClass = (Class<?>) stringListType.getActualTypeArguments()[0];\u000a        System.out.println(stringListClass); // class java.lang.String.\u000a\u000a        Field integerListField = Test.class.getDeclaredField("integerList");\u000a        ParameterizedType integerListType = (ParameterizedType) integerListField.getGenericType();\u000a        Class<?> integerListClass = (Class<?>) integerListType.getActualTypeArguments()[0];\u000a        System.out.println(integerListClass); // class java.lang.Integer.\u000a    }\u000a}\u000a
p4031
atp4032
Rp4033
sg13
VGet generic type of java.util.List
p4034
sg15
Nsg16
S'Field stringListField = Test.class.getDeclaredField("stringList");\nParameterizedType stringListType = (ParameterizedType) stringListField.getGenericType();\nClass<?> stringListClass = (Class<?>) stringListType.getActualTypeArguments()[0];'
p4035
sg18
g3
((lp4036
VGet generic type of java.util.List
p4037
atp4038
Rp4039
sa(dp4040
g2
g3
((lp4041
Vpackage test;\u000a\u000aimport java.lang.reflect.Field;\u000aimport java.lang.reflect.ParameterizedType;\u000aimport java.util.ArrayList;\u000aimport java.util.List;\u000a\u000apublic class Test {\u000a\u000a    List<String> stringList = new ArrayList<String>();\u000a    List<Integer> integerList = new ArrayList<Integer>();\u000a\u000a    public static void main(String... args) throws Exception {\u000a        Field stringListField = Test.class.getDeclaredField("stringList");\u000a        ParameterizedType stringListType = (ParameterizedType) stringListField.getGenericType();\u000a        Class<?> stringListClass = (Class<?>) stringListType.getActualTypeArguments()[0];\u000a        System.out.println(stringListClass); // class java.lang.String.\u000a\u000a        Field integerListField = Test.class.getDeclaredField("integerList");\u000a        ParameterizedType integerListType = (ParameterizedType) integerListField.getGenericType();\u000a        Class<?> integerListClass = (Class<?>) integerListType.getActualTypeArguments()[0];\u000a        System.out.println(integerListClass); // class java.lang.Integer.\u000a    }\u000a}\u000a
p4042
atp4043
Rp4044
sg7
I1942644
sg8
g3
((lp4045
Vpackage test;\u000a\u000aimport java.lang.reflect.Field;\u000aimport java.lang.reflect.ParameterizedType;\u000aimport java.util.ArrayList;\u000aimport java.util.List;\u000a\u000apublic class Test {\u000a\u000a    List<String> stringList = new ArrayList<String>();\u000a    List<Integer> integerList = new ArrayList<Integer>();\u000a\u000a    public static void main(String... args) throws Exception {\u000a        Field stringListField = Test.class.getDeclaredField("stringList");\u000a        ParameterizedType stringListType = (ParameterizedType) stringListField.getGenericType();\u000a        Class<?> stringListClass = (Class<?>) stringListType.getActualTypeArguments()[0];\u000a        System.out.println(stringListClass); // class java.lang.String.\u000a\u000a        Field integerListField = Test.class.getDeclaredField("integerList");\u000a        ParameterizedType integerListType = (ParameterizedType) integerListField.getGenericType();\u000a        Class<?> integerListClass = (Class<?>) integerListType.getActualTypeArguments()[0];\u000a        System.out.println(integerListClass); // class java.lang.Integer.\u000a    }\u000a}\u000a
p4046
atp4047
Rp4048
sg13
VGet generic type of java.util.List
p4049
sg15
Nsg16
S'Field integerListField = Test.class.getDeclaredField("integerList");\nParameterizedType integerListType = (ParameterizedType) integerListField.getGenericType();\nClass<?> integerListClass = (Class<?>) integerListType.getActualTypeArguments()[0];'
p4050
sg18
g3
((lp4051
g4037
atp4052
Rp4053
sa(dp4054
g2
g3
((lp4055
VCollections.sort(recipes,new RecipeCompare());\u000a
p4056
aVclass RecipeCompare implements Comparator<Recipe> {\u000a\u000a    @Override\u000a    public int compare(Recipe o1, Recipe o2) {\u000a        // write comparison logic here like below , it's just a sample\u000a        return o1.getID().compareTo(o2.getID());\u000a    }\u000a}\u000a
p4057
atp4058
Rp4059
sg7
I16425127
sg8
g3
((lp4060
VCollections.sort(recipes,new RecipeCompare());\u000a
p4061
aVclass RecipeCompare implements Comparator<Recipe> {\u000a\u000a    @Override\u000a    public int compare(Recipe o1, Recipe o2) {\u000a        // write comparison logic here like below , it's just a sample\u000a        return o1.getID().compareTo(o2.getID());\u000a    }\u000a}\u000a
p4062
atp4063
Rp4064
sg13
g14
sg15
S'class RecipeCompare implements Comparator<Recipe> {\n\n    @Override\n    public int compare(Recipe o1, Recipe o2) {\n        return o1.getID().compareTo(o2.getID());\n    }\n}'
p4065
sg16
S'Collections.sort(recipes, new RecipeCompare());'
p4066
sg18
g3
((lp4067
V<p>so I've been searching here on StackOverflow for the last few hours on how to do this thing with Collections.sort() on JAVA. I saw a lot of posts about this topic, but none of them had what I need. Correct me if I'm wrong.</p>\u000a\u000a<p>So here's the thing. I got an object <code>Recipe</code> that implements <code>Comparable<Recipe></code> :</p>\u000a\u000a<pre><code>public int compareTo(Recipe otherRecipe) {\u000a    return this.inputRecipeName.compareTo(otherRecipe.inputRecipeName);\u000a}\u000a</code></pre>\u000a\u000a<p>I've done that so I'm able to sort the <code>List</code> alphabetically in the following method:</p>\u000a\u000a<pre><code>public static Collection<Recipe> getRecipes(){\u000a    List<Recipe> recipes = new ArrayList<Recipe>(RECIPE_MAP.values());\u000a    Collections.sort(recipes);\u000a    return recipes;\u000a}\u000a</code></pre>\u000a\u000a<p>But now, in a different method, lets call it <code>getRecipesSort()</code>, I want to sort the same list but numerically, comparing a variable that contains their ID. To make things worse, the ID field is of the type <code>String</code>.</p>\u000a\u000a<p>Can anyone help me on this please ?\u000aThanks.</p>\u000a
p4068
atp4069
Rp4070
sa(dp4071
g2
g3
((lp4072
tp4073
Rp4074
sg7
I16425127
sg8
g3
((lp4075
tp4076
Rp4077
sg13
g14
sg15
Nsg16
S'Collections.sort(recipes, (Recipe r1, Recipe r2) -> r1.getID().compareTo(r2.getID()));'
p4078
sg18
g3
((lp4079
V<p>so I've been searching here on StackOverflow for the last few hours on how to do this thing with Collections.sort() on JAVA. I saw a lot of posts about this topic, but none of them had what I need. Correct me if I'm wrong.</p>\u000a\u000a<p>So here's the thing. I got an object <code>Recipe</code> that implements <code>Comparable<Recipe></code> :</p>\u000a\u000a<pre><code>public int compareTo(Recipe otherRecipe) {\u000a    return this.inputRecipeName.compareTo(otherRecipe.inputRecipeName);\u000a}\u000a</code></pre>\u000a\u000a<p>I've done that so I'm able to sort the <code>List</code> alphabetically in the following method:</p>\u000a\u000a<pre><code>public static Collection<Recipe> getRecipes(){\u000a    List<Recipe> recipes = new ArrayList<Recipe>(RECIPE_MAP.values());\u000a    Collections.sort(recipes);\u000a    return recipes;\u000a}\u000a</code></pre>\u000a\u000a<p>But now, in a different method, lets call it <code>getRecipesSort()</code>, I want to sort the same list but numerically, comparing a variable that contains their ID. To make things worse, the ID field is of the type <code>String</code>.</p>\u000a\u000a<p>Can anyone help me on this please ?\u000aThanks.</p>\u000a
p4080
atp4081
Rp4082
sa(dp4083
g2
g3
((lp4084
tp4085
Rp4086
sg7
I15874117
sg8
g3
((lp4087
Vfinal Handler handler = new Handler();\u000ahandler.postDelayed(new Runnable() {\u000a    @Override\u000a    public void run() {\u000a        // Do something after 5s = 5000ms\u000a        buttons[inew][jnew].setBackgroundColor(Color.BLACK);\u000a    }\u000a}, 5000);\u000a
p4088
atp4089
Rp4090
sg13
g14
sg15
Nsg16
S'final Handler handler = new Handler();\nhandler.postDelayed(new Runnable() {\n\n    @Override\n    public void run() {\n        buttons[inew][jnew].setBackgroundColor(Color.BLACK);\n    }\n}, 5000);'
p4091
sg18
g3
((lp4092
VHow to set delay in android?
p4093
atp4094
Rp4095
sa(dp4096
g2
g3
((lp4097
tp4098
Rp4099
sg7
I15874117
sg8
g3
((lp4100
V   new CountDownTimer(30000, 1000) {\u000a         public void onFinish() {\u000a             // When timer is finished \u000a             // Execute your code here\u000a     }\u000a\u000a     public void onTick(long millisUntilFinished) {\u000a              // millisUntilFinished    The amount of time until finished.\u000a     }\u000a   }.start();\u000a
p4101
atp4102
Rp4103
sg13
g14
sg15
Nsg16
S'new CountDownTimer(30000, 1000) {\n\n    public void onFinish() {\n    }\n\n    public void onTick(long millisUntilFinished) {\n    }\n}.start();'
p4104
sg18
g3
((lp4105
g4093
atp4106
Rp4107
sa(dp4108
g2
g3
((lp4109
tp4110
Rp4111
sg7
I15874117
sg8
g3
((lp4112
tp4113
Rp4114
sg13
g14
sg15
Nsg16
S'Thread.sleep(millis);'
p4115
sg18
g3
((lp4116
g4093
atp4117
Rp4118
sa(dp4119
g2
g3
((lp4120
tp4121
Rp4122
sg7
I7347856
sg8
g3
((lp4123
VList<String> myList = new ArrayList<String>(Arrays.asList(s.split(",")));\u000a
p4124
aVString s = "lorem,ipsum,dolor,sit,amet";\u000a\u000aList<String> myList = new ArrayList<String>(Arrays.asList(s.split(",")));\u000a\u000aSystem.out.println(myList);  // prints [lorem, ipsum, dolor, sit, amet]\u000a
p4125
atp4126
Rp4127
sg13
g14
sg15
Nsg16
S'List<String> myList = new ArrayList<String>(Arrays.asList(s.split(",")));'
p4128
sg18
g3
((lp4129
VHow to convert a String into an ArrayList?
p4130
atp4131
Rp4132
sa(dp4133
g2
g3
((lp4134
VList<String> myList = new ArrayList<String>(Arrays.asList(s.split(",")));\u000a
p4135
aVString s = "lorem,ipsum,dolor,sit,amet";\u000a\u000aList<String> myList = new ArrayList<String>(Arrays.asList(s.split(",")));\u000a\u000aSystem.out.println(myList);  // prints [lorem, ipsum, dolor, sit, amet]\u000a
p4136
atp4137
Rp4138
sg7
I7347856
sg8
g3
((lp4139
VList<String> myList = new ArrayList<String>(Arrays.asList(s.split(",")));\u000a
p4140
aVString s = "lorem,ipsum,dolor,sit,amet";\u000a\u000aList<String> myList = new ArrayList<String>(Arrays.asList(s.split(",")));\u000a\u000aSystem.out.println(myList);  // prints [lorem, ipsum, dolor, sit, amet]\u000a
p4141
atp4142
Rp4143
sg13
g14
sg15
S'String s = "lorem,ipsum,dolor,sit,amet";'
p4144
sg16
S'List<String> myList = new ArrayList<String>(Arrays.asList(s.split(",")));'
p4145
sg18
g3
((lp4146
g4130
atp4147
Rp4148
sa(dp4149
g2
g3
((lp4150
V String s1="[a,b,c,d]";\u000a          String replace = s1.replace("[","");\u000a          System.out.println(replace);\u000a          String replace1 = replace.replace("]","");\u000a          System.out.println(replace1);\u000a          List<String> myList = new ArrayList<String>(Arrays.asList(replace1.split(",")));\u000a          System.out.println(myList.toString());\u000a
p4151
atp4152
Rp4153
sg7
I7347856
sg8
g3
((lp4154
V String s1="[a,b,c,d]";\u000a          String replace = s1.replace("[","");\u000a          System.out.println(replace);\u000a          String replace1 = replace.replace("]","");\u000a          System.out.println(replace1);\u000a          List<String> myList = new ArrayList<String>(Arrays.asList(replace1.split(",")));\u000a          System.out.println(myList.toString());\u000a
p4155
atp4156
Rp4157
sg13
g14
sg15
S'String s1 = "[a,b,c,d]";'
p4158
sg16
S'String replace = s1.replace("[", "");\nSystem.out.println(replace);\nString replace1 = replace.replace("]", "");\nSystem.out.println(replace1);\nList<String> myList = new ArrayList<String>(Arrays.asList(replace1.split(",")));'
p4159
sg18
g3
((lp4160
g4130
atp4161
Rp4162
sa(dp4163
g2
g3
((lp4164
tp4165
Rp4166
sg7
I7347856
sg8
g3
((lp4167
Vpublic ArrayList<Character> convertStringToArraylist(String str) {\u000a    ArrayList<Character> charList = new ArrayList<Character>();      \u000a    for(int i = 0; i<str.length();i++){\u000a        charList.add(str.charAt(i));\u000a    }\u000a    return charList;\u000a}\u000a
p4168
aVpublic static ArrayList<String> convertStringArrayToArraylist(String[] strArr){\u000a    ArrayList<String> stringList = new ArrayList<String>();\u000a    for (String s : strArr) {\u000a        stringList.add(s);\u000a    }\u000a    return stringList;\u000a}\u000a
p4169
atp4170
Rp4171
sg13
g14
sg15
Nsg16
S'ArrayList<Character> charList = new ArrayList<Character>();\nfor (int i = 0; i < str.length(); i++) {\n    charList.add(str.charAt(i));\n}'
p4172
sg18
g3
((lp4173
g4130
atp4174
Rp4175
sa(dp4176
g2
g3
((lp4177
VDate startDate = // Set start date\u000aDate endDate   = // Set end date\u000a\u000along duration  = endDate.getTime() - startDate.getTime();\u000a\u000along diffInSeconds = TimeUnit.MILLISECONDS.toSeconds(duration);\u000along diffInMinutes = TimeUnit.MILLISECONDS.toMinutes(duration);\u000along diffInHours = TimeUnit.MILLISECONDS.toHours(duration);\u000a
p4178
atp4179
Rp4180
sg7
I17940200
sg8
g3
((lp4181
VDate startDate = // Set start date\u000aDate endDate   = // Set end date\u000a\u000along duration  = endDate.getTime() - startDate.getTime();\u000a\u000along diffInSeconds = TimeUnit.MILLISECONDS.toSeconds(duration);\u000along diffInMinutes = TimeUnit.MILLISECONDS.toMinutes(duration);\u000along diffInHours = TimeUnit.MILLISECONDS.toHours(duration);\u000a
p4182
atp4183
Rp4184
sg13
Vfind the duration of difference between two dates
p4185
sg15
Nsg16
S'long duration = endDate.getTime() - startDate.getTime();'
p4186
sg18
g3
((lp4187
VHow to find the duration of difference between two dates in java?
p4188
atp4189
Rp4190
sa(dp4191
g2
g3
((lp4192
V{\u000a        Date dt2 = new DateAndTime().getCurrentDateTime();\u000a\u000a        long diff = dt2.getTime() - dt1.getTime();\u000a        long diffSeconds = diff / 1000 % 60;\u000a        long diffMinutes = diff / (60 * 1000) % 60;\u000a        long diffHours = diff / (60 * 60 * 1000);\u000a        int diffInDays = (int) ((dt2.getTime() - dt1.getTime()) / (1000 * 60 * 60 * 24));\u000a\u000a        if (diffInDays > 1) {\u000a            System.err.println("Difference in number of days (2) : " + diffInDays);\u000a            return false;\u000a        } else if (diffHours > 24) {\u000a\u000a            System.err.println(">24");\u000a            return false;\u000a        } else if ((diffHours == 24) && (diffMinutes >= 1)) {\u000a            System.err.println("minutes");\u000a            return false;\u000a        }\u000a        return true;\u000a}\u000a
p4193
atp4194
Rp4195
sg7
I17940200
sg8
g3
((lp4196
V{\u000a        Date dt2 = new DateAndTime().getCurrentDateTime();\u000a\u000a        long diff = dt2.getTime() - dt1.getTime();\u000a        long diffSeconds = diff / 1000 % 60;\u000a        long diffMinutes = diff / (60 * 1000) % 60;\u000a        long diffHours = diff / (60 * 60 * 1000);\u000a        int diffInDays = (int) ((dt2.getTime() - dt1.getTime()) / (1000 * 60 * 60 * 24));\u000a\u000a        if (diffInDays > 1) {\u000a            System.err.println("Difference in number of days (2) : " + diffInDays);\u000a            return false;\u000a        } else if (diffHours > 24) {\u000a\u000a            System.err.println(">24");\u000a            return false;\u000a        } else if ((diffHours == 24) && (diffMinutes >= 1)) {\u000a            System.err.println("minutes");\u000a            return false;\u000a        }\u000a        return true;\u000a}\u000a
p4197
atp4198
Rp4199
sg13
Vfind the duration of difference between two dates
p4200
sg15
S'Date dt2 = new DateAndTime().getCurrentDateTime();'
p4201
sg16
S'long diff = dt2.getTime() - dt1.getTime();'
p4202
sg18
g3
((lp4203
g4188
atp4204
Rp4205
sa(dp4206
g2
g3
((lp4207
VInstant start, end;//\u000aDuration dur = Duration.between(start, stop);\u000along hours = dur.toHours();\u000along minutes = dur.toMinutes();\u000a
p4208
aVDateTime startTime, endTime;\u000aPeriod p = new Period(startTime, endTime);\u000along hours = p.getHours();\u000along minutes = p.getMinutes();\u000a
p4209
aVInterval interval = new Interval(oldTime, new Instant());\u000a
p4210
atp4211
Rp4212
sg7
I17940200
sg8
g3
((lp4213
VInstant start, end;//\u000aDuration dur = Duration.between(start, stop);\u000along hours = dur.toHours();\u000along minutes = dur.toMinutes();\u000a
p4214
aVDateTime startTime, endTime;\u000aPeriod p = new Period(startTime, endTime);\u000along hours = p.getHours();\u000along minutes = p.getMinutes();\u000a
p4215
aVInterval interval = new Interval(oldTime, new Instant());\u000a
p4216
atp4217
Rp4218
sg13
Vfind the duration of difference between two dates
p4219
sg15
S'DateTime startTime, endTime;'
p4220
sg16
S'Period p = new Period(startTime, endTime);\nlong hours = p.getHours();\nlong minutes = p.getMinutes();'
p4221
sg18
g3
((lp4222
g4188
atp4223
Rp4224
sa(dp4225
g2
g3
((lp4226
VInstant start, end;//\u000aDuration dur = Duration.between(start, stop);\u000along hours = dur.toHours();\u000along minutes = dur.toMinutes();\u000a
p4227
aVDateTime startTime, endTime;\u000aPeriod p = new Period(startTime, endTime);\u000along hours = p.getHours();\u000along minutes = p.getMinutes();\u000a
p4228
aVInterval interval = new Interval(oldTime, new Instant());\u000a
p4229
atp4230
Rp4231
sg7
I17940200
sg8
g3
((lp4232
VInstant start, end;//\u000aDuration dur = Duration.between(start, stop);\u000along hours = dur.toHours();\u000along minutes = dur.toMinutes();\u000a
p4233
aVDateTime startTime, endTime;\u000aPeriod p = new Period(startTime, endTime);\u000along hours = p.getHours();\u000along minutes = p.getMinutes();\u000a
p4234
aVInterval interval = new Interval(oldTime, new Instant());\u000a
p4235
atp4236
Rp4237
sg13
Vfind the duration of difference between two dates
p4238
sg15
S'Instant start, end;'
p4239
sg16
S'Duration dur = Duration.between(start, stop);\nlong hours = dur.toHours();\nlong minutes = dur.toMinutes();'
p4240
sg18
g3
((lp4241
g4188
atp4242
Rp4243
sa(dp4244
g2
g3
((lp4245
tp4246
Rp4247
sg7
I21083170
sg8
g3
((lp4248
V@Controller\u000apublic class ServletConfig {\u000a    @Bean\u000a    public EmbeddedServletContainerCustomizer containerCustomizer() {\u000a        return (container -> {\u000a            container.setPort(8012);\u000a        });\u000a    }\u000a}\u000a
p4249
atp4250
Rp4251
sg13
g14
sg15
Nsg16
S'return (container -> {\n    container.setPort(8012);\n});'
p4252
sg18
g3
((lp4253
VSpring Boot - how to configure port
p4254
atp4255
Rp4256
sa(dp4257
g2
g3
((lp4258
tp4259
Rp4260
sg7
I13386107
sg8
g3
((lp4261
VString result = str.substring(0, index) + str.substring(index+1);\u000a
p4262
atp4263
Rp4264
sg13
g14
sg15
Nsg16
S'String result = str.substring(0, index) + str.substring(index + 1);'
p4265
sg18
g3
((lp4266
VHow to remove single character from a String
p4267
atp4268
Rp4269
sa(dp4270
g2
g3
((lp4271
VString a = "Cool";\u000aa = a.replace("o","");\u000a\u000a//variable 'a' contains the string "Cl"\u000a
p4272
atp4273
Rp4274
sg7
I13386107
sg8
g3
((lp4275
VString a = "Cool";\u000aa = a.replace("o","");\u000a\u000a//variable 'a' contains the string "Cl"\u000a
p4276
atp4277
Rp4278
sg13
g14
sg15
S'String a = "Cool";'
p4279
sg16
S'a = a.replace("o", "");'
p4280
sg18
g3
((lp4281
g4267
atp4282
Rp4283
sa(dp4284
g2
g3
((lp4285
tp4286
Rp4287
sg7
I1378920
sg8
g3
((lp4288
VHttpClient httpclient = new DefaultHttpClient();\u000aHttpPost httppost = new HttpPost(url);\u000a\u000aFileBody bin = new FileBody(new File(fileName));\u000aStringBody comment = new StringBody("Filename: " + fileName);\u000a\u000aMultipartEntity reqEntity = new MultipartEntity();\u000areqEntity.addPart("bin", bin);\u000areqEntity.addPart("comment", comment);\u000ahttppost.setEntity(reqEntity);\u000a\u000aHttpResponse response = httpclient.execute(httppost);\u000aHttpEntity resEntity = response.getEntity();\u000a
p4289
aVCloseableHttpClient httpClient = HttpClients.createDefault();\u000aHttpPost uploadFile = new HttpPost("...");\u000aMultipartEntityBuilder builder = MultipartEntityBuilder.create();\u000abuilder.addTextBody("field1", "yes", ContentType.TEXT_PLAIN);\u000a\u000a// This attaches the file to the POST:\u000aFile f = new File("[/path/to/upload]");\u000abuilder.addBinaryBody(\u000a    "file",\u000a    new FileInputStream(f),\u000a    ContentType.APPLICATION_OCTET_STREAM,\u000a    f.getName()\u000a);\u000a\u000aHttpEntity multipart = builder.build();\u000auploadFile.setEntity(multipart);\u000aCloseableHttpResponse response = httpClient.execute(uploadFile);\u000aHttpEntity responseEntity = response.getEntity();\u000a
p4290
atp4291
Rp4292
sg13
g14
sg15
Nsg16
S'CloseableHttpClient httpClient = HttpClients.createDefault();\nHttpPost uploadFile = new HttpPost("...");\nMultipartEntityBuilder builder = MultipartEntityBuilder.create();\nbuilder.addTextBody("field1", "yes", ContentType.TEXT_PLAIN);\nFile f = new File("[/path/to/upload]");\nbuilder.addBinaryBody("file", new FileInputStream(f), ContentType.APPLICATION_OCTET_STREAM, f.getName());\nHttpEntity multipart = builder.build();\nuploadFile.setEntity(multipart);\nCloseableHttpResponse response = httpClient.execute(uploadFile);\nHttpEntity responseEntity = response.getEntity();'
p4293
sg18
g3
((lp4294
VHow can I make a multipart/form-data POST request using Java?
p4295
atp4296
Rp4297
sa(dp4298
g2
g3
((lp4299
tp4300
Rp4301
sg7
I1378920
sg8
g3
((lp4302
VHttpClient httpclient = new DefaultHttpClient();\u000aHttpPost httppost = new HttpPost(url);\u000a\u000aFileBody bin = new FileBody(new File(fileName));\u000aStringBody comment = new StringBody("Filename: " + fileName);\u000a\u000aMultipartEntity reqEntity = new MultipartEntity();\u000areqEntity.addPart("bin", bin);\u000areqEntity.addPart("comment", comment);\u000ahttppost.setEntity(reqEntity);\u000a\u000aHttpResponse response = httpclient.execute(httppost);\u000aHttpEntity resEntity = response.getEntity();\u000a
p4303
aVCloseableHttpClient httpClient = HttpClients.createDefault();\u000aHttpPost uploadFile = new HttpPost("...");\u000aMultipartEntityBuilder builder = MultipartEntityBuilder.create();\u000abuilder.addTextBody("field1", "yes", ContentType.TEXT_PLAIN);\u000a\u000a// This attaches the file to the POST:\u000aFile f = new File("[/path/to/upload]");\u000abuilder.addBinaryBody(\u000a    "file",\u000a    new FileInputStream(f),\u000a    ContentType.APPLICATION_OCTET_STREAM,\u000a    f.getName()\u000a);\u000a\u000aHttpEntity multipart = builder.build();\u000auploadFile.setEntity(multipart);\u000aCloseableHttpResponse response = httpClient.execute(uploadFile);\u000aHttpEntity responseEntity = response.getEntity();\u000a
p4304
atp4305
Rp4306
sg13
g14
sg15
Nsg16
S'HttpClient httpclient = new DefaultHttpClient();\nHttpPost httppost = new HttpPost(url);\nFileBody bin = new FileBody(new File(fileName));\nStringBody comment = new StringBody("Filename: " + fileName);\nMultipartEntity reqEntity = new MultipartEntity();\nreqEntity.addPart("bin", bin);\nreqEntity.addPart("comment", comment);\nhttppost.setEntity(reqEntity);\nHttpResponse response = httpclient.execute(httppost);\nHttpEntity resEntity = response.getEntity();'
p4307
sg18
g3
((lp4308
g4295
atp4309
Rp4310
sa(dp4311
g2
g3
((lp4312
tp4313
Rp4314
sg7
I1378920
sg8
g3
((lp4315
V<dependency>\u000a  <groupId>org.apache.httpcomponents</groupId>\u000a  <artifactId>httpclient</artifactId>\u000a  <version>4.0.1</version>\u000a  <scope>compile</scope>\u000a</dependency>\u000a<dependency>\u000a  <groupId>org.apache.httpcomponents</groupId>\u000a  <artifactId>httpmime</artifactId>\u000a  <version>4.0.1</version>\u000a  <scope>compile</scope>\u000a</dependency>\u000a
p4316
aVHttpClient httpclient = new DefaultHttpClient();\u000aHttpPost httpPost = new HttpPost(url);\u000a\u000aFileBody uploadFilePart = new FileBody(uploadFile);\u000aMultipartEntity reqEntity = new MultipartEntity();\u000areqEntity.addPart("upload-file", uploadFilePart);\u000ahttpPost.setEntity(reqEntity);\u000a\u000aHttpResponse response = httpclient.execute(httpPost);\u000a
p4317
atp4318
Rp4319
sg13
g14
sg15
Nsg16
S'HttpClient httpclient = new DefaultHttpClient();\nHttpPost httpPost = new HttpPost(url);\nFileBody uploadFilePart = new FileBody(uploadFile);\nMultipartEntity reqEntity = new MultipartEntity();\nreqEntity.addPart("upload-file", uploadFilePart);\nhttpPost.setEntity(reqEntity);\nHttpResponse response = httpclient.execute(httpPost);'
p4320
sg18
g3
((lp4321
g4295
atp4322
Rp4323
sa(dp4324
g2
g3
((lp4325
tp4326
Rp4327
sg7
I1378920
sg8
g3
((lp4328
Vhttpclient-4.2.4:      423KB\u000ahttpmime-4.2.4:         26KB\u000ahttpcore-4.2.4:        222KB\u000acommons-codec-1.6:     228KB\u000acommons-logging-1.1.1:  60KB\u000aSum:                   959KB\u000a\u000ahttpmime-4.2.4:         26KB\u000ahttpcore-4.2.4:        222KB\u000aSum:                   248KB\u000a
p4329
aV<dependency>\u000a    <groupId>org.apache.httpcomponents</groupId>\u000a    <artifactId>httpmime</artifactId>\u000a    <version>4.2.4</version>\u000a</dependency>\u000a
p4330
aVHttpURLConnection connection = (HttpURLConnection) url.openConnection();\u000aconnection.setDoOutput(true);\u000aconnection.setRequestMethod("POST");\u000a\u000aFileBody fileBody = new FileBody(new File(fileName));\u000aMultipartEntity multipartEntity = new MultipartEntity(HttpMultipartMode.STRICT);\u000amultipartEntity.addPart("file", fileBody);\u000a\u000aconnection.setRequestProperty("Content-Type", multipartEntity.getContentType().getValue());\u000aOutputStream out = connection.getOutputStream();\u000atry {\u000a    multipartEntity.writeTo(out);\u000a} finally {\u000a    out.close();\u000a}\u000aint status = connection.getResponseCode();\u000a...\u000a
p4331
atp4332
Rp4333
sg13
g14
sg15
Nsg16
S'HttpURLConnection connection = (HttpURLConnection) url.openConnection();\nconnection.setDoOutput(true);\nconnection.setRequestMethod("POST");\nFileBody fileBody = new FileBody(new File(fileName));\nMultipartEntity multipartEntity = new MultipartEntity(HttpMultipartMode.STRICT);\nmultipartEntity.addPart("file", fileBody);\nconnection.setRequestProperty("Content-Type", multipartEntity.getContentType().getValue());\nOutputStream out = connection.getOutputStream();\ntry {\n    multipartEntity.writeTo(out);\n} finally {\n    out.close();\n}\nint status = connection.getResponseCode();'
p4334
sg18
g3
((lp4335
g4295
atp4336
Rp4337
sa(dp4338
g2
g3
((lp4339
Vint oldItems[] = new int[10];\u000afor (int i=0; i<10; i++) {\u000a  oldItems[i] = i+10;\u000a}\u000aint newItems[] = new int[20];\u000aSystem.arraycopy(oldItems, 0, newItems, 0, 10);\u000aoldItems = newItems;\u000a
p4340
aVclass Myclass {\u000a  private List<Integer> items;\u000a\u000a  public List<Integer> getItems() { return Collections.unmodifiableList(items); }\u000a}\u000a
p4341
aVList<xClass> mysclass = new ArrayList<xClass>();\u000amyclass.add(new xClass());\u000amyclass.add(new xClass());\u000a
p4342
aVclass Myclass {\u000a  private int items[];\u000a\u000a  public int[] getItems() { return items; }\u000a}\u000a
p4343
atp4344
Rp4345
sg7
I1647260
sg8
g3
((lp4346
Vint oldItems[] = new int[10];\u000afor (int i=0; i<10; i++) {\u000a  oldItems[i] = i+10;\u000a}\u000aint newItems[] = new int[20];\u000aSystem.arraycopy(oldItems, 0, newItems, 0, 10);\u000aoldItems = newItems;\u000a
p4347
aVclass Myclass {\u000a  private List<Integer> items;\u000a\u000a  public List<Integer> getItems() { return Collections.unmodifiableList(items); }\u000a}\u000a
p4348
aVList<xClass> mysclass = new ArrayList<xClass>();\u000amyclass.add(new xClass());\u000amyclass.add(new xClass());\u000a
p4349
aVclass Myclass {\u000a  private int items[];\u000a\u000a  public int[] getItems() { return items; }\u000a}\u000a
p4350
atp4351
Rp4352
sg13
g14
sg15
S'List<xClass> mysclass = new ArrayList<xClass>();'
p4353
sg16
S'myclass.add(new xClass());\nmyclass.add(new xClass());'
p4354
sg18
g3
((lp4355
V<p>I have a class - xClass,  that I want to load into an array of xClass so I the declaration:</p>\u000a\u000a<pre><code>xClass mysclass[] = new xClass[10];\u000amyclass[0] = new xClass();\u000amyclass[9] = new xClass();\u000a</code></pre>\u000a\u000a<p>However, I don't know if I will need 10. I may need 8 or 12 or any other number for that matter. I won't know until runtime. \u000aCan I change the number of elements in an array on the fly? \u000aIf so, how?</p>\u000a
p4356
atp4357
Rp4358
sa(dp4359
g2
g3
((lp4360
Vimport java.util.List;\u000aimport java.util.ArrayList;\u000aimport java.util.Random;\u000a\u000apublic class A  {\u000a\u000a    public static void main( String [] args ) {\u000a        // dynamically hold the instances\u000a        List<xClass> list = new ArrayList<xClass>();\u000a\u000a        // fill it with a random number between 0 and 100\u000a        int elements = new Random().nextInt(100);  \u000a        for( int i = 0 ; i < elements ; i++ ) {\u000a            list.add( new xClass() );\u000a        }\u000a\u000a        // convert it to array\u000a        xClass [] array = list.toArray( new xClass[ list.size() ] );\u000a\u000a\u000a        System.out.println( "size of array = " + array.length );\u000a    }\u000a}\u000aclass xClass {}\u000a
p4361
atp4362
Rp4363
sg7
I1647260
sg8
g3
((lp4364
Vimport java.util.List;\u000aimport java.util.ArrayList;\u000aimport java.util.Random;\u000a\u000apublic class A  {\u000a\u000a    public static void main( String [] args ) {\u000a        // dynamically hold the instances\u000a        List<xClass> list = new ArrayList<xClass>();\u000a\u000a        // fill it with a random number between 0 and 100\u000a        int elements = new Random().nextInt(100);  \u000a        for( int i = 0 ; i < elements ; i++ ) {\u000a            list.add( new xClass() );\u000a        }\u000a\u000a        // convert it to array\u000a        xClass [] array = list.toArray( new xClass[ list.size() ] );\u000a\u000a\u000a        System.out.println( "size of array = " + array.length );\u000a    }\u000a}\u000aclass xClass {}\u000a
p4365
atp4366
Rp4367
sg13
g14
sg15
Nsg16
S'list.add(new xClass());'
p4368
sg18
g3
((lp4369
V<p>I have a class - xClass,  that I want to load into an array of xClass so I the declaration:</p>\u000a\u000a<pre><code>xClass mysclass[] = new xClass[10];\u000amyclass[0] = new xClass();\u000amyclass[9] = new xClass();\u000a</code></pre>\u000a\u000a<p>However, I don't know if I will need 10. I may need 8 or 12 or any other number for that matter. I won't know until runtime. \u000aCan I change the number of elements in an array on the fly? \u000aIf so, how?</p>\u000a
p4370
atp4371
Rp4372
sa(dp4373
g2
g3
((lp4374
Vimport javax.xml.soap.*;\u000aimport javax.xml.transform.*;\u000aimport javax.xml.transform.stream.*;\u000a\u000apublic class SOAPClientSAAJ {\u000a\u000a    /**\u000a     * Starting point for the SAAJ - SOAP Client Testing\u000a     */\u000a    public static void main(String args[]) {\u000a        try {\u000a            // Create SOAP Connection\u000a            SOAPConnectionFactory soapConnectionFactory = SOAPConnectionFactory.newInstance();\u000a            SOAPConnection soapConnection = soapConnectionFactory.createConnection();\u000a\u000a            // Send SOAP Message to SOAP Server\u000a            String url = "http://ws.cdyne.com/emailverify/Emailvernotestemail.asmx";\u000a            SOAPMessage soapResponse = soapConnection.call(createSOAPRequest(), url);\u000a\u000a            // Process the SOAP Response\u000a            printSOAPResponse(soapResponse);\u000a\u000a            soapConnection.close();\u000a        } catch (Exception e) {\u000a            System.err.println("Error occurred while sending SOAP Request to Server");\u000a            e.printStackTrace();\u000a        }\u000a    }\u000a\u000a    private static SOAPMessage createSOAPRequest() throws Exception {\u000a        MessageFactory messageFactory = MessageFactory.newInstance();\u000a        SOAPMessage soapMessage = messageFactory.createMessage();\u000a        SOAPPart soapPart = soapMessage.getSOAPPart();\u000a\u000a        String serverURI = "http://ws.cdyne.com/";\u000a\u000a        // SOAP Envelope\u000a        SOAPEnvelope envelope = soapPart.getEnvelope();\u000a        envelope.addNamespaceDeclaration("example", serverURI);\u000a\u000a        /*\u000a        Constructed SOAP Request Message:\u000a        <SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:example="http://ws.cdyne.com/">\u000a            <SOAP-ENV:Header/>\u000a            <SOAP-ENV:Body>\u000a                <example:VerifyEmail>\u000a                    <example:email>mutantninja@gmail.com</example:email>\u000a                    <example:LicenseKey>123</example:LicenseKey>\u000a                </example:VerifyEmail>\u000a            </SOAP-ENV:Body>\u000a        </SOAP-ENV:Envelope>\u000a         */\u000a\u000a        // SOAP Body\u000a        SOAPBody soapBody = envelope.getBody();\u000a        SOAPElement soapBodyElem = soapBody.addChildElement("VerifyEmail", "example");\u000a        SOAPElement soapBodyElem1 = soapBodyElem.addChildElement("email", "example");\u000a        soapBodyElem1.addTextNode("mutantninja@gmail.com");\u000a        SOAPElement soapBodyElem2 = soapBodyElem.addChildElement("LicenseKey", "example");\u000a        soapBodyElem2.addTextNode("123");\u000a\u000a        MimeHeaders headers = soapMessage.getMimeHeaders();\u000a        headers.addHeader("SOAPAction", serverURI  + "VerifyEmail");\u000a\u000a        soapMessage.saveChanges();\u000a\u000a        /* Print the request message */\u000a        System.out.print("Request SOAP Message = ");\u000a        soapMessage.writeTo(System.out);\u000a        System.out.println();\u000a\u000a        return soapMessage;\u000a    }\u000a\u000a    /**\u000a     * Method used to print the SOAP Response\u000a     */\u000a    private static void printSOAPResponse(SOAPMessage soapResponse) throws Exception {\u000a        TransformerFactory transformerFactory = TransformerFactory.newInstance();\u000a        Transformer transformer = transformerFactory.newTransformer();\u000a        Source sourceContent = soapResponse.getSOAPPart().getContent();\u000a        System.out.print("\u005cnResponse SOAP Message = ");\u000a        StreamResult result = new StreamResult(System.out);\u000a        transformer.transform(sourceContent, result);\u000a    }\u000a\u000a}\u000a
p4375
atp4376
Rp4377
sg7
I15940234
sg8
g3
((lp4378
Vimport javax.xml.soap.*;\u000aimport javax.xml.transform.*;\u000aimport javax.xml.transform.stream.*;\u000a\u000apublic class SOAPClientSAAJ {\u000a\u000a    /**\u000a     * Starting point for the SAAJ - SOAP Client Testing\u000a     */\u000a    public static void main(String args[]) {\u000a        try {\u000a            // Create SOAP Connection\u000a            SOAPConnectionFactory soapConnectionFactory = SOAPConnectionFactory.newInstance();\u000a            SOAPConnection soapConnection = soapConnectionFactory.createConnection();\u000a\u000a            // Send SOAP Message to SOAP Server\u000a            String url = "http://ws.cdyne.com/emailverify/Emailvernotestemail.asmx";\u000a            SOAPMessage soapResponse = soapConnection.call(createSOAPRequest(), url);\u000a\u000a            // Process the SOAP Response\u000a            printSOAPResponse(soapResponse);\u000a\u000a            soapConnection.close();\u000a        } catch (Exception e) {\u000a            System.err.println("Error occurred while sending SOAP Request to Server");\u000a            e.printStackTrace();\u000a        }\u000a    }\u000a\u000a    private static SOAPMessage createSOAPRequest() throws Exception {\u000a        MessageFactory messageFactory = MessageFactory.newInstance();\u000a        SOAPMessage soapMessage = messageFactory.createMessage();\u000a        SOAPPart soapPart = soapMessage.getSOAPPart();\u000a\u000a        String serverURI = "http://ws.cdyne.com/";\u000a\u000a        // SOAP Envelope\u000a        SOAPEnvelope envelope = soapPart.getEnvelope();\u000a        envelope.addNamespaceDeclaration("example", serverURI);\u000a\u000a        /*\u000a        Constructed SOAP Request Message:\u000a        <SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:example="http://ws.cdyne.com/">\u000a            <SOAP-ENV:Header/>\u000a            <SOAP-ENV:Body>\u000a                <example:VerifyEmail>\u000a                    <example:email>mutantninja@gmail.com</example:email>\u000a                    <example:LicenseKey>123</example:LicenseKey>\u000a                </example:VerifyEmail>\u000a            </SOAP-ENV:Body>\u000a        </SOAP-ENV:Envelope>\u000a         */\u000a\u000a        // SOAP Body\u000a        SOAPBody soapBody = envelope.getBody();\u000a        SOAPElement soapBodyElem = soapBody.addChildElement("VerifyEmail", "example");\u000a        SOAPElement soapBodyElem1 = soapBodyElem.addChildElement("email", "example");\u000a        soapBodyElem1.addTextNode("mutantninja@gmail.com");\u000a        SOAPElement soapBodyElem2 = soapBodyElem.addChildElement("LicenseKey", "example");\u000a        soapBodyElem2.addTextNode("123");\u000a\u000a        MimeHeaders headers = soapMessage.getMimeHeaders();\u000a        headers.addHeader("SOAPAction", serverURI  + "VerifyEmail");\u000a\u000a        soapMessage.saveChanges();\u000a\u000a        /* Print the request message */\u000a        System.out.print("Request SOAP Message = ");\u000a        soapMessage.writeTo(System.out);\u000a        System.out.println();\u000a\u000a        return soapMessage;\u000a    }\u000a\u000a    /**\u000a     * Method used to print the SOAP Response\u000a     */\u000a    private static void printSOAPResponse(SOAPMessage soapResponse) throws Exception {\u000a        TransformerFactory transformerFactory = TransformerFactory.newInstance();\u000a        Transformer transformer = transformerFactory.newTransformer();\u000a        Source sourceContent = soapResponse.getSOAPPart().getContent();\u000a        System.out.print("\u005cnResponse SOAP Message = ");\u000a        StreamResult result = new StreamResult(System.out);\u000a        transformer.transform(sourceContent, result);\u000a    }\u000a\u000a}\u000a
p4379
atp4380
Rp4381
sg13
g14
sg15
Nsg16
S'SOAPConnectionFactory soapConnectionFactory = SOAPConnectionFactory.newInstance();\nSOAPConnection soapConnection = soapConnectionFactory.createConnection();\nString url = "http://ws.cdyne.com/emailverify/Emailvernotestemail.asmx";\nSOAPMessage soapResponse = soapConnection.call(createSOAPRequest(), url);\nprintSOAPResponse(soapResponse);\nsoapConnection.close();'
p4382
sg18
g3
((lp4383
VHow to do a SOAP Web Service call from Java class?
p4384
atp4385
Rp4386
sa(dp4387
g2
g3
((lp4388
VDefaultWebService defaultWebService = new DefaultWebService();\u000aString res = defaultWebService.getDefaultWebServiceHttpSoap11Endpoint().login("webservice","dadsadasdasd");\u000aSystem.out.println(res);\u000a
p4389
aV$ ./wsdl2java -p com.mynamespace.for.the.api.objects -autoNameResolution http://www.someurl.com/DefaultWebService?wsdl\u000a
p4390
atp4391
Rp4392
sg7
I15940234
sg8
g3
((lp4393
VDefaultWebService defaultWebService = new DefaultWebService();\u000aString res = defaultWebService.getDefaultWebServiceHttpSoap11Endpoint().login("webservice","dadsadasdasd");\u000aSystem.out.println(res);\u000a
p4394
aV$ ./wsdl2java -p com.mynamespace.for.the.api.objects -autoNameResolution http://www.someurl.com/DefaultWebService?wsdl\u000a
p4395
atp4396
Rp4397
sg13
g14
sg15
S'DefaultWebService defaultWebService = new DefaultWebService();'
p4398
sg16
S'String res = defaultWebService.getDefaultWebServiceHttpSoap11Endpoint().login("webservice", "dadsadasdasd");'
p4399
sg18
g3
((lp4400
g4384
atp4401
Rp4402
sa(dp4403
g2
g3
((lp4404
VScanner reader = new Scanner(System.in);\u000achar c = reader.nextChar();\u000a
p4405
atp4406
Rp4407
sg7
I13942701
sg8
g3
((lp4408
Vchar c = reader.next().charAt(0);\u000a
p4409
aVchar c = reader.findInLine(".").charAt(0);\u000a
p4410
aVchar c = reader.next(".").charAt(0);\u000a
p4411
atp4412
Rp4413
sg13
VTake a char input from the Scanner
p4414
sg15
S'Scanner reader = new Scanner(System.in);'
p4415
sg16
S'char c = reader.next().charAt(0);'
p4416
sg18
g3
((lp4417
VTake a char input from the Scanner
p4418
atp4419
Rp4420
sa(dp4421
g2
g3
((lp4422
VScanner reader = new Scanner(System.in);\u000achar c = reader.nextChar();\u000a
p4423
atp4424
Rp4425
sg7
I13942701
sg8
g3
((lp4426
Vchar c = reader.next().charAt(0);\u000a
p4427
aVchar c = reader.findInLine(".").charAt(0);\u000a
p4428
aVchar c = reader.next(".").charAt(0);\u000a
p4429
atp4430
Rp4431
sg13
VTake a char input from the Scanner
p4432
sg15
S'Scanner reader = new Scanner(System.in);'
p4433
sg16
S'char c = reader.findInLine(".").charAt(0);'
p4434
sg18
g3
((lp4435
g4418
atp4436
Rp4437
sa(dp4438
g2
g3
((lp4439
VScanner reader = new Scanner(System.in);\u000achar c = reader.nextChar();\u000a
p4440
atp4441
Rp4442
sg7
I13942701
sg8
g3
((lp4443
Vchar c = reader.next().charAt(0);\u000a
p4444
aVchar c = reader.findInLine(".").charAt(0);\u000a
p4445
aVchar c = reader.next(".").charAt(0);\u000a
p4446
atp4447
Rp4448
sg13
VTake a char input from the Scanner
p4449
sg15
S'Scanner reader = new Scanner(System.in);'
p4450
sg16
S'char c = reader.next(".").charAt(0);'
p4451
sg18
g3
((lp4452
g4418
atp4453
Rp4454
sa(dp4455
g2
g3
((lp4456
VScanner reader = new Scanner(System.in);\u000achar c = reader.nextChar();\u000a
p4457
atp4458
Rp4459
sg7
I13942701
sg8
g3
((lp4460
Vreader.useDelimiter("");\u000a
p4461
atp4462
Rp4463
sg13
VTake a char input from the Scanner
p4464
sg15
S'Scanner reader = new Scanner(System.in);'
p4465
sg16
S'reader.useDelimiter("");'
p4466
sg18
g3
((lp4467
g4418
atp4468
Rp4469
sa(dp4470
g2
g3
((lp4471
VScanner reader = new Scanner(System.in);\u000achar c = reader.next().charAt(0);\u000a
p4472
aVScanner reader = new Scanner(System.in);\u000achar c = reader.next().trim().charAt(0);\u000a
p4473
atp4474
Rp4475
sg7
I13942701
sg8
g3
((lp4476
VScanner reader = new Scanner(System.in);\u000achar c = reader.next().charAt(0);\u000a
p4477
aVScanner reader = new Scanner(System.in);\u000achar c = reader.next().trim().charAt(0);\u000a
p4478
atp4479
Rp4480
sg13
VTake a char input from the Scanner
p4481
sg15
S'Scanner reader = new Scanner(System.in);'
p4482
sg16
S'char c = reader.next().charAt(0);'
p4483
sg18
g3
((lp4484
g4418
atp4485
Rp4486
sa(dp4487
g2
g3
((lp4488
VScanner reader = new Scanner(System.in);\u000achar c = reader.next().charAt(0);\u000a
p4489
aVScanner reader = new Scanner(System.in);\u000achar c = reader.next().trim().charAt(0);\u000a
p4490
atp4491
Rp4492
sg7
I13942701
sg8
g3
((lp4493
VScanner reader = new Scanner(System.in);\u000achar c = reader.next().charAt(0);\u000a
p4494
aVScanner reader = new Scanner(System.in);\u000achar c = reader.next().trim().charAt(0);\u000a
p4495
atp4496
Rp4497
sg13
VTake a char input from the Scanner
p4498
sg15
S'Scanner reader = new Scanner(System.in);'
p4499
sg16
S'char c = reader.next().trim().charAt(0);'
p4500
sg18
g3
((lp4501
g4418
atp4502
Rp4503
sa(dp4504
g2
g3
((lp4505
tp4506
Rp4507
sg7
I4404084
sg8
g3
((lp4508
Vif (lista.contains(conta1)) {\u000a    System.out.println("Account found");\u000a} else {\u000a    System.out.println("Account not found");\u000a}\u000a
p4509
atp4510
Rp4511
sg13
VCheck if a value exists in ArrayList
p4512
sg15
Nsg16
S'if (lista.contains(conta1)) {\n    System.out.println("Account found");\n} else {\n    System.out.println("Account not found");\n}'
p4513
sg18
g3
((lp4514
VCheck if a value exists in ArrayList
p4515
atp4516
Rp4517
sa(dp4518
g2
g3
((lp4519
V@Override\u000apublic boolean  equals (Object object) {\u000a    boolean result = false;\u000a    if (object == null || object.getClass() != getClass()) {\u000a        result = false;\u000a    } else {\u000a        EmployeeModel employee = (EmployeeModel) object;\u000a        if (this.name.equals(employee.getName()) && this.designation.equals(employee.getDesignation())   && this.age == employee.getAge()) {\u000a            result = true;\u000a        }\u000a    }\u000a    return result;\u000a}\u000a
p4520
aVpublic static void main(String args[]) {\u000a\u000a    EmployeeModel first = new EmployeeModel("Sameer", "Developer", 25);\u000a    EmployeeModel second = new EmployeeModel("Jon", "Manager", 30);\u000a    EmployeeModel third = new EmployeeModel("Priyanka", "Tester", 24);\u000a\u000a    List<EmployeeModel> employeeList = new ArrayList<EmployeeModel>();\u000a    employeeList.add(first);\u000a    employeeList.add(second);\u000a    employeeList.add(third);\u000a\u000a    EmployeeModel checkUserOne = new EmployeeModel("Sameer", "Developer", 25);\u000a    System.out.println("Check checkUserOne is in list or not ");\u000a    System.out.println("Is checkUserOne Preasent = ? "+employeeList.contains(checkUserOne));\u000a\u000a    EmployeeModel checkUserTwo = new EmployeeModel("Tim", "Tester", 24);\u000a    System.out.println("Check checkUserTwo is in list or not ");\u000a    System.out.println("Is checkUserTwo Preasent = ? "+employeeList.contains(checkUserTwo));\u000a\u000a}\u000a
p4521
atp4522
Rp4523
sg7
I4404084
sg8
g3
((lp4524
V@Override\u000apublic boolean  equals (Object object) {\u000a    boolean result = false;\u000a    if (object == null || object.getClass() != getClass()) {\u000a        result = false;\u000a    } else {\u000a        EmployeeModel employee = (EmployeeModel) object;\u000a        if (this.name.equals(employee.getName()) && this.designation.equals(employee.getDesignation())   && this.age == employee.getAge()) {\u000a            result = true;\u000a        }\u000a    }\u000a    return result;\u000a}\u000a
p4525
aVpublic static void main(String args[]) {\u000a\u000a    EmployeeModel first = new EmployeeModel("Sameer", "Developer", 25);\u000a    EmployeeModel second = new EmployeeModel("Jon", "Manager", 30);\u000a    EmployeeModel third = new EmployeeModel("Priyanka", "Tester", 24);\u000a\u000a    List<EmployeeModel> employeeList = new ArrayList<EmployeeModel>();\u000a    employeeList.add(first);\u000a    employeeList.add(second);\u000a    employeeList.add(third);\u000a\u000a    EmployeeModel checkUserOne = new EmployeeModel("Sameer", "Developer", 25);\u000a    System.out.println("Check checkUserOne is in list or not ");\u000a    System.out.println("Is checkUserOne Preasent = ? "+employeeList.contains(checkUserOne));\u000a\u000a    EmployeeModel checkUserTwo = new EmployeeModel("Tim", "Tester", 24);\u000a    System.out.println("Check checkUserTwo is in list or not ");\u000a    System.out.println("Is checkUserTwo Preasent = ? "+employeeList.contains(checkUserTwo));\u000a\u000a}\u000a
p4526
atp4527
Rp4528
sg13
VCheck if a value exists in ArrayList
p4529
sg15
S'EmployeeModel first = new EmployeeModel("Sameer", "Developer", 25);\nEmployeeModel second = new EmployeeModel("Jon", "Manager", 30);\nEmployeeModel third = new EmployeeModel("Priyanka", "Tester", 24);\nList<EmployeeModel> employeeList = new ArrayList<EmployeeModel>();\nemployeeList.add(first);\nemployeeList.add(second);\nemployeeList.add(third);'
p4530
sg16
S'System.out.println("Is checkUserOne Preasent = ? " + employeeList.contains(checkUserOne));'
p4531
sg18
g3
((lp4532
g4515
atp4533
Rp4534
sa(dp4535
g2
g3
((lp4536
V@Override\u000apublic boolean  equals (Object object) {\u000a    boolean result = false;\u000a    if (object == null || object.getClass() != getClass()) {\u000a        result = false;\u000a    } else {\u000a        EmployeeModel employee = (EmployeeModel) object;\u000a        if (this.name.equals(employee.getName()) && this.designation.equals(employee.getDesignation())   && this.age == employee.getAge()) {\u000a            result = true;\u000a        }\u000a    }\u000a    return result;\u000a}\u000a
p4537
aVpublic static void main(String args[]) {\u000a\u000a    EmployeeModel first = new EmployeeModel("Sameer", "Developer", 25);\u000a    EmployeeModel second = new EmployeeModel("Jon", "Manager", 30);\u000a    EmployeeModel third = new EmployeeModel("Priyanka", "Tester", 24);\u000a\u000a    List<EmployeeModel> employeeList = new ArrayList<EmployeeModel>();\u000a    employeeList.add(first);\u000a    employeeList.add(second);\u000a    employeeList.add(third);\u000a\u000a    EmployeeModel checkUserOne = new EmployeeModel("Sameer", "Developer", 25);\u000a    System.out.println("Check checkUserOne is in list or not ");\u000a    System.out.println("Is checkUserOne Preasent = ? "+employeeList.contains(checkUserOne));\u000a\u000a    EmployeeModel checkUserTwo = new EmployeeModel("Tim", "Tester", 24);\u000a    System.out.println("Check checkUserTwo is in list or not ");\u000a    System.out.println("Is checkUserTwo Preasent = ? "+employeeList.contains(checkUserTwo));\u000a\u000a}\u000a
p4538
atp4539
Rp4540
sg7
I4404084
sg8
g3
((lp4541
V@Override\u000apublic boolean  equals (Object object) {\u000a    boolean result = false;\u000a    if (object == null || object.getClass() != getClass()) {\u000a        result = false;\u000a    } else {\u000a        EmployeeModel employee = (EmployeeModel) object;\u000a        if (this.name.equals(employee.getName()) && this.designation.equals(employee.getDesignation())   && this.age == employee.getAge()) {\u000a            result = true;\u000a        }\u000a    }\u000a    return result;\u000a}\u000a
p4542
aVpublic static void main(String args[]) {\u000a\u000a    EmployeeModel first = new EmployeeModel("Sameer", "Developer", 25);\u000a    EmployeeModel second = new EmployeeModel("Jon", "Manager", 30);\u000a    EmployeeModel third = new EmployeeModel("Priyanka", "Tester", 24);\u000a\u000a    List<EmployeeModel> employeeList = new ArrayList<EmployeeModel>();\u000a    employeeList.add(first);\u000a    employeeList.add(second);\u000a    employeeList.add(third);\u000a\u000a    EmployeeModel checkUserOne = new EmployeeModel("Sameer", "Developer", 25);\u000a    System.out.println("Check checkUserOne is in list or not ");\u000a    System.out.println("Is checkUserOne Preasent = ? "+employeeList.contains(checkUserOne));\u000a\u000a    EmployeeModel checkUserTwo = new EmployeeModel("Tim", "Tester", 24);\u000a    System.out.println("Check checkUserTwo is in list or not ");\u000a    System.out.println("Is checkUserTwo Preasent = ? "+employeeList.contains(checkUserTwo));\u000a\u000a}\u000a
p4543
atp4544
Rp4545
sg13
VCheck if a value exists in ArrayList
p4546
sg15
S'EmployeeModel first = new EmployeeModel("Sameer", "Developer", 25);\nEmployeeModel second = new EmployeeModel("Jon", "Manager", 30);\nEmployeeModel third = new EmployeeModel("Priyanka", "Tester", 24);\nList<EmployeeModel> employeeList = new ArrayList<EmployeeModel>();\nemployeeList.add(first);\nemployeeList.add(second);\nemployeeList.add(third);'
p4547
sg16
S'System.out.println("Is checkUserTwo Preasent = ? " + employeeList.contains(checkUserTwo));'
p4548
sg18
g3
((lp4549
g4515
atp4550
Rp4551
sa(dp4552
g2
g3
((lp4553
VString[] simpleArray = new String[ where.size() ];\u000awhere.toArray( simpleArray );\u000a
p4554
aVList<String> where = new ArrayList<String>();\u000awhere.add( ContactsContract.Contacts.HAS_PHONE_NUMBER+"=1" );\u000awhere.add( ContactsContract.Contacts.IN_VISIBLE_GROUP+"=1" );\u000a
p4555
aV// iterate over the array\u000afor( String oneItem : where ) {\u000a    ...\u000a}\u000a\u000a// get specific items\u000awhere.get( 1 );\u000a
p4556
atp4557
Rp4558
sg7
I2843366
sg8
g3
((lp4559
VString[] simpleArray = new String[ where.size() ];\u000awhere.toArray( simpleArray );\u000a
p4560
aVList<String> where = new ArrayList<String>();\u000awhere.add( ContactsContract.Contacts.HAS_PHONE_NUMBER+"=1" );\u000awhere.add( ContactsContract.Contacts.IN_VISIBLE_GROUP+"=1" );\u000a
p4561
aV// iterate over the array\u000afor( String oneItem : where ) {\u000a    ...\u000a}\u000a\u000a// get specific items\u000awhere.get( 1 );\u000a
p4562
atp4563
Rp4564
sg13
g14
sg15
S'List<String> where = new ArrayList<String>();'
p4565
sg16
S'where.add(ContactsContract.Contacts.HAS_PHONE_NUMBER + "=1");\nwhere.add(ContactsContract.Contacts.IN_VISIBLE_GROUP + "=1");'
p4566
sg18
g3
((lp4567
VHow to add new elements to an array?
p4568
atp4569
Rp4570
sa(dp4571
g2
g3
((lp4572
Vimport java.util.*;\u000a//....\u000a\u000aList<String> list = new ArrayList<String>();\u000alist.add("1");\u000alist.add("2");\u000alist.add("3");\u000aSystem.out.println(list); // prints "[1, 2, 3]"\u000a
p4573
aVstatic <T> T[] append(T[] arr, T element) {\u000a    final int N = arr.length;\u000a    arr = Arrays.copyOf(arr, N + 1);\u000a    arr[N] = element;\u000a    return arr;\u000a}\u000a\u000aString[] arr = { "1", "2", "3" };\u000aSystem.out.println(Arrays.toString(arr)); // prints "[1, 2, 3]"\u000aarr = append(arr, "4");\u000aSystem.out.println(Arrays.toString(arr)); // prints "[1, 2, 3, 4]"\u000a
p4574
atp4575
Rp4576
sg7
I2843366
sg8
g3
((lp4577
Vimport java.util.*;\u000a//....\u000a\u000aList<String> list = new ArrayList<String>();\u000alist.add("1");\u000alist.add("2");\u000alist.add("3");\u000aSystem.out.println(list); // prints "[1, 2, 3]"\u000a
p4578
aVstatic <T> T[] append(T[] arr, T element) {\u000a    final int N = arr.length;\u000a    arr = Arrays.copyOf(arr, N + 1);\u000a    arr[N] = element;\u000a    return arr;\u000a}\u000a\u000aString[] arr = { "1", "2", "3" };\u000aSystem.out.println(Arrays.toString(arr)); // prints "[1, 2, 3]"\u000aarr = append(arr, "4");\u000aSystem.out.println(Arrays.toString(arr)); // prints "[1, 2, 3, 4]"\u000a
p4579
atp4580
Rp4581
sg13
g14
sg15
Nsg16
S'list.add("1");\nlist.add("2");\nlist.add("3");'
p4582
sg18
g3
((lp4583
g4568
atp4584
Rp4585
sa(dp4586
g2
g3
((lp4587
Vimport java.util.*;\u000a//....\u000a\u000aList<String> list = new ArrayList<String>();\u000alist.add("1");\u000alist.add("2");\u000alist.add("3");\u000aSystem.out.println(list); // prints "[1, 2, 3]"\u000a
p4588
aVstatic <T> T[] append(T[] arr, T element) {\u000a    final int N = arr.length;\u000a    arr = Arrays.copyOf(arr, N + 1);\u000a    arr[N] = element;\u000a    return arr;\u000a}\u000a\u000aString[] arr = { "1", "2", "3" };\u000aSystem.out.println(Arrays.toString(arr)); // prints "[1, 2, 3]"\u000aarr = append(arr, "4");\u000aSystem.out.println(Arrays.toString(arr)); // prints "[1, 2, 3, 4]"\u000a
p4589
atp4590
Rp4591
sg7
I2843366
sg8
g3
((lp4592
Vimport java.util.*;\u000a//....\u000a\u000aList<String> list = new ArrayList<String>();\u000alist.add("1");\u000alist.add("2");\u000alist.add("3");\u000aSystem.out.println(list); // prints "[1, 2, 3]"\u000a
p4593
aVstatic <T> T[] append(T[] arr, T element) {\u000a    final int N = arr.length;\u000a    arr = Arrays.copyOf(arr, N + 1);\u000a    arr[N] = element;\u000a    return arr;\u000a}\u000a\u000aString[] arr = { "1", "2", "3" };\u000aSystem.out.println(Arrays.toString(arr)); // prints "[1, 2, 3]"\u000aarr = append(arr, "4");\u000aSystem.out.println(Arrays.toString(arr)); // prints "[1, 2, 3, 4]"\u000a
p4594
atp4595
Rp4596
sg13
g14
sg15
S'static <T> T[] append(T[] arr, T element) {\n    final int N = arr.length;\n    arr = Arrays.copyOf(arr, N + 1);\n    arr[N] = element;\n    return arr;\n}\nString[] arr = { "1", "2", "3" };'
p4597
sg16
S'arr = append(arr, "4");'
p4598
sg18
g3
((lp4599
g4568
atp4600
Rp4601
sa(dp4602
g2
g3
((lp4603
VList<String> where = new ArrayList<String>();\u000awhere.add(ContactsContract.Contacts.HAS_PHONE_NUMBER + "=1");\u000awhere.add(ContactsContract.Contacts.IN_VISIBLE_GROUP + "=1");\u000a
p4604
aVString[] where = new String[]{\u000a    ContactsContract.Contacts.HAS_PHONE_NUMBER + "=1",\u000a    ContactsContract.Contacts.IN_VISIBLE_GROUP + "=1"\u000a};\u000a
p4605
atp4606
Rp4607
sg7
I2843366
sg8
g3
((lp4608
VList<String> where = new ArrayList<String>();\u000awhere.add(ContactsContract.Contacts.HAS_PHONE_NUMBER + "=1");\u000awhere.add(ContactsContract.Contacts.IN_VISIBLE_GROUP + "=1");\u000a
p4609
aVString[] where = new String[]{\u000a    ContactsContract.Contacts.HAS_PHONE_NUMBER + "=1",\u000a    ContactsContract.Contacts.IN_VISIBLE_GROUP + "=1"\u000a};\u000a
p4610
atp4611
Rp4612
sg13
g14
sg15
S'List<String> where = new ArrayList<String>();'
p4613
sg16
S'where.add(ContactsContract.Contacts.HAS_PHONE_NUMBER + "=1");\nwhere.add(ContactsContract.Contacts.IN_VISIBLE_GROUP + "=1");'
p4614
sg18
g3
((lp4615
g4568
atp4616
Rp4617
sa(dp4618
g2
g3
((lp4619
Vdouble i2=i/60000;\u000atv.setText(new DecimalFormat("##.##").format(i2));\u000a
p4620
atp4621
Rp4622
sg7
I10959424
sg8
g3
((lp4623
Vdouble i2=i/60000;\u000atv.setText(new DecimalFormat("##.##").format(i2));\u000a
p4624
atp4625
Rp4626
sg13
VShow only two digit after decimal
p4627
sg15
S'double i2 = i / 60000;'
p4628
sg16
S'tv.setText(new DecimalFormat("##.##").format(i2));'
p4629
sg18
g3
((lp4630
VShow only two digit after decimal
p4631
atp4632
Rp4633
sa(dp4634
g2
g3
((lp4635
tp4636
Rp4637
sg7
I10959424
sg8
g3
((lp4638
tp4639
Rp4640
sg13
VShow only two digit after decimal
p4641
sg15
Nsg16
S'String.format("%.2f", i2);'
p4642
sg18
g3
((lp4643
g4631
atp4644
Rp4645
sa(dp4646
g2
g3
((lp4647
V   double value = 12.3457652133\u000a  value =Double.parseDouble(new DecimalFormat("##.####").format(value));\u000a
p4648
atp4649
Rp4650
sg7
I10959424
sg8
g3
((lp4651
V   double value = 12.3457652133\u000a  value =Double.parseDouble(new DecimalFormat("##.####").format(value));\u000a
p4652
atp4653
Rp4654
sg13
VShow only two digit after decimal
p4655
sg15
S'double value = 12.3457652133;'
p4656
sg16
S'value = Double.parseDouble(new DecimalFormat("##.####").format(value));'
p4657
sg18
g3
((lp4658
g4631
atp4659
Rp4660
sa(dp4661
g2
g3
((lp4662
Vpublic class Example\u000a{\u000a    public String name;\u000a    public String location;\u000a\u000a    public String[] getExample()\u000a    {\u000a        String ar[] = new String[2];\u000a        ar[0]= name;\u000a        ar[1] =  location;\u000a        return ar; //returning two values at once\u000a    }\u000a}\u000a
p4663
atp4664
Rp4665
sg7
I8557716
sg8
g3
((lp4666
Vpublic class Example\u000a{\u000a    public String name;\u000a    public String location;\u000a\u000a    public String[] getExample()\u000a    {\u000a        String ar[] = new String[2];\u000a        ar[0]= name;\u000a        ar[1] =  location;\u000a        return ar; //returning two values at once\u000a    }\u000a}\u000a
p4667
atp4668
Rp4669
sg13
g14
sg15
S'public String name;\npublic String location;'
p4670
sg16
S'String[] ar = new String[2];\nar[0] = name;\nar[1] = location;\nreturn ar;'
p4671
sg18
g3
((lp4672
VHow to return multiple values?
p4673
atp4674
Rp4675
sa(dp4676
g2
g3
((lp4677
V ArrayList<Dog> list = new ArrayList<Dog>();\u000a Dog e = new Dog();\u000a list.add(e);\u000a System.out.println(list);\u000a
p4678
atp4679
Rp4680
sg7
I2047003
sg8
g3
((lp4681
VSystem.out.println(list.get(index))\u000a
p4682
atp4683
Rp4684
sg13
Vprint arraylist element?
p4685
sg15
S'ArrayList<Dog> list = new ArrayList<Dog>();\nDog e = new Dog();\nlist.add(e);'
p4686
sg16
S'System.out.println(list.get(index));'
p4687
sg18
g3
((lp4688
Vprint arraylist element?
p4689
atp4690
Rp4691
sa(dp4692
g2
g3
((lp4693
tp4694
Rp4695
sg7
I240546
sg8
g3
((lp4696
Vpublic static String html2text(String html) {\u000a    return Jsoup.parse(html).text();\u000a}\u000a
p4697
atp4698
Rp4699
sg13
VRemove HTML tags from a String
p4700
sg15
Nsg16
S'return Jsoup.parse(html).text();'
p4701
sg18
g3
((lp4702
VRemove HTML tags from a String
p4703
atp4704
Rp4705
sa(dp4706
g2
g3
((lp4707
tp4708
Rp4709
sg7
I240546
sg8
g3
((lp4710
Vandroid.text.Html.fromHtml(instruction).toString()\u000a
p4711
atp4712
Rp4713
sg13
VRemove HTML tags from a String
p4714
sg15
Nsg16
S'android.text.Html.fromHtml(instruction).toString();'
p4715
sg18
g3
((lp4716
g4703
atp4717
Rp4718
sa(dp4719
g2
g3
((lp4720
tp4721
Rp4722
sg7
I240546
sg8
g3
((lp4723
VreplaceAll("\u005c\u005c<[^>]*>","")\u000a
p4724
atp4725
Rp4726
sg13
VRemove HTML tags from a String
p4727
sg15
Nsg16
S'replaceAll("\\\\<[^>]*>", "");'
p4728
sg18
g3
((lp4729
g4703
atp4730
Rp4731
sa(dp4732
g2
g3
((lp4733
tp4734
Rp4735
sg7
I1962181
sg8
g3
((lp4736
Vs = s.substring(0, s.length() - 1)\u000a
p4737
atp4738
Rp4739
sg13
g14
sg15
Nsg16
S's = s.substring(0, s.length() - 1);'
p4740
sg18
g3
((lp4741
VHow do I delete specific characters from a particular String in Java?
p4742
atp4743
Rp4744
sa(dp4745
g2
g3
((lp4746
VString str = "whatever";\u000astr = str.replaceAll("[,.]", "");\u000a
p4747
aV[,.]\u000a
p4748
atp4749
Rp4750
sg7
I1962181
sg8
g3
((lp4751
VString str = "whatever";\u000astr = str.replaceAll("[,.]", "");\u000a
p4752
aV[,.]\u000a
p4753
atp4754
Rp4755
sg13
g14
sg15
S'String str = "whatever";'
p4756
sg16
S'str = str.replaceAll("[,.]", "");'
p4757
sg18
g3
((lp4758
g4742
atp4759
Rp4760
sa(dp4761
g2
g3
((lp4762
tp4763
Rp4764
sg7
I1962181
sg8
g3
((lp4765
Vs = s.replace(".","");\u000a
p4766
aVs = s.substring(0, s.length() - 1);\u000a
p4767
aVs = s.replace(",","");\u000a
p4768
atp4769
Rp4770
sg13
g14
sg15
Nsg16
S's = s.substring(0, s.length() - 1);'
p4771
sg18
g3
((lp4772
g4742
atp4773
Rp4774
sa(dp4775
g2
g3
((lp4776
tp4777
Rp4778
sg7
I1962181
sg8
g3
((lp4779
Vs = s.replace(".","");\u000a
p4780
aVs = s.substring(0, s.length() - 1);\u000a
p4781
aVs = s.replace(",","");\u000a
p4782
atp4783
Rp4784
sg13
g14
sg15
Nsg16
S's = s.replace(",", "");'
p4785
sg18
g3
((lp4786
g4742
atp4787
Rp4788
sa(dp4789
g2
g3
((lp4790
tp4791
Rp4792
sg7
I1962181
sg8
g3
((lp4793
Vs = s.replace(".","");\u000a
p4794
aVs = s.substring(0, s.length() - 1);\u000a
p4795
aVs = s.replace(",","");\u000a
p4796
atp4797
Rp4798
sg13
g14
sg15
Nsg16
S's = s.replace(".", "");'
p4799
sg18
g3
((lp4800
g4742
atp4801
Rp4802
sa(dp4803
g2
g3
((lp4804
tp4805
Rp4806
sg7
I9581530
sg8
g3
((lp4807
VByte b = new Byte(rno[0]);\u000aint i = b.intValue();\u000a
p4808
aVint i=rno[0];\u000a
p4809
aVByte b = rno[0]; // Boxing conversion converts `byte` to `Byte`\u000aint i = b.intValue();\u000a
p4810
aVint i;\u000abyte b;\u000a\u000ai = 5;\u000ab = (byte)i;\u000a
p4811
atp4812
Rp4813
sg13
VConverting from byte to int in java
p4814
sg15
Nsg16
S'int i = rno[0];'
p4815
sg18
g3
((lp4816
VConverting from byte to int in java
p4817
atp4818
Rp4819
sa(dp4820
g2
g3
((lp4821
tp4822
Rp4823
sg7
I9581530
sg8
g3
((lp4824
VByte b = new Byte(rno[0]);\u000aint i = b.intValue();\u000a
p4825
aVint i=rno[0];\u000a
p4826
aVByte b = rno[0]; // Boxing conversion converts `byte` to `Byte`\u000aint i = b.intValue();\u000a
p4827
aVint i;\u000abyte b;\u000a\u000ai = 5;\u000ab = (byte)i;\u000a
p4828
atp4829
Rp4830
sg13
VConverting from byte to int in java
p4831
sg15
Nsg16
S'Byte b = rno[0];\nint i = b.intValue();'
p4832
sg18
g3
((lp4833
g4817
atp4834
Rp4835
sa(dp4836
g2
g3
((lp4837
tp4838
Rp4839
sg7
I9581530
sg8
g3
((lp4840
VByte b = new Byte(rno[0]);\u000aint i = b.intValue();\u000a
p4841
aVint i=rno[0];\u000a
p4842
aVByte b = rno[0]; // Boxing conversion converts `byte` to `Byte`\u000aint i = b.intValue();\u000a
p4843
aVint i;\u000abyte b;\u000a\u000ai = 5;\u000ab = (byte)i;\u000a
p4844
atp4845
Rp4846
sg13
VConverting from byte to int in java
p4847
sg15
Nsg16
S'Byte b = new Byte(rno[0]);\nint i = b.intValue();'
p4848
sg18
g3
((lp4849
g4817
atp4850
Rp4851
sa(dp4852
g2
g3
((lp4853
Vbyte b = (byte)0xC8;\u000aint v1 = b;       // v1 is -56 (0xFFFFFFC8)\u000aint v2 = b & 0xFF // v2 is 200 (0x000000C8)\u000a
p4854
atp4855
Rp4856
sg7
I9581530
sg8
g3
((lp4857
Vbyte b = (byte)0xC8;\u000aint v1 = b;       // v1 is -56 (0xFFFFFFC8)\u000aint v2 = b & 0xFF // v2 is 200 (0x000000C8)\u000a
p4858
atp4859
Rp4860
sg13
VConverting from byte to int in java
p4861
sg15
S'byte b = (byte) 0xC8;'
p4862
sg16
S'int v1 = b;'
p4863
sg18
g3
((lp4864
g4817
atp4865
Rp4866
sa(dp4867
g2
g3
((lp4868
V2,abby;\u000a5,daisy;\u000a3,denver;\u000a4,frost;\u000a1,froyo;\u000a
p4869
aVHashMap<Integer,String> map = new HashMap<Integer,String>();\u000amap.put(1,"froyo");\u000amap.put(2,"abby");\u000amap.put(3,"denver");\u000amap.put(4,"frost");\u000amap.put(5,"daisy");\u000a
p4870
atp4871
Rp4872
sg7
I8119366
sg8
g3
((lp4873
VMap<Integer, String> sortedMap = \u000a     unsortedMap.entrySet().stream()\u000a    .sorted(Entry.comparingByValue())\u000a    .collect(Collectors.toMap(Entry::getKey, Entry::getValue,\u000a                              (e1, e2) -> e1, LinkedHashMap::new));\u000a
p4874
atp4875
Rp4876
sg13
VSorting HashMap by values
p4877
sg15
S'HashMap<Integer, String> map = new HashMap<Integer, String>();\nmap.put(1, "froyo");\nmap.put(2, "abby");\nmap.put(3, "denver");\nmap.put(4, "frost");\nmap.put(5, "daisy");'
p4878
sg16
S'Map<Integer, String> sortedMap = unsortedMap.entrySet().stream().sorted(Entry.comparingByValue()).collect(Collectors.toMap(Entry::getKey, Entry::getValue, (e1, e2) -> e1, LinkedHashMap::new));'
p4879
sg18
g3
((lp4880
VSorting HashMap by values
p4881
atp4882
Rp4883
sa(dp4884
g2
g3
((lp4885
Vpackage com.rais;\u000a\u000aimport java.util.Collections;\u000aimport java.util.Comparator;\u000aimport java.util.HashMap;\u000aimport java.util.LinkedHashMap;\u000aimport java.util.LinkedList;\u000aimport java.util.List;\u000aimport java.util.Map;\u000aimport java.util.Map.Entry;\u000a\u000apublic class SortMapByValue\u000a{\u000a    public static boolean ASC = true;\u000a    public static boolean DESC = false;\u000a\u000a    public static void main(String[] args)\u000a    {\u000a\u000a        // Creating dummy unsorted map\u000a        Map<String, Integer> unsortMap = new HashMap<String, Integer>();\u000a        unsortMap.put("B", 55);\u000a        unsortMap.put("A", 80);\u000a        unsortMap.put("D", 20);\u000a        unsortMap.put("C", 70);\u000a\u000a        System.out.println("Before sorting......");\u000a        printMap(unsortMap);\u000a\u000a        System.out.println("After sorting ascending order......");\u000a        Map<String, Integer> sortedMapAsc = sortByComparator(unsortMap, ASC);\u000a        printMap(sortedMapAsc);\u000a\u000a\u000a        System.out.println("After sorting descindeng order......");\u000a        Map<String, Integer> sortedMapDesc = sortByComparator(unsortMap, DESC);\u000a        printMap(sortedMapDesc);\u000a\u000a    }\u000a\u000a    private static Map<String, Integer> sortByComparator(Map<String, Integer> unsortMap, final boolean order)\u000a    {\u000a\u000a        List<Entry<String, Integer>> list = new LinkedList<Entry<String, Integer>>(unsortMap.entrySet());\u000a\u000a        // Sorting the list based on values\u000a        Collections.sort(list, new Comparator<Entry<String, Integer>>()\u000a        {\u000a            public int compare(Entry<String, Integer> o1,\u000a                    Entry<String, Integer> o2)\u000a            {\u000a                if (order)\u000a                {\u000a                    return o1.getValue().compareTo(o2.getValue());\u000a                }\u000a                else\u000a                {\u000a                    return o2.getValue().compareTo(o1.getValue());\u000a\u000a                }\u000a            }\u000a        });\u000a\u000a        // Maintaining insertion order with the help of LinkedList\u000a        Map<String, Integer> sortedMap = new LinkedHashMap<String, Integer>();\u000a        for (Entry<String, Integer> entry : list)\u000a        {\u000a            sortedMap.put(entry.getKey(), entry.getValue());\u000a        }\u000a\u000a        return sortedMap;\u000a    }\u000a\u000a    public static void printMap(Map<String, Integer> map)\u000a    {\u000a        for (Entry<String, Integer> entry : map.entrySet())\u000a        {\u000a            System.out.println("Key : " + entry.getKey() + " Value : "+ entry.getValue());\u000a        }\u000a    }\u000a}\u000a
p4886
atp4887
Rp4888
sg7
I8119366
sg8
g3
((lp4889
Vpackage com.rais;\u000a\u000aimport java.util.Collections;\u000aimport java.util.Comparator;\u000aimport java.util.HashMap;\u000aimport java.util.LinkedHashMap;\u000aimport java.util.LinkedList;\u000aimport java.util.List;\u000aimport java.util.Map;\u000aimport java.util.Map.Entry;\u000a\u000apublic class SortMapByValue\u000a{\u000a    public static boolean ASC = true;\u000a    public static boolean DESC = false;\u000a\u000a    public static void main(String[] args)\u000a    {\u000a\u000a        // Creating dummy unsorted map\u000a        Map<String, Integer> unsortMap = new HashMap<String, Integer>();\u000a        unsortMap.put("B", 55);\u000a        unsortMap.put("A", 80);\u000a        unsortMap.put("D", 20);\u000a        unsortMap.put("C", 70);\u000a\u000a        System.out.println("Before sorting......");\u000a        printMap(unsortMap);\u000a\u000a        System.out.println("After sorting ascending order......");\u000a        Map<String, Integer> sortedMapAsc = sortByComparator(unsortMap, ASC);\u000a        printMap(sortedMapAsc);\u000a\u000a\u000a        System.out.println("After sorting descindeng order......");\u000a        Map<String, Integer> sortedMapDesc = sortByComparator(unsortMap, DESC);\u000a        printMap(sortedMapDesc);\u000a\u000a    }\u000a\u000a    private static Map<String, Integer> sortByComparator(Map<String, Integer> unsortMap, final boolean order)\u000a    {\u000a\u000a        List<Entry<String, Integer>> list = new LinkedList<Entry<String, Integer>>(unsortMap.entrySet());\u000a\u000a        // Sorting the list based on values\u000a        Collections.sort(list, new Comparator<Entry<String, Integer>>()\u000a        {\u000a            public int compare(Entry<String, Integer> o1,\u000a                    Entry<String, Integer> o2)\u000a            {\u000a                if (order)\u000a                {\u000a                    return o1.getValue().compareTo(o2.getValue());\u000a                }\u000a                else\u000a                {\u000a                    return o2.getValue().compareTo(o1.getValue());\u000a\u000a                }\u000a            }\u000a        });\u000a\u000a        // Maintaining insertion order with the help of LinkedList\u000a        Map<String, Integer> sortedMap = new LinkedHashMap<String, Integer>();\u000a        for (Entry<String, Integer> entry : list)\u000a        {\u000a            sortedMap.put(entry.getKey(), entry.getValue());\u000a        }\u000a\u000a        return sortedMap;\u000a    }\u000a\u000a    public static void printMap(Map<String, Integer> map)\u000a    {\u000a        for (Entry<String, Integer> entry : map.entrySet())\u000a        {\u000a            System.out.println("Key : " + entry.getKey() + " Value : "+ entry.getValue());\u000a        }\u000a    }\u000a}\u000a
p4890
atp4891
Rp4892
sg13
VSorting HashMap by values
p4893
sg15
Nsg16
S'Map<String, Integer> sortedMapAsc = sortByComparator(unsortMap, ASC);'
p4894
sg18
g3
((lp4895
g4881
atp4896
Rp4897
sa(dp4898
g2
g3
((lp4899
Vpackage com.rais;\u000a\u000aimport java.util.Collections;\u000aimport java.util.Comparator;\u000aimport java.util.HashMap;\u000aimport java.util.LinkedHashMap;\u000aimport java.util.LinkedList;\u000aimport java.util.List;\u000aimport java.util.Map;\u000aimport java.util.Map.Entry;\u000a\u000apublic class SortMapByValue\u000a{\u000a    public static boolean ASC = true;\u000a    public static boolean DESC = false;\u000a\u000a    public static void main(String[] args)\u000a    {\u000a\u000a        // Creating dummy unsorted map\u000a        Map<String, Integer> unsortMap = new HashMap<String, Integer>();\u000a        unsortMap.put("B", 55);\u000a        unsortMap.put("A", 80);\u000a        unsortMap.put("D", 20);\u000a        unsortMap.put("C", 70);\u000a\u000a        System.out.println("Before sorting......");\u000a        printMap(unsortMap);\u000a\u000a        System.out.println("After sorting ascending order......");\u000a        Map<String, Integer> sortedMapAsc = sortByComparator(unsortMap, ASC);\u000a        printMap(sortedMapAsc);\u000a\u000a\u000a        System.out.println("After sorting descindeng order......");\u000a        Map<String, Integer> sortedMapDesc = sortByComparator(unsortMap, DESC);\u000a        printMap(sortedMapDesc);\u000a\u000a    }\u000a\u000a    private static Map<String, Integer> sortByComparator(Map<String, Integer> unsortMap, final boolean order)\u000a    {\u000a\u000a        List<Entry<String, Integer>> list = new LinkedList<Entry<String, Integer>>(unsortMap.entrySet());\u000a\u000a        // Sorting the list based on values\u000a        Collections.sort(list, new Comparator<Entry<String, Integer>>()\u000a        {\u000a            public int compare(Entry<String, Integer> o1,\u000a                    Entry<String, Integer> o2)\u000a            {\u000a                if (order)\u000a                {\u000a                    return o1.getValue().compareTo(o2.getValue());\u000a                }\u000a                else\u000a                {\u000a                    return o2.getValue().compareTo(o1.getValue());\u000a\u000a                }\u000a            }\u000a        });\u000a\u000a        // Maintaining insertion order with the help of LinkedList\u000a        Map<String, Integer> sortedMap = new LinkedHashMap<String, Integer>();\u000a        for (Entry<String, Integer> entry : list)\u000a        {\u000a            sortedMap.put(entry.getKey(), entry.getValue());\u000a        }\u000a\u000a        return sortedMap;\u000a    }\u000a\u000a    public static void printMap(Map<String, Integer> map)\u000a    {\u000a        for (Entry<String, Integer> entry : map.entrySet())\u000a        {\u000a            System.out.println("Key : " + entry.getKey() + " Value : "+ entry.getValue());\u000a        }\u000a    }\u000a}\u000a
p4900
atp4901
Rp4902
sg7
I8119366
sg8
g3
((lp4903
Vpackage com.rais;\u000a\u000aimport java.util.Collections;\u000aimport java.util.Comparator;\u000aimport java.util.HashMap;\u000aimport java.util.LinkedHashMap;\u000aimport java.util.LinkedList;\u000aimport java.util.List;\u000aimport java.util.Map;\u000aimport java.util.Map.Entry;\u000a\u000apublic class SortMapByValue\u000a{\u000a    public static boolean ASC = true;\u000a    public static boolean DESC = false;\u000a\u000a    public static void main(String[] args)\u000a    {\u000a\u000a        // Creating dummy unsorted map\u000a        Map<String, Integer> unsortMap = new HashMap<String, Integer>();\u000a        unsortMap.put("B", 55);\u000a        unsortMap.put("A", 80);\u000a        unsortMap.put("D", 20);\u000a        unsortMap.put("C", 70);\u000a\u000a        System.out.println("Before sorting......");\u000a        printMap(unsortMap);\u000a\u000a        System.out.println("After sorting ascending order......");\u000a        Map<String, Integer> sortedMapAsc = sortByComparator(unsortMap, ASC);\u000a        printMap(sortedMapAsc);\u000a\u000a\u000a        System.out.println("After sorting descindeng order......");\u000a        Map<String, Integer> sortedMapDesc = sortByComparator(unsortMap, DESC);\u000a        printMap(sortedMapDesc);\u000a\u000a    }\u000a\u000a    private static Map<String, Integer> sortByComparator(Map<String, Integer> unsortMap, final boolean order)\u000a    {\u000a\u000a        List<Entry<String, Integer>> list = new LinkedList<Entry<String, Integer>>(unsortMap.entrySet());\u000a\u000a        // Sorting the list based on values\u000a        Collections.sort(list, new Comparator<Entry<String, Integer>>()\u000a        {\u000a            public int compare(Entry<String, Integer> o1,\u000a                    Entry<String, Integer> o2)\u000a            {\u000a                if (order)\u000a                {\u000a                    return o1.getValue().compareTo(o2.getValue());\u000a                }\u000a                else\u000a                {\u000a                    return o2.getValue().compareTo(o1.getValue());\u000a\u000a                }\u000a            }\u000a        });\u000a\u000a        // Maintaining insertion order with the help of LinkedList\u000a        Map<String, Integer> sortedMap = new LinkedHashMap<String, Integer>();\u000a        for (Entry<String, Integer> entry : list)\u000a        {\u000a            sortedMap.put(entry.getKey(), entry.getValue());\u000a        }\u000a\u000a        return sortedMap;\u000a    }\u000a\u000a    public static void printMap(Map<String, Integer> map)\u000a    {\u000a        for (Entry<String, Integer> entry : map.entrySet())\u000a        {\u000a            System.out.println("Key : " + entry.getKey() + " Value : "+ entry.getValue());\u000a        }\u000a    }\u000a}\u000a
p4904
atp4905
Rp4906
sg13
VSorting HashMap by values
p4907
sg15
Nsg16
S'Map<String, Integer> sortedMapDesc = sortByComparator(unsortMap, DESC);'
p4908
sg18
g3
((lp4909
g4881
atp4910
Rp4911
sa(dp4912
g2
g3
((lp4913
tp4914
Rp4915
sg7
I8119366
sg8
g3
((lp4916
Vpublic LinkedHashMap<Integer, String> sortHashMapByValues(\u000a        HashMap<Integer, String> passedMap) {\u000a    List<Integer> mapKeys = new ArrayList<>(passedMap.keySet());\u000a    List<String> mapValues = new ArrayList<>(passedMap.values());\u000a    Collections.sort(mapValues);\u000a    Collections.sort(mapKeys);\u000a\u000a    LinkedHashMap<Integer, String> sortedMap =\u000a        new LinkedHashMap<>();\u000a\u000a    Iterator<String> valueIt = mapValues.iterator();\u000a    while (valueIt.hasNext()) {\u000a        String val = valueIt.next();\u000a        Iterator<Integer> keyIt = mapKeys.iterator();\u000a\u000a        while (keyIt.hasNext()) {\u000a            Integer key = keyIt.next();\u000a            String comp1 = passedMap.get(key);\u000a            String comp2 = val;\u000a\u000a            if (comp1.equals(comp2)) {\u000a                keyIt.remove();\u000a                sortedMap.put(key, val);\u000a                break;\u000a            }\u000a        }\u000a    }\u000a    return sortedMap;\u000a}\u000a
p4917
atp4918
Rp4919
sg13
VSorting HashMap by values
p4920
sg15
Nsg16
S'List<Integer> mapKeys = new ArrayList<>(passedMap.keySet());\nList<String> mapValues = new ArrayList<>(passedMap.values());\nCollections.sort(mapValues);\nCollections.sort(mapKeys);\nLinkedHashMap<Integer, String> sortedMap = new LinkedHashMap<>();\nIterator<String> valueIt = mapValues.iterator();\nwhile (valueIt.hasNext()) {\n    String val = valueIt.next();\n    Iterator<Integer> keyIt = mapKeys.iterator();\n    while (keyIt.hasNext()) {\n        Integer key = keyIt.next();\n        String comp1 = passedMap.get(key);\n        String comp2 = val;\n        if (comp1.equals(comp2)) {\n            keyIt.remove();\n            sortedMap.put(key, val);\n            break;\n        }\n    }\n}'
p4921
sg18
g3
((lp4922
g4881
atp4923
Rp4924
sa.