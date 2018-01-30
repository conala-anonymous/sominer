(dp0
I4266756
S'public static int unsignedToBytes(byte b) {\n    return b & 0xFF;\n}\npublic static void main(String[] args) {\n    System.out.println(unsignedToBytes((byte) -12));\n}'
p1
sI15940234
S'import javax.xml.soap.*;\nimport javax.xml.transform.*;\nimport javax.xml.transform.stream.*;\n\npublic class SOAPClientSAAJ {\n\n    public static void main(String[] args) {\n        try {\n            SOAPConnectionFactory soapConnectionFactory = SOAPConnectionFactory.newInstance();\n            SOAPConnection soapConnection = soapConnectionFactory.createConnection();\n            String url = "http://ws.cdyne.com/emailverify/Emailvernotestemail.asmx";\n            SOAPMessage soapResponse = soapConnection.call(createSOAPRequest(), url);\n            printSOAPResponse(soapResponse);\n            soapConnection.close();\n        } catch (Exception e) {\n            System.err.println("Error occurred while sending SOAP Request to Server");\n            e.printStackTrace();\n        }\n    }\n\n    private static SOAPMessage createSOAPRequest() throws Exception {\n        MessageFactory messageFactory = MessageFactory.newInstance();\n        SOAPMessage soapMessage = messageFactory.createMessage();\n        SOAPPart soapPart = soapMessage.getSOAPPart();\n        String serverURI = "http://ws.cdyne.com/";\n        SOAPEnvelope envelope = soapPart.getEnvelope();\n        envelope.addNamespaceDeclaration("example", serverURI);\n        SOAPBody soapBody = envelope.getBody();\n        SOAPElement soapBodyElem = soapBody.addChildElement("VerifyEmail", "example");\n        SOAPElement soapBodyElem1 = soapBodyElem.addChildElement("email", "example");\n        soapBodyElem1.addTextNode("mutantninja@gmail.com");\n        SOAPElement soapBodyElem2 = soapBodyElem.addChildElement("LicenseKey", "example");\n        soapBodyElem2.addTextNode("123");\n        MimeHeaders headers = soapMessage.getMimeHeaders();\n        headers.addHeader("SOAPAction", serverURI + "VerifyEmail");\n        soapMessage.saveChanges();\n        System.out.print("Request SOAP Message = ");\n        soapMessage.writeTo(System.out);\n        System.out.println();\n        return soapMessage;\n    }\n\n    private static void printSOAPResponse(SOAPMessage soapResponse) throws Exception {\n        TransformerFactory transformerFactory = TransformerFactory.newInstance();\n        Transformer transformer = transformerFactory.newTransformer();\n        Source sourceContent = soapResponse.getSOAPPart().getContent();\n        System.out.print("\\nResponse SOAP Message = ");\n        StreamResult result = new StreamResult(System.out);\n        transformer.transform(sourceContent, result);\n    }\n}'
p2
sI1509391
S'TreeMap<String, String> myMap = new TreeMap<String, String>();\nString first = myMap.firstEntry().getValue();\nString firstOther = myMap.get(myMap.firstKey());'
p3
sI7438612
S"public String method(String str) {\n    if (str != null && str.length() > 0 && str.charAt(str.length() - 1) == 'x') {\n        str = str.substring(0, str.length() - 1);\n    }\n    return str;\n}"
p4
sI4051887
S'("00000000" + "Apple").substring("Apple".length());'
p5
sI320542
S'return new File(MyClass.class.getProtectionDomain().getCodeSource().getLocation().toURI().getPath());'
p6
sI240546
S'public static String html2text(String html) {\n    return Jsoup.parse(html).text();\n}'
p7
sI2137755
S'for (int i = 0; i < validData.length / 2; i++) {\n    int temp = validData[i];\n    validData[i] = validData[validData.length - i - 1];\n    validData[validData.length - i - 1] = temp;\n}'
p8
sI3914404
S'TimeZone tz = TimeZone.getTimeZone("UTC");\nDateFormat df = new SimpleDateFormat("yyyy-MM-dd\'T\'HH:mm\'Z\'");\ndf.setTimeZone(tz);\nString nowAsISO = df.format(new Date());'
p9
sI332079
S"public static String toHexString(byte[] bytes) {\n    StringBuilder hexString = new StringBuilder();\n    for (int i = 0; i < bytes.length; i++) {\n        String hex = Integer.toHexString(0xFF & bytes[i]);\n        if (hex.length() == 1) {\n            hexString.append('0');\n        }\n        hexString.append(hex);\n    }\n    return hexString.toString();\n}"
p10
sI5993779
S'String[] tokens = pdfName.split("-|\\\\.");'
p11
sI14676407
S'public void listf(String directoryName, ArrayList<File> files) {\n    File directory = new File(directoryName);\n    File[] fList = directory.listFiles();\n    for (File file : fList) {\n        if (file.isFile()) {\n            files.add(file);\n        } else if (file.isDirectory()) {\n            listf(file.getAbsolutePath(), files);\n        }\n    }\n}'
p12
sI4404084
S'if (lista.contains(conta1)) {\n    System.out.println("Account found");\n} else {\n    System.out.println("Account not found");\n}'
p13
sI20824634
S'Field1.addTextChangedListener(new TextWatcher() {\n\n    @Override\n    public void afterTextChanged(Editable s) {\n    }\n\n    @Override\n    public void beforeTextChanged(CharSequence s, int start, int count, int after) {\n    }\n\n    @Override\n    public void onTextChanged(CharSequence s, int start, int before, int count) {\n        if (s.length() != 0)\n            Field2.setText("");\n    }\n});\nField2.addTextChangedListener(new TextWatcher() {\n\n    @Override\n    public void afterTextChanged(Editable s) {\n    }\n\n    @Override\n    public void beforeTextChanged(CharSequence s, int start, int count, int after) {\n    }\n\n    @Override\n    public void onTextChanged(CharSequence s, int start, int before, int count) {\n        if (s.length() != 0)\n            Field1.setText("");\n    }\n});'
p14
sI1522108
S'System.out.println(new String(list).indexOf("e"));'
p15
sI2966334
S'frame.add(new JLabel("<html>Text color: <font color=\'red\'>red</font></html>"));'
p16
sI10959424
S'double i2 = i / 60000;\ntv.setText(new DecimalFormat("##.##").format(i2));'
p17
sI4040001
S'if (max < numbersNeeded) {\n    throw new IllegalArgumentException("Can\'t ask for more numbers than are available");\n}\nRandom rng = new Random();\nSet<Integer> generated = new LinkedHashSet<Integer>();\nwhile (generated.size() < numbersNeeded) {\n    Integer next = rng.nextInt(max) + 1;\n    generated.add(next);\n}'
p18
sI886722
S'synchronized (someObject) {\n    someObject.wait();\n}\nsynchronized (someObject) {\n    someObject.notify();\n}'
p19
sI15874117
S'final Handler handler = new Handler();\nhandler.postDelayed(new Runnable() {\n\n    @Override\n    public void run() {\n        buttons[inew][jnew].setBackgroundColor(Color.BLACK);\n    }\n}, 5000);'
p20
sI8119366
S'public LinkedHashMap<Integer, String> sortHashMapByValues(HashMap<Integer, String> passedMap) {\n    List<Integer> mapKeys = new ArrayList<>(passedMap.keySet());\n    List<String> mapValues = new ArrayList<>(passedMap.values());\n    Collections.sort(mapValues);\n    Collections.sort(mapKeys);\n    LinkedHashMap<Integer, String> sortedMap = new LinkedHashMap<>();\n    Iterator<String> valueIt = mapValues.iterator();\n    while (valueIt.hasNext()) {\n        String val = valueIt.next();\n        Iterator<Integer> keyIt = mapKeys.iterator();\n        while (keyIt.hasNext()) {\n            Integer key = keyIt.next();\n            String comp1 = passedMap.get(key);\n            String comp2 = val;\n            if (comp1.equals(comp2)) {\n                keyIt.remove();\n                sortedMap.put(key, val);\n                break;\n            }\n        }\n    }\n    return sortedMap;\n}'
p21
sI20363719
S'Map<String, Choice> result = choices.stream().collect(Collectors.toMap(Choice::getName, Function.identity()));'
p22
sI811851
S'public class CharacterHandler {\n\n    public static void main(String[] args) throws IOException {\n        Charset encoding = Charset.defaultCharset();\n        for (String filename : args) {\n            File file = new File(filename);\n            handleFile(file, encoding);\n        }\n    }\n\n    private static void handleFile(File file, Charset encoding) throws IOException {\n        try (InputStream in = new FileInputStream(file);\n            Reader reader = new InputStreamReader(in, encoding);\n            Reader buffer = new BufferedReader(reader)) {\n            handleCharacters(buffer);\n        }\n    }\n\n    private static void handleCharacters(Reader reader) throws IOException {\n        int r;\n        while ((r = reader.read()) != -1) {\n            char ch = (char) r;\n            System.out.println("Do something with " + ch);\n        }\n    }\n}'
p23
sI4240080
S'public static void permutation(String str) {\n    permutation("", str);\n}\nprivate static void permutation(String prefix, String str) {\n    int n = str.length();\n    if (n == 0)\n        System.out.println(prefix);\n    else {\n        for (int i = 0; i < n; i++) permutation(prefix + str.charAt(i), str.substring(0, i) + str.substring(i + 1, n));\n    }\n}'
p24
sI3395286
S'String prefix = "";\nfor (String serverId : serverIds) {\n    sb.append(prefix);\n    prefix = ",";\n    sb.append(serverId);\n}'
p25
sI2891361
S'SimpleDateFormat isoFormat = new SimpleDateFormat("yyyy-MM-dd\'T\'HH:mm:ss");\nisoFormat.setTimeZone(TimeZone.getTimeZone("UTC"));\nDate date = isoFormat.parse("2010-05-23T09:01:02");'
p26
sI7279887
S'public class Example {\n\n    private static final String JDBC_URL = "jdbc:mysql://localhost/shopdb";\n\n    private static final String JDBC_USERNAME = "username";\n\n    private static final String JDBC_PASSWORD = "password";\n\n    public static void main(String[] args) {\n        Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);\n    }\n}'
p27
sI2308188
S'System.out.println(new File(".").getAbsolutePath());'
p28
sI1816673
S'File f = new File(filePathString);\nif (f.exists() && !f.isDirectory()) {\n}'
p29
sI17940200
S'{\n    Date dt2 = new DateAndTime().getCurrentDateTime();\n    long diff = dt2.getTime() - dt1.getTime();\n    long diffSeconds = diff / 1000 % 60;\n    long diffMinutes = diff / (60 * 1000) % 60;\n    long diffHours = diff / (60 * 60 * 1000);\n    int diffInDays = (int) ((dt2.getTime() - dt1.getTime()) / (1000 * 60 * 60 * 24));\n    if (diffInDays > 1) {\n        System.err.println("Difference in number of days (2) : " + diffInDays);\n        return false;\n    } else if (diffHours > 24) {\n        System.err.println(">24");\n        return false;\n    } else if ((diffHours == 24) && (diffMinutes >= 1)) {\n        System.err.println("minutes");\n        return false;\n    }\n    return true;\n}'
p30
sI4138364
S'List<Item> list;\nMap<Key, Item> map = new HashMap<Key, Item>();\nfor (Item i : list) map.put(i.getKey(), i);'
p31
sI3806062
S'List<Integer> list = new ArrayList<Integer>();\nFile file = new File("file.txt");\nBufferedReader reader = null;\ntry {\n    reader = new BufferedReader(new FileReader(file));\n    String text = null;\n    while ((text = reader.readLine()) != null) {\n        list.add(Integer.parseInt(text));\n    }\n} catch (FileNotFoundException e) {\n    e.printStackTrace();\n} catch (IOException e) {\n    e.printStackTrace();\n} finally {\n    try {\n        if (reader != null) {\n            reader.close();\n        }\n    } catch (IOException e) {\n    }\n}\nSystem.out.println(list);'
p32
sI3402735
S'String content = new Scanner(new File("filename")).useDelimiter("\\\\Z").next();\nSystem.out.println(content);'
p33
sI248562
S'@RequestMapping(method = RequestMethod.GET)\npublic ModelAndView showResults(final HttpServletRequest request, Principal principal) {\n    final String currentUser = principal.getName();\n}'
p34
sI1942644
S'package test;\n\nimport java.lang.reflect.Field;\nimport java.lang.reflect.ParameterizedType;\nimport java.util.ArrayList;\nimport java.util.List;\n\npublic class Test {\n\n    List<String> stringList = new ArrayList<String>();\n\n    List<Integer> integerList = new ArrayList<Integer>();\n\n    public static void main(String... args) throws Exception {\n        Field stringListField = Test.class.getDeclaredField("stringList");\n        ParameterizedType stringListType = (ParameterizedType) stringListField.getGenericType();\n        Class<?> stringListClass = (Class<?>) stringListType.getActualTypeArguments()[0];\n        System.out.println(stringListClass);\n        Field integerListField = Test.class.getDeclaredField("integerList");\n        ParameterizedType integerListType = (ParameterizedType) integerListField.getGenericType();\n        Class<?> integerListClass = (Class<?>) integerListType.getActualTypeArguments()[0];\n        System.out.println(integerListClass);\n    }\n}'
p35
sI3605237
S'Map<String, String> reversedMap = new TreeMap<String, String>(codes);\nfor (Map.Entry entry : reversedMap.entrySet()) {\n    System.out.println(entry.getKey() + ", " + entry.getValue());\n}'
p36
sI4546807
S'public class MultipleInterfaces implements InterFaceOne, InterFaceTwo {\n\n    private InterFaceOne if1;\n\n    private InterFaceTwo if2;\n}'
p37
sI1519736
S'import java.util.*;\nimport java.util.concurrent.ThreadLocalRandom;\n\nclass Test {\n\n    public static void main(String[] args) {\n        int[] solutionArray = { 1, 2, 3, 4, 5, 6, 16, 15, 14, 13, 12, 11 };\n        shuffleArray(solutionArray);\n        for (int i = 0; i < solutionArray.length; i++) {\n            System.out.print(solutionArray[i] + " ");\n        }\n        System.out.println();\n    }\n\n    static void shuffleArray(int[] ar) {\n        Random rnd = ThreadLocalRandom.current();\n        for (int i = ar.length - 1; i > 0; i--) {\n            int index = rnd.nextInt(i + 1);\n            int a = ar[index];\n            ar[index] = ar[i];\n            ar[i] = a;\n        }\n    }\n}'
p38
sI285177
S'public class Foo {\n\n    private int x;\n\n    public Foo() {\n        this(1);\n    }\n\n    public Foo(int x) {\n        this.x = x;\n    }\n}'
p39
sI2310139
S'XMLReader myReader = XMLReaderFactory.createXMLReader();\nmyReader.setContentHandler(handler);\nmyReader.parse(new InputSource(new URL(url).openStream()));\nDocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();\nDocumentBuilder db = dbf.newDocumentBuilder();\nDocument doc = db.parse(new URL(url).openStream());'
p40
sI454908
S'String[] lines = string.split("\\\\r?\\\\n");'
p41
s.