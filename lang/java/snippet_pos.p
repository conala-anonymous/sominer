ccollections
defaultdict
p0
(c__builtin__
set
p1
tp2
Rp3
I20389890
g1
((lp4
S'int answer = rn.nextInt(10) + 1;'
p5
aS'int randomNum = rand.nextInt((max - min) + 1) + min;'
p6
atp7
Rp8
sI1509391
g1
((lp9
S'return new ArrayList(hashMapObject.entrySet()).get(0);'
p10
aS'return hashMapObject.entrySet().toArray()[0];'
p11
aS'String first = myMap.firstEntry().getValue();'
p12
aS'return hashMapObject.entrySet().iterator().next();'
p13
aS'Map.Entry<String, String> entry = map.entrySet().iterator().next();'
p14
aS'for (Map.Entry<String, String> entry : MapObj.entrySet()) {\n    return entry;\n}'
p15
aS'String firstOther = myMap.get(myMap.firstKey());'
p16
atp17
Rp18
sI909843
g1
((lp19
S'public class A {\n\n    static int UNIQUE_ID = 0;\n\n    int uid = ++UNIQUE_ID;\n\n    public int hashCode() {\n        return uid;\n    }\n}'
p20
atp21
Rp22
sI1770010
g1
((lp23
S'TimeWatch watch = TimeWatch.start();\nlong passedTimeInMs = watch.time();'
p24
aS'Monitor monitor = MonitorFactory.start(thisJoinPoint.toShortString());\nObject returnedObject = proceed();\nmonitor.stop();\nreturn returnedObject;'
p25
aS'long startTime = System.currentTimeMillis();\nlong estimatedTime = System.currentTimeMillis() - startTime;'
p26
aS'long startTime = System.nanoTime();\nlong estimatedTime = System.nanoTime() - startTime;'
p27
atp28
Rp29
sI4051887
g1
((lp30
S"StringUtils.leftPad(yourString, 8, '0');"
p31
aS'("00000000" + "Apple").substring("Apple".length());'
p32
atp33
Rp34
sI320542
g1
((lp35
S'String path = Test.class.getProtectionDomain().getCodeSource().getLocation().getPath();\nString decodedPath = URLDecoder.decode(path, "UTF-8");'
p36
aS'String path = url;\nif (path.startsWith("jar:")) {\n    final int index = path.indexOf("!/");\n    path = path.substring(4, index);\n}\ntry {\n    if (PlatformUtils.isWindows() && path.matches("file:[A-Za-z]:.*")) {\n        path = "file:/" + path.substring(5);\n    }\n    return new File(new URL(path).toURI());\n} catch (final MalformedURLException e) {\n} catch (final URISyntaxException e) {\n}\nif (path.startsWith("file:")) {\n    path = path.substring(5);\n    return new File(path);\n}\nthrow new IllegalArgumentException("Invalid URL: " + url);'
p37
aS'return new File(MyClass.class.getProtectionDomain().getCodeSource().getLocation().toURI().getPath());'
p38
aS'if (c == null)\n    return null;\ntry {\n    final URL codeSourceLocation = c.getProtectionDomain().getCodeSource().getLocation();\n    if (codeSourceLocation != null)\n        return codeSourceLocation;\n} catch (final SecurityException e) {\n} catch (final NullPointerException e) {\n}\nfinal URL classResource = c.getResource(c.getSimpleName() + ".class");\nif (classResource == null)\n    return null;\nfinal String url = classResource.toString();\nfinal String suffix = c.getCanonicalName().replace(\'.\', \'/\') + ".class";\nif (!url.endsWith(suffix))\n    return null;\nfinal String base = url.substring(0, url.length() - suffix.length());\nString path = base;\nif (path.startsWith("jar:"))\n    path = path.substring(4, path.length() - 2);\ntry {\n    return new URL(path);\n} catch (final MalformedURLException e) {\n    e.printStackTrace();\n    return null;\n}'
p39
aS'return url == null ? null : urlToFile(url.toString());'
p40
atp41
Rp42
sI15039519
g1
((lp43
S'str.add("Value1");'
p44
aS'mylist.add(mystring);'
p45
atp46
Rp47
sI21083170
g1
((lp48
S'return (container -> {\n    container.setPort(8012);\n});'
p49
atp50
Rp51
sI1946668
g1
((lp52
S'Collections.sort(unsortedList, new Comparator<Person>() {\n\n    @Override\n    public int compare(Person a, Person b) {\n        return b.getName().compareTo(a.getName());\n    }\n});'
p53
aS'Collections.sort(people, Collections.reverseOrder());'
p54
aS'personList.sort((a, b) -> b.getName().compareTo(a.getName()));'
p55
aS'Collections.sort(unsortedList, new Comparator<Person>() {\n\n    @Override\n    public int compare(Person a, Person b) {\n        return a.getName().compareTo(b.getName());\n    }\n});'
p56
aS'Collections.sort(people, Collections.reverseOrder(new Person.AgeComparator()));'
p57
aS'Collections.sort(personList, (Person a, Person b) -> b.getName().compareTo(a.getName()));'
p58
aS'Collections.sort(people, new Person.AgeComparator());'
p59
aS'Collections.sort(people);'
p60
atp61
Rp62
sI822322
g1
((lp63
S'Map<K2, K1> m2;\nMap<K1, V> m1;'
p64
atp65
Rp66
sI4967482
g1
((lp67
S'response.sendRedirect(redirectURL);'
p68
atp69
Rp70
sI10959424
g1
((lp71
S'String.format("%.2f", i2);'
p72
aS'tv.setText(new DecimalFormat("##.##").format(i2));'
p73
aS'value = Double.parseDouble(new DecimalFormat("##.####").format(value));'
p74
atp75
Rp76
sI15874117
g1
((lp77
S'new CountDownTimer(30000, 1000) {\n\n    public void onFinish() {\n    }\n\n    public void onTick(long millisUntilFinished) {\n    }\n}.start();'
p78
aS'Thread.sleep(millis);'
p79
aS'final Handler handler = new Handler();\nhandler.postDelayed(new Runnable() {\n\n    @Override\n    public void run() {\n        buttons[inew][jnew].setBackgroundColor(Color.BLACK);\n    }\n}, 5000);'
p80
atp81
Rp82
sI8119366
g1
((lp83
S'Map<Integer, String> sortedMap = unsortedMap.entrySet().stream().sorted(Entry.comparingByValue()).collect(Collectors.toMap(Entry::getKey, Entry::getValue, (e1, e2) -> e1, LinkedHashMap::new));'
p84
aS'List<Integer> mapKeys = new ArrayList<>(passedMap.keySet());\nList<String> mapValues = new ArrayList<>(passedMap.values());\nCollections.sort(mapValues);\nCollections.sort(mapKeys);\nLinkedHashMap<Integer, String> sortedMap = new LinkedHashMap<>();\nIterator<String> valueIt = mapValues.iterator();\nwhile (valueIt.hasNext()) {\n    String val = valueIt.next();\n    Iterator<Integer> keyIt = mapKeys.iterator();\n    while (keyIt.hasNext()) {\n        Integer key = keyIt.next();\n        String comp1 = passedMap.get(key);\n        String comp2 = val;\n        if (comp1.equals(comp2)) {\n            keyIt.remove();\n            sortedMap.put(key, val);\n            break;\n        }\n    }\n}'
p85
aS'Map<String, Integer> sortedMapAsc = sortByComparator(unsortMap, ASC);'
p86
aS'Map<String, Integer> sortedMapDesc = sortByComparator(unsortMap, DESC);'
p87
atp88
Rp89
sI1816673
g1
((lp90
S'new File("C:/").exists();'
p91
aS'new File("path/to/file.txt").isFile();'
p92
aS'if (f.exists() && !f.isDirectory()) {\n}'
p93
aS'Path path = Paths.get(filePathString);\nif (Files.exists(path)) {\n}'
p94
atp95
Rp96
sI13942701
g1
((lp97
S'reader.useDelimiter("");'
p98
aS'char c = reader.findInLine(".").charAt(0);'
p99
aS'char c = reader.next(".").charAt(0);'
p100
aS'char c = reader.next().trim().charAt(0);'
p101
aS'char c = reader.next().charAt(0);'
p102
atp103
Rp104
sI3551821
g1
((lp105
S'FileWriter writer = new FileWriter(getExternalStorageDirectory());\nwriter.write("This\\n is\\n an\\n example\\n");\nwriter.flush();\nwriter.close();'
p106
aS'File sdCard = Environment.getExternalStorageDirectory();\nFile dir = new File(sdCard.getAbsolutePath() + "/dir1/dir2");\ndir.mkdirs();\nFile file = new File(dir, "filename");\nFileOutputStream f = new FileOutputStream(file);'
p107
atp108
Rp109
sI7833689
g1
((lp110
S'System.out.println("I\\nam\\na\\nboy");'
p111
aS'String x = "Hello," + System.lineSeparator() + "there";'
p112
aS'System.out.println("I am a boy".replaceAll("\\\\s+", System.getProperty("line.separator")));'
p113
aS'System.out.println("I am a boy".replaceAll("\\\\s+", "\\n"));'
p114
atp115
Rp116
sI16027229
g1
((lp117
S'BufferedReader br = new BufferedReader(new FileReader(fileName));\ntry {\n    StringBuilder sb = new StringBuilder();\n    String line = br.readLine();\n    while (line != null) {\n        sb.append(line);\n        sb.append("\\n");\n        line = br.readLine();\n    }\n    return sb.toString();\n} finally {\n    br.close();\n}'
p118
atp119
Rp120
sI2891361
g1
((lp121
S'TimeZone.setDefault(TimeZone.getTimeZone("UTC"));'
p122
aS'SimpleDateFormat isoFormat = new SimpleDateFormat("yyyy-MM-dd\'T\'HH:mm:ss");\nisoFormat.setTimeZone(TimeZone.getTimeZone("UTC"));\nDate date = isoFormat.parse("2010-05-23T09:01:02");'
p123
atp124
Rp125
sI7074402
g1
((lp126
S'arrayList.add(1, "INSERTED ELEMENT");'
p127
aS'str.add(2, 12);'
p128
aS'str.add(1, 11);'
p129
atp130
Rp131
sI1378920
g1
((lp132
S'HttpClient httpclient = new DefaultHttpClient();\nHttpPost httpPost = new HttpPost(url);\nFileBody uploadFilePart = new FileBody(uploadFile);\nMultipartEntity reqEntity = new MultipartEntity();\nreqEntity.addPart("upload-file", uploadFilePart);\nhttpPost.setEntity(reqEntity);\nHttpResponse response = httpclient.execute(httpPost);'
p133
aS'HttpURLConnection connection = (HttpURLConnection) url.openConnection();\nconnection.setDoOutput(true);\nconnection.setRequestMethod("POST");\nFileBody fileBody = new FileBody(new File(fileName));\nMultipartEntity multipartEntity = new MultipartEntity(HttpMultipartMode.STRICT);\nmultipartEntity.addPart("file", fileBody);\nconnection.setRequestProperty("Content-Type", multipartEntity.getContentType().getValue());\nOutputStream out = connection.getOutputStream();\ntry {\n    multipartEntity.writeTo(out);\n} finally {\n    out.close();\n}\nint status = connection.getResponseCode();'
p134
aS'HttpClient httpclient = new DefaultHttpClient();\nHttpPost httppost = new HttpPost(url);\nFileBody bin = new FileBody(new File(fileName));\nStringBody comment = new StringBody("Filename: " + fileName);\nMultipartEntity reqEntity = new MultipartEntity();\nreqEntity.addPart("bin", bin);\nreqEntity.addPart("comment", comment);\nhttppost.setEntity(reqEntity);\nHttpResponse response = httpclient.execute(httppost);\nHttpEntity resEntity = response.getEntity();'
p135
aS'CloseableHttpClient httpClient = HttpClients.createDefault();\nHttpPost uploadFile = new HttpPost("...");\nMultipartEntityBuilder builder = MultipartEntityBuilder.create();\nbuilder.addTextBody("field1", "yes", ContentType.TEXT_PLAIN);\nFile f = new File("[/path/to/upload]");\nbuilder.addBinaryBody("file", new FileInputStream(f), ContentType.APPLICATION_OCTET_STREAM, f.getName());\nHttpEntity multipart = builder.build();\nuploadFile.setEntity(multipart);\nCloseableHttpResponse response = httpClient.execute(uploadFile);\nHttpEntity responseEntity = response.getEntity();'
p136
atp137
Rp138
sI6349421
g1
((lp139
S'JsonParser jp = f.createJsonParser(new File("C:\\\\maven\\\\user.json"));\nTypeReference<List<User>> tRef = new TypeReference<List<User>>() {\n};\nlstUser = mapper.readValue(jp, tRef);'
p140
aS'List<MyClass> myObjects = Arrays.asList(mapper.readValue(json, MyClass[].class));'
p141
aS'List<MyClass> myObjects = mapper.readValue(jsonInput, mapper.getTypeFactory().constructCollectionType(List.class, MyClass.class));'
p142
aS'MyClass[] myObjects = mapper.readValue(json, MyClass[].class);'
p143
aS'List<MyClass> myObjects = mapper.readValue(jsonInput, new TypeReference<List<MyClass>>() {\n});'
p144
atp145
Rp146
sI1942644
g1
((lp147
S'Field stringListField = Test.class.getDeclaredField("stringList");\nParameterizedType stringListType = (ParameterizedType) stringListField.getGenericType();\nClass<?> stringListClass = (Class<?>) stringListType.getActualTypeArguments()[0];'
p148
aS'Field integerListField = Test.class.getDeclaredField("integerList");\nParameterizedType integerListType = (ParameterizedType) integerListField.getGenericType();\nClass<?> integerListClass = (Class<?>) integerListType.getActualTypeArguments()[0];'
p149
atp150
Rp151
sI18441846
g1
((lp152
S'Collections.sort(fruits, new Comparator<Fruit>() {\n\n    @Override\n    public int compare(Fruit fruit2, Fruit fruit1) {\n        return fruit1.fruitName.compareTo(fruit2.fruitName);\n    }\n});'
p153
aS'Collections.sort(fruits, fieldComparator);'
p154
aS'Collections.sort(fruitList);'
p155
atp156
Rp157
sI1519736
g1
((lp158
S'Random rnd = ThreadLocalRandom.current();\nfor (int i = ar.length - 1; i > 0; i--) {\n    int index = rnd.nextInt(i + 1);\n    int a = ar[index];\n    ar[index] = ar[i];\n    ar[i] = a;\n}'
p159
aS'int index;\nRandom random = new Random();\nfor (int i = array.length - 1; i > 0; i--) {\n    index = random.nextInt(i + 1);\n    if (index != i) {\n        array[index] ^= array[i];\n        array[i] ^= array[index];\n        array[index] ^= array[i];\n    }\n}'
p160
aS'int index, temp;\nRandom random = new Random();\nfor (int i = array.length - 1; i > 0; i--) {\n    index = random.nextInt(i + 1);\n    temp = array[index];\n    array[index] = array[i];\n    array[i] = temp;\n}'
p161
aS'Collections.shuffle(solution);'
p162
atp163
Rp164
sI12678781
g1
((lp165
S'for (i = 0; i < array.length / 2; i++) {\n    int temp = array[i];\n    array[i] = array[array.length - 1 - i];\n    array[array.length - 1 - i] = temp;\n}'
p166
aS'Collections.reverse(list);'
p167
aS'Collections.reverse(Arrays.asList(array));'
p168
atp169
Rp170
sI10796160
g1
((lp171
S'test.split("\\\\|");'
p172
aS'string.split(Pattern.quote("|"));'
p173
aS'test.split(Pattern.quote("|"));'
p174
aS'String[] result = test.split("\\\\|");'
p175
atp176
Rp177
sI2938502
g1
((lp178
S'URL url;\nString response = "";\ntry {\n    url = new URL(requestURL);\n    HttpURLConnection conn = (HttpURLConnection) url.openConnection();\n    conn.setReadTimeout(15000);\n    conn.setConnectTimeout(15000);\n    conn.setRequestMethod("GET");\n    conn.setDoInput(true);\n    conn.setDoOutput(true);\n    OutputStream os = conn.getOutputStream();\n    BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(os, "UTF-8"));\n    writer.write(getPostDataString(postDataParams));\n    writer.flush();\n    writer.close();\n    os.close();\n    int responseCode = conn.getResponseCode();\n    if (responseCode == HttpsURLConnection.HTTP_OK) {\n        String line;\n        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));\n        while ((line = br.readLine()) != null) {\n            response += line;\n        }\n    } else {\n        response = "";\n    }\n} catch (Exception e) {\n    e.printStackTrace();\n}'
p179
aS'URL url = new URL(urlString);\nHttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();\nin = new BufferedInputStream(urlConnection.getInputStream());'
p180
aS'HttpClient httpclient = new DefaultHttpClient();\nHttpPost httppost = new HttpPost("http://www.yoursite.com/script.php");\ntry {\n    List<NameValuePair> nameValuePairs = new ArrayList<NameValuePair>(2);\n    nameValuePairs.add(new BasicNameValuePair("id", "12345"));\n    nameValuePairs.add(new BasicNameValuePair("stringdata", "Hi"));\n    httppost.setEntity(new UrlEncodedFormEntity(nameValuePairs));\n    HttpResponse response = httpclient.execute(httppost);\n} catch (ClientProtocolException e) {\n} catch (IOException e) {\n}'
p181
atp182
Rp183
sI15940234
g1
((lp184
S'String res = defaultWebService.getDefaultWebServiceHttpSoap11Endpoint().login("webservice", "dadsadasdasd");'
p185
aS'SOAPConnectionFactory soapConnectionFactory = SOAPConnectionFactory.newInstance();\nSOAPConnection soapConnection = soapConnectionFactory.createConnection();\nString url = "http://ws.cdyne.com/emailverify/Emailvernotestemail.asmx";\nSOAPMessage soapResponse = soapConnection.call(createSOAPRequest(), url);\nprintSOAPResponse(soapResponse);\nsoapConnection.close();'
p186
atp187
Rp188
sI7347856
g1
((lp189
S'ArrayList<Character> charList = new ArrayList<Character>();\nfor (int i = 0; i < str.length(); i++) {\n    charList.add(str.charAt(i));\n}'
p190
aS'String replace = s1.replace("[", "");\nSystem.out.println(replace);\nString replace1 = replace.replace("]", "");\nSystem.out.println(replace1);\nList<String> myList = new ArrayList<String>(Arrays.asList(replace1.split(",")));'
p191
aS'List<String> myList = new ArrayList<String>(Arrays.asList(s.split(",")));'
p192
atp193
Rp194
sI672916
g1
((lp195
S'int width = bimg.getWidth();\nint height = bimg.getHeight();'
p196
atp197
Rp198
sI3806062
g1
((lp199
S'BufferedReader br = new BufferedReader(new FileReader("textfile.txt"));\nString strLine;\nwhile ((strLine = br.readLine()) != null) {\n    System.out.println(strLine);\n}'
p200
aS'reader = new BufferedReader(new FileReader(file));\nString text = null;\nwhile ((text = reader.readLine()) != null) {\n    list.add(Integer.parseInt(text));\n}'
p201
aS'while (scanner.hasNext()) {\n    if (scanner.hasNextInt()) {\n        integers.add(scanner.nextInt());\n    } else {\n        scanner.next();\n    }\n}'
p202
atp203
Rp204
sI2137755
g1
((lp205
S'for (int i = 0; i < validData.length / 2; i++) {\n    int temp = validData[i];\n    validData[i] = validData[validData.length - i - 1];\n    validData[validData.length - i - 1] = temp;\n}'
p206
aS'List<Object> list = Arrays.asList(arr);\nCollections.reverse(list);'
p207
atp208
Rp209
sI1647260
g1
((lp210
S'list.add(new xClass());'
p211
aS'myclass.add(new xClass());\nmyclass.add(new xClass());'
p212
atp213
Rp214
sI1962181
g1
((lp215
S's = s.replace(",", "");'
p216
aS'str = str.replaceAll("[,.]", "");'
p217
aS's = s.replace(".", "");'
p218
aS's = s.substring(0, s.length() - 1);'
p219
atp220
Rp221
sI2047003
g1
((lp222
S'System.out.println(list.get(index));'
p223
atp224
Rp225
sI3914404
g1
((lp226
S'thisMoment = String.format("%tFT%<tRZ", Calendar.getInstance(TimeZone.getTimeZone("Z")));'
p227
aS'thisMoment = DateTimeFormatter.ofPattern("yyyy-MM-dd\'T\'HH:mmX").withZone(ZoneOffset.UTC).format(Instant.now());'
p228
aS'TimeZone tz = TimeZone.getTimeZone("UTC");\nDateFormat df = new SimpleDateFormat("yyyy-MM-dd\'T\'HH:mm\'Z\'");\ndf.setTimeZone(tz);\nString nowAsISO = df.format(new Date());'
p229
atp230
Rp231
sI16425127
g1
((lp232
S'Collections.sort(recipes, new RecipeCompare());'
p233
aS'Collections.sort(recipes, (Recipe r1, Recipe r2) -> r1.getID().compareTo(r2.getID()));'
p234
atp235
Rp236
sI7693994
g1
((lp237
S'Character.toString((char) i);'
p238
atp239
Rp240
sI5283444
g1
((lp241
S'StringBuilder builder = new StringBuilder();\nfor (String s : arr) {\n    builder.append(s);\n}\nString str = builder.toString();'
p242
aS'String str = Arrays.toString(arr);'
p243
aS'String.join(", ", "Harry", "Ron", "Hermione");'
p244
aS'String joinedString = StringUtils.join(new Object[] { "a", "b", 1 }, "-");'
p245
aS'Joiner.on(", ").skipNulls().join("Harry", null, "Ron", "Hermione");'
p246
aS'String str = String.join(",", arr);'
p247
atp248
Rp249
sI5927109
g1
((lp250
S'Collections.sort(myList, new Comparator<MyObject>() {\n\n    public int compare(MyObject o1, MyObject o2) {\n        if (o1.getDateTime() == null || o2.getDateTime() == null)\n            return 0;\n        return o1.getDateTime().compareTo(o2.getDateTime());\n    }\n});'
p251
aS'Collections.sort(myList);'
p252
aS'Collections.sort(myList, new Comparator<MyObject>() {\n\n    public int compare(MyObject o1, MyObject o2) {\n        return o1.getDateTime().lt(o2.getDateTime()) ? -1 : 1;\n    }\n});'
p253
aS'Collections.sort(myList, new Comparator<MyObject>() {\n\n    public int compare(MyObject o1, MyObject o2) {\n        return o1.getDateTime().compareTo(o2.getDateTime());\n    }\n});'
p254
atp255
Rp256
sI4377842
g1
((lp257
S'float z = (float) x / y;'
p258
aS'double d = (double) x / y;'
p259
aS'float z = x / (float) y;'
p260
aS'float z = x * 1.0 / y;'
p261
aS'float z = (float) x / (float) y;'
p262
aS'float f = (float) x / y;'
p263
atp264
Rp265
sI2564298
g1
((lp266
S'String[] errorSoon = new String[2];\nerrorSoon[0] = "foo";\nerrorSoon[1] = "bar";'
p267
aS'String[] errorSoon = { "Hello", "World" };'
p268
aS'String[] errorSoon = new String[2];\nerrorSoon[0] = "Hello";\nerrorSoon[1] = "World";'
p269
aS'String[] errorSoon = new String[100];'
p270
aS'String[] args = new String[] { "firstarg", "secondarg", "thirdarg" };'
p271
aS'String[] errorSoon = { "foo", "bar" };'
p272
atp273
Rp274
sI4240080
g1
((lp275
S'public static void permutation(String str) {\n    permutation("", str);\n}\nprivate static void permutation(String prefix, String str) {\n    int n = str.length();\n    if (n == 0)\n        System.out.println(prefix);\n    else {\n        for (int i = 0; i < n; i++) permutation(prefix + str.charAt(i), str.substring(0, i) + str.substring(i + 1, n));\n    }\n}'
p276
aS'public static ArrayList<String> permutation(String s) {\n    ArrayList<String> res = new ArrayList<String>();\n    if (s.length() == 1) {\n        res.add(s);\n    } else if (s.length() > 1) {\n        int lastIndex = s.length() - 1;\n        String last = s.substring(lastIndex);\n        String rest = s.substring(0, lastIndex);\n        res = merge(permutation(rest), last);\n    }\n    return res;\n}\npublic static ArrayList<String> merge(ArrayList<String> list, String c) {\n    ArrayList<String> res = new ArrayList<String>();\n    for (String s : list) {\n        for (int i = 0; i <= s.length(); ++i) {\n            String ps = new StringBuffer(s).insert(i, c).toString();\n            res.add(ps);\n        }\n    }\n    return res;\n}'
p277
atp278
Rp279
sI14145235
g1
((lp280
S'listName.isEmpty();'
p281
atp282
Rp283
sI11409621
g1
((lp284
S'for (int i = 0; i < 5; i++) {\n    printTriangleLine(i);\n}'
p285
aS'for (int i = 1; i < 10; i += 2) {\n    for (int k = 0; k < (4 - i / 2); k++) {\n        System.out.print(" ");\n    }\n    for (int j = 0; j < i; j++) {\n        System.out.print("*");\n    }\n    System.out.println("");\n}'
p286
aS'for (int i = 0; i < 5; i++) System.out.println("    *********".substring(i, 5 + 2 * i));'
p287
atp288
Rp289
sI3395286
g1
((lp290
S'String prefix = "";\nfor (String serverId : serverIds) {\n    sb.append(prefix);\n    prefix = ",";\n    sb.append(serverId);\n}'
p291
aS'if (sb.length() > 0) {\n    sb.setLength(sb.length() - 1);\n}'
p292
aS'sb.deleteCharAt(sb.length() - 1);'
p293
aS'sb.setLength(sb.length() - 1);'
p294
aS'sb.setLength(Math.max(sb.length() - 1, 0));'
p295
atp296
Rp297
sI7522022
g1
((lp298
S'System.out.print(String.format("\\033[2J"));'
p299
aS'System.out.print("\\b\\b\\b\\b\\b");'
p300
aS'Runtime.getRuntime().exec("cls");'
p301
aS'System.out.print(String.format("\\033[%dA", count));\nSystem.out.print("\\033[2K");'
p302
atp303
Rp304
sI17940200
g1
((lp305
S'long diff = dt2.getTime() - dt1.getTime();'
p306
aS'Period p = new Period(startTime, endTime);\nlong hours = p.getHours();\nlong minutes = p.getMinutes();'
p307
aS'Duration dur = Duration.between(start, stop);\nlong hours = dur.toHours();\nlong minutes = dur.toMinutes();'
p308
aS'long duration = endDate.getTime() - startDate.getTime();'
p309
atp310
Rp311
sI248562
g1
((lp312
S'final String currentUser = principal.getName();'
p313
atp314
Rp315
sI3605237
g1
((lp316
S'Map<String, String> reversedMap = new TreeMap<String, String>(codes);\nfor (Map.Entry entry : reversedMap.entrySet()) {\n    System.out.println(entry.getKey() + ", " + entry.getValue());\n}'
p317
aS'List<String> keys = new ArrayList<String>(map.keySet());\nCollections.sort(keys, someComparator);\nfor (String key : keys) {\n    System.out.println(key + ": " + map.get(key));\n}'
p318
atp319
Rp320
sI454908
g1
((lp321
S'String[] lines = string.split("\\\\r?\\\\n");'
p322
aS'String.split("[\\\\r\\\\n]+");'
p323
atp324
Rp325
sI18915075
g1
((lp326
S'Date date = formatter.parse(str_date);\njava.sql.Timestamp timeStampDate = new Timestamp(date.getTime());'
p327
aS'Date parsedDate = dateFormat.parse(yourString);\nTimestamp timestamp = new java.sql.Timestamp(parsedDate.getTime());'
p328
atp329
Rp330
sI4266756
g1
((lp331
S'System.out.println(b & 0xFF);'
p332
aS'int unsignedByte = b & 0xFF;\nSystem.out.println(unsignedByte);'
p333
aS'return b & 0xFF;'
p334
atp335
Rp336
sI88838
g1
((lp337
S'return new String(bytes, UTF8_CHARSET);'
p338
aS'byte[] b = s.getBytes("UTF-8");'
p339
aS'String s = new String(b, "US-ASCII");'
p340
aS'return string.getBytes(UTF8_CHARSET);'
p341
atp342
Rp343
sI7438612
g1
((lp344
S'"aaabcd".replaceFirst(".$", "");'
p345
aS"if (str != null && str.length() > 0 && str.charAt(str.length() - 1) == 'x') {\n    str = str.substring(0, str.length() - 1);\n}"
p346
aS'return str.substring(0, str.length() - 1);'
p347
atp348
Rp349
sI2839321
g1
((lp350
S'Class.forName(DATABASE_DRIVER);\nconnection = DriverManager.getConnection(DATABASE_URL, getProperties());'
p351
aS'Connection conn = dataSource.getConnection();'
p352
aS'try (Connection connection = DriverManager.getConnection(url, username, password)) {\n    System.out.println("Database connected!");\n} catch (SQLException e) {\n    throw new IllegalStateException("Cannot connect the database!", e);\n}'
p353
atp354
Rp355
sI8444710
g1
((lp356
S'String workingCopy = removeJunk(stringToTest);\nString reversedCopy = reverse(workingCopy);\nreturn reversedCopy.equalsIgnoreCase(workingCopy);'
p357
aS'if (s.equals(new StringBuilder(s).reverse().toString())) {\n}'
p358
atp359
Rp360
sI513832
g1
((lp361
S'Objects.equals("test", new String("test"));'
p362
aS'nullString1.equals(nullString2);'
p363
aS'new String("test").equals("test");'
p364
aS'fooString1.equals(fooString2);'
p365
aS'Objects.equals(null, "test");'
p366
atp367
Rp368
sI332079
g1
((lp369
S"StringBuilder hexString = new StringBuilder();\nfor (int i = 0; i < bytes.length; i++) {\n    String hex = Integer.toHexString(0xFF & bytes[i]);\n    if (hex.length() == 1) {\n        hexString.append('0');\n    }\n    hexString.append(hex);\n}"
p370
aS'String hexString = new String(Hex.encodeHex(messageDigest));'
p371
aS'BigInteger bi = new BigInteger(1, bytes);'
p372
atp373
Rp374
sI5993779
g1
((lp375
S'String[] tokens = pdfName.split("-|\\\\.");'
p376
aS'String[] tokens = pdfName.split("\\\\W");'
p377
atp378
Rp379
sI2966334
g1
((lp380
S'label.setForeground(Color.RED);'
p381
aS'frame.add(new JLabel("<html>Text color: <font color=\'red\'>red</font></html>"));'
p382
aS'title.setForeground(Color.white);'
p383
aS'label.setForeground(Color.red);'
p384
atp385
Rp386
sI4040001
g1
((lp387
S'ArrayList<Integer> numbers = new ArrayList<Integer>();\nwhile (numbers.size() < 4) {\n    int random = randomGenerator.nextInt(4);\n    if (!numbers.contains(random)) {\n        numbers.add(random);\n    }\n}'
p388
aS'Set<Integer> generated = new LinkedHashSet<Integer>();\nwhile (generated.size() < numbersNeeded) {\n    Integer next = rng.nextInt(max) + 1;\n    generated.add(next);\n}'
p389
aS'ArrayList<Integer> list = new ArrayList<Integer>(size);\nfor (int i = 1; i <= size; i++) {\n    list.add(i);\n}\nwhile (list.size() > 0) {\n    int index = rand.nextInt(list.size());\n    System.out.println("Selected: " + list.remove(index));\n}'
p390
atp391
Rp392
sI109383
g1
((lp393
S'List<Map.Entry<K, V>> list = new LinkedList<Map.Entry<K, V>>(map.entrySet());\nCollections.sort(list, new Comparator<Map.Entry<K, V>>() {\n\n    public int compare(Map.Entry<K, V> o1, Map.Entry<K, V> o2) {\n        return (o1.getValue()).compareTo(o2.getValue());\n    }\n});\nMap<K, V> result = new LinkedHashMap<K, V>();\nfor (Map.Entry<K, V> entry : list) {\n    result.put(entry.getKey(), entry.getValue());\n}'
p394
aS'map = ImmutableSortedMap.copyOf(myOriginalMap, valueComparator);'
p395
aS'return map.entrySet().stream().sorted(Map.Entry.comparingByValue()).collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue, (e1, e2) -> e1, LinkedHashMap::new));'
p396
aS'List<Map.Entry<K, V>> list = new LinkedList<>(map.entrySet());\nCollections.sort(list, new Comparator<Map.Entry<K, V>>() {\n\n    @Override\n    public int compare(Map.Entry<K, V> o1, Map.Entry<K, V> o2) {\n        return (o1.getValue()).compareTo(o2.getValue());\n    }\n});\nMap<K, V> result = new LinkedHashMap<>();\nfor (Map.Entry<K, V> entry : list) {\n    result.put(entry.getKey(), entry.getValue());\n}'
p397
aS'sorted_map.putAll(map);'
p398
atp399
Rp400
sI811851
g1
((lp401
S'int r;\nwhile ((r = reader.read()) != -1) {\n    char ch = (char) r;\n    System.out.println("Do something with " + ch);\n}'
p402
aS'BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(file), Charset.forName("UTF-8")));\nint c;\nwhile ((c = reader.read()) != -1) {\n    char character = (char) c;\n}'
p403
aS'BufferedReader buffer = new BufferedReader(new InputStreamReader(System.in));\nint c = 0;\nwhile ((c = buffer.read()) != -1) {\n    char character = (char) c;\n    System.out.println(character);\n}'
p404
atp405
Rp406
sI15758685
g1
((lp407
S'fh = new FileHandler("C:/temp/test/MyLogFile.log");\nlogger.addHandler(fh);\nSimpleFormatter formatter = new SimpleFormatter();\nfh.setFormatter(formatter);\nlogger.info("My first log");'
p408
aS'logger.info("info msg");\nlogger.severe("error message");\nlogger.fine("fine message");'
p409
atp410
Rp411
sI1391970
g1
((lp412
S'CharSequence cs = s;'
p413
aS'CharSequence cs = new String("string");'
p414
aS'CharSequence cs = "string";'
p415
atp416
Rp417
sI2843366
g1
((lp418
S'arr = append(arr, "4");'
p419
aS'where.add(ContactsContract.Contacts.HAS_PHONE_NUMBER + "=1");\nwhere.add(ContactsContract.Contacts.IN_VISIBLE_GROUP + "=1");'
p420
aS'list.add("1");\nlist.add("2");\nlist.add("3");'
p421
atp422
Rp423
sI473446
g1
((lp424
S'InetAddress.getLocalHost().getHostName();'
p425
aS'System.getProperty("user.name");'
p426
aS'java.net.InetAddress localMachine = java.net.InetAddress.getLocalHost();\nSystem.out.println("Hostname of local machine: " + localMachine.getHostName());'
p427
atp428
Rp429
sI8721262
g1
((lp430
S'long size = f.length();'
p431
aS'long length = f.length();'
p432
atp433
Rp434
sI2525042
g1
((lp435
S'HashMap<String, Object> o = mapper.readValue(from, typeRef);'
p436
aS'Map<String, String> result = new ObjectMapper().readValue(data, TypeFactory.mapType(HashMap.class, String.class, String.class));'
p437
aS'props = new ObjectMapper().readValue(src, HashMap.class);'
p438
aS'props = (HashMap<String, Object>) new ObjectMapper().readValue(src, HashMap.class);'
p439
aS'props = new ObjectMapper().readValue(src, new TypeReference<HashMap<String, Object>>() {\n});'
p440
aS'result = mapper.readValue(data, type);'
p441
atp442
Rp443
sI4404084
g1
((lp444
S'System.out.println("Is checkUserOne Preasent = ? " + employeeList.contains(checkUserOne));'
p445
aS'if (lista.contains(conta1)) {\n    System.out.println("Account found");\n} else {\n    System.out.println("Account not found");\n}'
p446
aS'System.out.println("Is checkUserTwo Preasent = ? " + employeeList.contains(checkUserTwo));'
p447
atp448
Rp449
sI1383797
g1
((lp450
S'Set<T> keys = new HashSet<T>();\nfor (Entry<T, E> entry : map.entrySet()) {\n    if (Objects.equals(value, entry.getValue())) {\n        keys.add(entry.getKey());\n    }\n}'
p451
aS"Token token = tokenToChar.inverse().get('(');"
p452
aS'for (Entry<Integer, String> entry : testMap.entrySet()) {\n    if (entry.getValue().equals("c")) {\n        System.out.println(entry.getKey());\n    }\n}'
p453
aS'for (Entry<T, E> entry : map.entrySet()) {\n    if (Objects.equals(value, entry.getValue())) {\n        return entry.getKey();\n    }\n}'
p454
aS'return map.entrySet().stream().filter(entry -> Objects.equals(entry.getValue(), value)).map(Map.Entry::getKey).collect(Collectors.toSet());'
p455
atp456
Rp457
sI112503
g1
((lp458
S'List<String> list = new ArrayList<String>(Arrays.asList(array));\nlist.removeAll(Arrays.asList("a"));\narray = list.toArray(array);'
p459
aS'List<String> list = new ArrayList<>();\nCollections.addAll(list, array);\nlist.removeAll(Arrays.asList("a"));\narray = list.toArray(EMPTY_STRING_ARRAY);'
p460
aS'List<String> list = new ArrayList<>();\nCollections.addAll(list, array);\nlist.removeAll(Arrays.asList("a"));\narray = list.toArray(new String[list.size()]);'
p461
aS'String[] filteredArray = Arrays.stream(array).filter(e -> !e.equals(foo)).toArray(String[]::new);'
p462
aS'List<String> list = new ArrayList<String>(Arrays.asList(array));\nlist.removeAll(Arrays.asList("a"));\narray = list.toArray(new String[0]);'
p463
atp464
Rp465
sI8557716
g1
((lp466
S'String[] ar = new String[2];\nar[0] = name;\nar[1] = location;\nreturn ar;'
p467
atp468
Rp469
sI867194
g1
((lp470
S'if (!resultSet.isBeforeFirst()) {\n}'
p471
aS'if (!resultSet.next()) {\n}'
p472
atp473
Rp474
sI13386107
g1
((lp475
S'String result = str.substring(0, index) + str.substring(index + 1);'
p476
aS'a = a.replace("o", "");'
p477
atp478
Rp479
sI4138364
g1
((lp480
S'Map<String, Item> map = list.stream().collect(Collectors.toMap(Item::getKey, item -> item));'
p481
atp482
Rp483
sI2627992
g1
((lp484
S'System.setProperty("user.timezone", "EST");'
p485
atp486
Rp487
sI1448858
g1
((lp488
S'System.out.println((char) 27 + "[31mThis text would show up red" + (char) 27 + "[0m");'
p489
aS'System.out.println((char) 27 + "[34;43mBlue text with yellow background");'
p490
atp491
Rp492
sI1892765
g1
((lp493
S'WordUtils.capitalize(str);'
p494
aS"char[] chars = string.toLowerCase().toCharArray();\nboolean found = false;\nfor (int i = 0; i < chars.length; i++) {\n    if (!found && Character.isLetter(chars[i])) {\n        chars[i] = Character.toUpperCase(chars[i]);\n        found = true;\n    } else if (Character.isWhitespace(chars[i]) || chars[i] == '.' || chars[i] == '\\'') {\n        found = false;\n    }\n}"
p495
atp496
Rp497
sI922528
g1
((lp498
S'Map<String, String> treeMap = new TreeMap<String, String>(map);'
p499
aS'List sortedKeys = new ArrayList(yourMap.keySet());\nCollections.sort(sortedKeys);'
p500
aS'SortedSet<String> keys = new TreeSet<String>(map.keySet());'
p501
aS'SortedSet<Foo> keys = new TreeSet<Foo>(comparator);\nkeys.addAll(map.keySet());'
p502
atp503
Rp504
sI240546
g1
((lp505
S'return Jsoup.parse(html).text();'
p506
aS'replaceAll("\\\\<[^>]*>", "");'
p507
aS'android.text.Html.fromHtml(instruction).toString();'
p508
atp509
Rp510
sI75175
g1
((lp511
S'new Foo<Bar>();'
p512
aS'return clazz.newInstance();'
p513
aS'return factory.create();'
p514
atp515
Rp516
sI2536873
g1
((lp517
S'btn.setPreferredSize(new Dimension(40, 40));'
p518
aS'btn.setPreferredSize(new Dimension(100, 100));'
p519
atp520
Rp521
sI4802887
g1
((lp522
S'Gson gson = new GsonBuilder().setExclusionStrategies(new TestExclStrat()).create();\nStudent src = new Student();\nString json = gson.toJson(src);'
p523
aS'Gson gson = new GsonBuilder().setExclusionStrategies(new TestExclStrat("in.naishe.test.Country.name")).create();\nStudent src = new Student();\nString json = gson.toJson(src);'
p524
aS'private transient String name;'
p525
aS'@Expose\nprivate Long id;\nGson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();'
p526
atp527
Rp528
sI4340653
g1
((lp529
S'ServletContext context = getContext();\nURL resourceUrl = context.getResource("/WEB-INF/test/foo.txt");'
p530
aS'InputStream resource = getServletContext().getResourceAsStream("/WEB-INF/my.json");'
p531
aS'InputStream resourceContent = context.getResourceAsStream("/WEB-INF/test/foo.txt");'
p532
aS'ServletContext context = getContext();\nString fullPath = context.getRealPath("/WEB-INF/test/foo.txt");'
p533
atp534
Rp535
sI2369967
g1
((lp536
S'ArrayUtils.isNotEmpty(testArrayName);'
p537
aS'if (i == null || i.length == 0) {\n}'
p538
aS'if (arr == null) {\n}'
p539
aS'if (i.length == 0) {\n}'
p540
atp541
Rp542
sI14676407
g1
((lp543
S'File directory = new File(directoryName);\nList<File> resultList = new ArrayList<File>();\nFile[] fList = directory.listFiles();\nresultList.addAll(Arrays.asList(fList));\nfor (File file : fList) {\n    if (file.isFile()) {\n        System.out.println(file.getAbsolutePath());\n    } else if (file.isDirectory()) {\n        resultList.addAll(listf(file.getAbsolutePath()));\n    }\n}'
p544
aS'File directory = new File(directoryName);\nFile[] fList = directory.listFiles();\nfor (File file : fList) {\n    if (file.isFile()) {\n        files.add(file);\n    } else if (file.isDirectory()) {\n        listf(file.getAbsolutePath(), files);\n    }\n}'
p545
atp546
Rp547
sI2364856
g1
((lp548
S'boolean[] array = new boolean[size];'
p549
aS'Arrays.fill(array, Boolean.FALSE);'
p550
atp551
Rp552
sI5762491
g1
((lp553
S'System.out.println(ANSI_RED + "This text is red!" + ANSI_RESET);'
p554
aS'print("Hello World!", Attribute.BOLD, FColor.YELLOW, BColor.GREEN);'
p555
atp556
Rp557
sI1522108
g1
((lp558
S"System.out.println(list.indexOf('e'));"
p559
aS"int index = -1;\nfor (int i = 0; (i < list.length) && (index == -1); i++) {\n    if (list[i] == 'e') {\n        index = i;\n    }\n}"
p560
aS"for (int i = 0; i < list.length; i++) {\n    if (list[i] == 'e') {\n        System.out.println(i);\n        break;\n    }\n}"
p561
aS'System.out.println(new String(list).indexOf("e"));'
p562
atp563
Rp564
sI960431
g1
((lp565
S'int[] intArray = ArrayUtils.toPrimitive(myList.toArray(new Integer[myList.size()]));'
p566
aS'int[] array = list.stream().mapToInt(i -> i).toArray();'
p567
aS'int[] ints = Ints.toArray(list);'
p568
aS'int[] intArray2 = ArrayUtils.toPrimitive(myList.toArray(NO_INTS));'
p569
atp570
Rp571
sI20363719
g1
((lp572
S'Map<String, Choice> result = choices.stream().collect(Collectors.toMap(Choice::getName, c -> c));'
p573
aS'Map<String, List<Choice>> result = choices.stream().collect(Collectors.groupingBy(Choice::getName));'
p574
aS'Map<String, Choice> result = choices.stream().collect(Collectors.toMap(Choice::getName, Function.identity()));'
p575
atp576
Rp577
sI9581530
g1
((lp578
S'Byte b = new Byte(rno[0]);\nint i = b.intValue();'
p579
aS'int i = rno[0];'
p580
aS'int v1 = b;'
p581
aS'Byte b = rno[0];\nint i = b.intValue();'
p582
atp583
Rp584
sI9102318
g1
((lp585
S'int i = (int) d;'
p586
aS'Long L = Math.round(d);\nint i = Integer.valueOf(L.intValue());'
p587
aS'int i = Integer.valueOf(D.intValue());'
p588
atp589
Rp590
sI3402735
g1
((lp591
S'new String(Files.readAllBytes(Paths.get(filePath)));'
p592
aS'FileInputStream fisTargetFile = new FileInputStream(new File("test.txt"));\nString targetFileStr = IOUtils.toString(fisTargetFile, "UTF-8");'
p593
aS'String content = new Scanner(new File("filename")).useDelimiter("\\\\Z").next();'
p594
atp595
Rp596
sI8559092
g1
((lp597
S'ArrayList<String>[] group = new ArrayList[4];'
p598
aS'List<List<Individual>> group = new ArrayList<List<Individual>>(4);'
p599
aS'ArrayList<ArrayList<Individual>> group = new ArrayList<ArrayList<Individual>>(4);'
p600
aS'ArrayList<Individual>[] group = (ArrayList<Individual>[]) new ArrayList[4];'
p601
atp602
Rp603
sI2310139
g1
((lp604
S'XMLReader myReader = XMLReaderFactory.createXMLReader();\nmyReader.setContentHandler(handler);\nmyReader.parse(new InputSource(new URL(url).openStream()));'
p605
aS'URL url = new URL(urlString);\nURLConnection conn = url.openConnection();\nDocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();\nDocumentBuilder builder = factory.newDocumentBuilder();\nDocument doc = builder.parse(conn.getInputStream());'
p606
aS'DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();\nDocumentBuilder db = dbf.newDocumentBuilder();\nDocument doc = db.parse(new URL(url).openStream());'
p607
atp608
Rp609
s.