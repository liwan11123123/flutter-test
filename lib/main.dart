// import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart'; // Add this line.

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Startup Name Generator',
//       theme: ThemeData(
//         primaryColor: Colors.white,
//       ),
//       home: RandomWords(),
//     );
//   }
// }

// class RandomWords extends StatefulWidget {
//   @override
//   RandomWordsState createState() => RandomWordsState();
// }

// class RandomWordsState extends State<RandomWords> {
//   final List<WordPair> _suggestions = <WordPair>[];
//   final Set<WordPair> _saved = Set<WordPair>();
//   final TextStyle _biggerFont = const TextStyle(fontSize: 18);

//   Widget _buildSuggestions() {
//     return ListView.builder(
//       padding: const EdgeInsets.all(16),
//       itemBuilder: (BuildContext context, int i) {
//         if (i.isOdd) {
//           return Divider();
//         }

//         final int index = i ~/ 2;
//         print(index);
//         print(_suggestions.length);
//         if (index >= _suggestions.length) {
//           print(generateWordPairs().take(10));
//           _suggestions.addAll(generateWordPairs().take(10));
//         }
//         return _buildRow(_suggestions[index]);
//       },
//     );
//   }

//   Widget _buildRow(WordPair pair) {
//     final bool alreadySaved = _saved.contains(pair);
//     return ListTile(
//       title: Text(pair.asPascalCase, style: _biggerFont),
//       trailing: Icon(
//         alreadySaved ? Icons.favorite : Icons.favorite_border,
//         color: alreadySaved ? Colors.red : null,
//       ),
//       onTap: () {
//         setState(() {
//           if (alreadySaved) {
//             _saved.remove(pair);
//           } else {
//             _saved.add(pair);
//           }
//         });
//       },
//     );
//   }

//   void _pushSaved() {
//     Navigator.of(context)
//         .push(MaterialPageRoute<void>(builder: (BuildContext context) {
//       final Iterable<ListTile> tiles = _saved.map(
//         (WordPair pair) {
//           return ListTile(
//             title: Text(
//               pair.asPascalCase,
//               style: _biggerFont,
//             ),
//           );
//         },
//       );
//       final List<Widget> divided =
//           ListTile.divideTiles(context: context, tiles: tiles).toList();
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('Saved Suggestions'),
//         ),
//         body: ListView(children: divided),
//       );
//     }));
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final WordPair wordPair = WordPair.random();
//     // return Text(wordPair.asPascalCase);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Startup Name Generator'),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.list),
//             onPressed: _pushSaved,
//           )
//         ],
//       ),
//       body: _buildSuggestions(),
//     );
//   }
// }

// 自定义小部件  一个AppBar
// import 'package:flutter/material.dart';

// class MyappBar extends StatelessWidget {
//   MyappBar({this.title});

//   final Widget title;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 56.0,
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       decoration: BoxDecoration(color: Colors.blue[500]),
//       child: Row(
//         children: <Widget>[
//           IconButton(
//             icon: Icon(Icons.menu),
//             tooltip: 'Navigation menu',
//             onPressed: null,
//           ),
//           Expanded(
//             child: title,
//           ),
//           IconButton(
//             icon: Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: null,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyScaffold extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Column(
//         children: <Widget>[
//           MyappBar(
//             title: Text(
//               'Example title',
//             ),
//           ),
//           Expanded(
//             child: Center(
//               child: Text('Hello, world!'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     title: 'My app',
//     home: MyScaffold(),
//   ));
// }

// 浮动button Scaffold小部件，点击 返回不同的Widget
// import 'package:flutter/material.dart';

// void main() {
//   runApp(SampleApp());
// }

// class SampleApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sample App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SampleAppPage(),
//     );
//   }
// }

// class SampleAppPage extends StatefulWidget {
//   SampleAppPage({Key key}) : super(key: key);

//   @override
//   _SampleAppPageState createState() => _SampleAppPageState();
// }

// class _SampleAppPageState extends State<SampleAppPage> {
//   bool toggle = true;
//   void _toggle() {
//     setState(() {
//       toggle = !toggle;
//     });
//   }

//   _getToggleChild() {
//     if (toggle) {
//       return Text('Toggle One');
//     } else {
//       return MaterialButton(
//         onPressed: () {

//         },
//         child: Text('Toggle Two'),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sample App'),
//       ),
//       body: Center(
//         child: _getToggleChild(),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _toggle,
//         backgroundColor: Color.alphaBlend(Colors.green, Colors.blue),
//         tooltip: 'Update Text',
//         // child: Icon(Icons.update),
//       ),
//     );
//   }
// }

// 动画效果，
// import 'package:flutter/material.dart';

// void main() {
//   runApp(FadeAppTest());
// }

// class FadeAppTest extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fade Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyFadeTest(title: 'Fade Demo'),
//     );
//   }
// }

// class MyFadeTest extends StatefulWidget {
//   MyFadeTest({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyFadeTest createState() => _MyFadeTest();
// }

// class _MyFadeTest extends State<MyFadeTest> with TickerProviderStateMixin {
//   AnimationController controller;
//   CurvedAnimation curve;

//   @override
//   void initState() {
//     super.initState();
//     controller = AnimationController(
//         duration: const Duration(milliseconds: 2000), vsync: this);
//     curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Container(
//           child: FadeTransition(
//             opacity: curve,
//             child: FlutterLogo(
//               size: 100.0,
//             ),
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         tooltip: 'Fade',
//         child: Icon(Icons.brush),
//         onPressed: () {
//           controller.forward();
//         },
//       ),
//     );
//   }
// }

// canvas 画图
// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(home: DemoApp()));

// class DemoApp extends StatelessWidget {
//   Widget build(BuildContext context) => Scaffold(body: Signature());
// }

// class Signature extends StatefulWidget {
//   SignatureState createState() => SignatureState();
// }

// class SignatureState extends State<Signature> {
//   List<Offset> _points = <Offset>[];
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onPanUpdate: (DragUpdateDetails details) {
//         setState(() {
//           RenderBox referenceBox = context.findRenderObject();
//           Offset localPosition =
//               referenceBox.globalToLocal(details.globalPosition);
//           _points = List.from(_points)..add(localPosition);
//         });
//       },
//       onPanEnd: (DragEndDetails details) => _points.add(null),
//       child:
//           CustomPaint(painter: SignaturePainter(_points), size: Size.infinite),
//     );
//   }
// }

// class SignaturePainter extends CustomPainter {
//   SignaturePainter(this.points);
//   final List<Offset> points;
//   void paint(Canvas canvas, Size size) {
//     var paint = Paint()
//       ..color = Colors.red
//       ..strokeCap = StrokeCap.round
//       ..strokeWidth = 5.0;
//     for (int i = 0; i < points.length - 1; i++) {
//       if (points[i] != null && points[i + 1] != null)
//         canvas.drawLine(points[i], points[i + 1], paint);
//     }
//   }

//   bool shouldRepaint(SignaturePainter other) => other.points != points;
// }

// // http 请求 Demo
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(SampleApp());
// }

// class SampleApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sample App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SampleAppPage(),
//     );
//   }
// }

// class SampleAppPage extends StatefulWidget {
//   SampleAppPage({Key key}) : super(key: key);

//   @override
//   _SampleAppPageState createState() => _SampleAppPageState();
// }

// class _SampleAppPageState extends State<SampleAppPage> {
//   List widgets = [];

//   @override
//   void initState() {
//     super.initState();

//     loadData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sample App'),
//       ),
//       body: ListView.builder(
//         itemCount: widgets.length,
//         itemBuilder: (BuildContext context, int position) {
//           return getRow(position);
//         },
//       ),
//     );
//   }

//   Widget getRow(int i) {
//     return Padding(
//       padding: EdgeInsets.all(10.0),
//       child: Text('Row ${widgets[i]["title"]}'),
//     );
//   }

//   loadData() async {
//     String dataURL = "https://jsonplaceholder.typicode.com/posts";
//     http.Response response = await http.get(dataURL, headers: {'cookies': '111'});
//     setState(() {
//       widgets = json.decode(response.body);
//     });
//   }
// }

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:async';
// import 'dart:isolate';

// void main() {
//   runApp(SampleApp());
// }

// class SampleApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sample App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SampleAppPage(),
//     );
//   }
// }

// class SampleAppPage extends StatefulWidget {
//   SampleAppPage({Key key}) : super(key: key);

//   @override
//   _SampleAppPageState createState() => _SampleAppPageState();
// }

// class _SampleAppPageState extends State<SampleAppPage> {
//   List widgets = [];

//   @override
//   void initState() {
//     super.initState();
//     loadData();
//   }

//   showLoadingDialog() {
//     if (widgets.length == 0) {
//       return true;
//     }

//     return false;
//   }

//   getBody() {
//     if (showLoadingDialog()) {
//       return getProgressDialog();
//     } else {
//       return getListView();
//     }
//   }

//   getProgressDialog() {
//     return Center(child: CircularProgressIndicator(),);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sample App'),
//       ),
//       body: getBody(),
//     );
//   }

//   ListView getListView() => ListView.builder(
//     itemCount: widgets.length,
//     itemBuilder: (BuildContext context, int position) {
//       return getRow(position);
//     },
//   );

//   Widget getRow(int i) {
//     return Padding(padding: EdgeInsets.all(10.0), child: Text('Row ${widgets[i]["title"]}'),);
//   }

//   loadData() async {
//     ReceivePort receivePort = ReceivePort();
//     await Isolate.spawn(dataLoader, receivePort.sendPort);

//     SendPort sendPort = await receivePort.first;

//     List msg = await sendReceive(sendPort, "https://jsonplaceholder.typicode.com/posts");

//     setState(() {
//       widgets = msg;
//     });
//   }

//   static dataLoader(SendPort sendPort) async {
//     ReceivePort port = ReceivePort();

//     sendPort.send(port.sendPort);

//     await for (var msg in port) {
//       String data = msg[0];
//       SendPort replyTo = msg[1];

//       String dataURL = data;
//       http.Response response = await http.get(dataURL);

//       replyTo.send(json.decode(response.body));
//     }
//   }

//   Future sendReceive(SendPort port, msg) {
//     ReceivePort response = ReceivePort();
//     port.send([msg, response.sendPort]);
//     return response.first;
//   }

// }

// 无限滚动
// import 'package:flutter/material.dart';

// void main() {
//   runApp(SampleApp());
// }

// class SampleApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sample App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SampleAppPage(),
//     );
//   }
// }

// class SampleAppPage extends StatefulWidget {
//   SampleAppPage({Key key}) : super(key: key);

//   @override
//   _SampleAppPageState createState() => _SampleAppPageState();
// }

// class _SampleAppPageState extends State<SampleAppPage> {
//   List widgets = <Widget>[];

//   @override
//   void initState() {
//     super.initState();
//     for (var i = 0; i < 100; i++) {
//       widgets.add(getRow(i));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: TextField(
//           decoration: InputDecoration(hintText: "This is a hint"),
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: widgets.length,
//         itemBuilder: (BuildContext context, int position) {
//           return getRow(position);
//         }),
//       );
//   }

//   Widget getRow(int i) {
//     return GestureDetector(
//       child: Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text('Row $i'),
//       ),
//       onTap: () {
//         // setState(() {
//         //   widgets.add(getRow(widgets.length + 1));
//         //   print('rot $i');
//         // });
//         print('row $i');
//       },
//     );
//   }
// }

// 输入框 校验email
// import 'package:flutter/material.dart';

// void main() {
//   runApp(SampleApp());
// }

// class SampleApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sample App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SampleAppPage(),
//     );
//   }
// }

// class SampleAppPage extends StatefulWidget {
//   SampleAppPage({Key key}) : super(key: key);

//   @override
//   _SampleAppPageState createState() => _SampleAppPageState();
// }

// class _SampleAppPageState extends State<SampleAppPage> {
//   String _errorText;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sample App'),
//       ),
//       body: Center(
//         child: TextField(
//           onSubmitted: (String text) {
//             setState(() {
//               if (!isEmail(text)) {
//                 _errorText = 'Error: this is not an email';
//               } else {
//                 _errorText = null;
//               }
//             });
//           },
//           decoration: InputDecoration(hintText: 'This is a hit.', errorText: _getErrorText()),
//         ),
//       )
//       );
//   }

//   _getErrorText() {
//     return _errorText;
//   }

//   bool isEmail(String em) {
//     String emailRegexp =
//       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

//     RegExp regExp = RegExp(emailRegexp);

//     return regExp.hasMatch(em);
//   }
// }

// class SampleApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sample App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SampleAppPage(),
//     );
//   }
// }

// class SampleAppPage extends StatefulWidget {
//   SampleAppPage({Key key}) : super(key: key);

//   @override
//   _SampleAppPageState createState() => _SampleAppPageState();
// }

// class _SampleAppPageState extends State<SampleAppPage> {
//   // Default value for toggle
//   bool toggle = true;
//   void _toggle() {
//     setState(() {
//       toggle = !toggle;
//     });
//   }

//   _getToggleChild() {
//     if (toggle) {
//       return Text('Toggle One');
//     } else {
//       return Text('toggle two');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Sample App"),
//       ),
//       body: Center(
//         child: _getToggleChild(),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _toggle,
//         tooltip: 'Update Text',
//         child: Icon(Icons.update),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: '111',
//       home: Scaffold(
//         body: Center(
//           child: RaisedButton(
//             onPressed: _launchURL,
//             child: Text('Show Flutter homepage'),
//           ),
//         ),
//       ),
//     );
//   }
// }

// _launchURL() async {
//   const url = 'https://flutter.io';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(SampleApp());
// }

// class SampleApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sample App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SampleAppPage(),
//     );
//   }
// }

// class SampleAppPage extends StatefulWidget {
//   SampleAppPage({Key key}) : super(key: key);

//   @override
//   _SampleAppPageState createState() => _SampleAppPageState();
// }

// class _SampleAppPageState extends State<SampleAppPage> {
//   List widgets = [];

//   @override
//   void initState() {
//     super.initState();

//     loadData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Sample App"),
//       ),
//       body: ListView.builder(
//           itemCount: widgets.length,
//           itemBuilder: (BuildContext context, int position) {
//             return getRow(position);
//           }));
//   }

//   Widget getRow(int i) {
//     return Padding(
//       padding: EdgeInsets.all(10.0),
//       child: Text("Row ${widgets[i]["title"]}")
//     );
//   }

//   loadData() async {
//     String dataURL = "https://jsonplaceholder.typicode.com/posts";
//     http.Response response = await http.get(dataURL);
//     setState(() {
//       widgets = json.decode(response.body);
//     });
//   }
// }

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:async';
// import 'dart:isolate';

// void main() {
//   runApp(SampleApp());
// }

// class SampleApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sample App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SampleAppPage(),
//     );
//   }
// }

// class SampleAppPage extends StatefulWidget {
//   SampleAppPage({Key key}) : super(key: key);

//   @override
//   _SampleAppPageState createState() => _SampleAppPageState();
// }

// class _SampleAppPageState extends State<SampleAppPage> {
//   List widgets = [];

//   @override
//   void initState() {
//     super.initState();
//     loadData();
//   }

//   showLoadingDialog() {
//     if (widgets.length == 0) {
//       return true;
//     }

//     return false;
//   }

//   getBody() {
//     if (showLoadingDialog()) {
//       return getProgressDialog();
//     } else {
//       return getListView();
//     }
//   }

//   getProgressDialog() {
//     return Center(child: CircularProgressIndicator());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Sample App"),
//         ),
//         body: getBody());
//   }

//   ListView getListView() => ListView.builder(
//       itemCount: widgets.length,
//       itemBuilder: (BuildContext context, int position) {
//         return getRow(position);
//       });

//   Widget getRow(int i) {
//     return Padding(padding: EdgeInsets.all(10.0), child: Text("Row ${widgets[i]["title"]}"));
//   }

//   loadData() async {
//     ReceivePort receivePort = ReceivePort();
//     await Isolate.spawn(dataLoader, receivePort.sendPort);

//     // The 'echo' isolate sends its SendPort as the first message
//     SendPort sendPort = await receivePort.first;

//     List msg = await sendReceive(sendPort, "https://jsonplaceholder.typicode.com/posts");

//     setState(() {
//       widgets = msg;
//     });
//   }

// // the entry point for the isolate
//   static dataLoader(SendPort sendPort) async {
//     // Open the ReceivePort for incoming messages.
//     ReceivePort port = ReceivePort();

//     // Notify any other isolates what port this isolate listens to.
//     sendPort.send(port.sendPort);

//     await for (var msg in port) {
//       String data = msg[0];
//       SendPort replyTo = msg[1];

//       String dataURL = data;
//       http.Response response = await http.get(dataURL);
//       // Lots of JSON to parse
//       replyTo.send(json.decode(response.body));
//     }
//   }

//   Future sendReceive(SendPort port, msg) {
//     ReceivePort response = ReceivePort();
//     port.send([msg, response.sendPort]);
//     return response.first;
//   }
// }

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(SampleApp());
// }

// class SampleApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sample App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SampleAppPage(),
//     );
//   }
// }

// class SampleAppPage extends StatefulWidget {
//   SampleAppPage({Key key}) : super(key: key);

//   @override
//   _SampleAppPageState createState() => _SampleAppPageState();
// }

// class _SampleAppPageState extends State<SampleAppPage> {
//   List widgets = [];

//   @override
//   void initState() {
//     super.initState();
//     loadData();
//   }

//   showLoadingDialog() {
//     return widgets.length == 0;
//   }

//   getBody() {
//     if (showLoadingDialog()) {
//       return getProgressDialog();
//     } else {
//       return getListView();
//     }
//   }

//   getProgressDialog() {
//     return Center(child: CircularProgressIndicator());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Sample App"),
//         ),
//         body: getBody());
//   }

//   ListView getListView() => ListView.builder(
//       itemCount: widgets.length,
//       itemBuilder: (BuildContext context, int position) {
//         return getRow(position);
//       });

//   Widget getRow(int i) {
//     return Padding(padding: EdgeInsets.all(10.0), child: Text("Row ${widgets[i]["title"]}"));
//   }

//   loadData() async {
//     String dataURL = "https://jsonplaceholder.typicode.com/posts";
//     http.Response response = await http.get(dataURL);
//     setState(() {
//       widgets = json.decode(response.body);
//     });
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(SampleApp());
// }

// class SampleApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sample App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SampleAppPage(),
//     );
//   }
// }

// class SampleAppPage extends StatelessWidget {
//   var container = Container(
//     // gray box
//     child: Center(
//       child: Transform(
//         child: Container(
//           // red box
//           child: Text(
//             "Lorem ipsum",
//             // style: bold24Roboto,
//             textAlign: TextAlign.center,
//           ),
//           decoration: BoxDecoration(
//             color: Colors.red[400],
//           ),
//           padding: EdgeInsets.all(16.0),
//         ),
//         alignment: Alignment.center,
//         transform: Matrix4.identity()..rotateZ(15 * 3.1415927 / 180),
//       ),
//     ),
//     width: 320.0,
//     height: 240.0,
//     color: Colors.grey[300],
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

// class SampleAppPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // return Scaffold(
//     //   drawer: Drawer(
//     //     child: ListTile(
//     //       leading: IconButton(icon: Icon(Icons.favorite_border),), //Icon(Icons.change_history),
//     //       title: Text('Screen2'),
//     //       onTap: () {
//     //         Navigator.of(context).pushNamed("/b");
//     //       },
//     //     ),
//     //     elevation: 20.0,
//     //   ),
//     //   appBar: AppBar(
//     //     title: Text('111'),
//     //   ),
//     //   body: Text('111'),
//     // );
//     return GestureDetector(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Gestures"),
//         ),
//         body: Center(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text('Tap, Long Press, Swipe Horizontally or Vertically '),
//           ],
//         )),
//       ),
//       onTap: () {
//         print('Tapped');
//       },
//       onLongPress: () {
//         print('Long Pressed');
//       },
//       onVerticalDragEnd: (DragEndDetails value) {
//         print('Swiped Vertically $value');
//       },
//       onHorizontalDragEnd: (DragEndDetails value) {
//         print('Swiped Horizontally $value');
//       },
//     );
//   }
// }

// // Flutter
// import 'package:flutter/material.dart';

// void main() {
//   runApp(Center(child: LogoFade()));
// }

// class LogoFade extends StatefulWidget {
//   _LogoFadeState createState() => _LogoFadeState();
// }

// class _LogoFadeState extends State<LogoFade> with TickerProviderStateMixin {
//   Animation animation;
//   AnimationController controller;

//   initState() {
//     super.initState();
//     controller = AnimationController(
//         duration: const Duration(milliseconds: 3000), vsync: this);
//     final CurvedAnimation curve =
//     CurvedAnimation(parent: controller, curve: Curves.easeIn);
//     animation = Tween(begin: 0.0, end: 1.0).animate(curve);
//     controller.forward();
//   }

//   Widget build(BuildContext context) {
//     return FadeTransition(
//       opacity: animation,
//       child: Container(
//         height: 300.0,
//         width: 300.0,
//         child: FlutterLogo(),
//       ),
//     );
//   }

//   dispose() {
//     controller.dispose();
//     super.dispose();
//   }
// }

// // 动画容器渐变
// import 'dart:math';

// import 'package:flutter/material.dart';

// void main() => runApp(AnimatedContainerApp());

// class AnimatedContainerApp extends StatefulWidget {
//   @override
//   _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
// }

// class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
//   double _width = 50;
//   double _height = 50;
//   Color _color = Colors.green;
//   BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('AnimatedContainer Demo'),
//         ),
//         body: Center(
//           child: AnimatedContainer(
//             width: _width,
//             height: _height,
//             decoration: BoxDecoration(
//               color: _color,
//               borderRadius: _borderRadius,
//             ),
//             duration: Duration(seconds: 1),
//             curve: Curves.fastOutSlowIn,
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.play_arrow),
//           onPressed: () {
//             setState(() {
//               final random = Random();

//               _width = random.nextInt(300).toDouble();
//               // _height = random.nextInt(300).toDouble();

//               _color = Color.fromRGBO(
//                   random.nextInt(256),
//                   random.nextInt(256),
//                   random.nextInt(256),
//                   1,
//                 );
//               _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble(),);
//             });
//           },
//         ),
//       ),
//     );
//   }
// }

// // 淡入淡出小工具
// import 'dart:math';

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final appTitle = 'Opacity Demo';
//     return MaterialApp(
//       title: appTitle,
//       home: MyHomePage(title: appTitle),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   final String title;

//   MyHomePage({Key key, this.title}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   bool _visible = true;
//   double _width = 200.0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: AnimatedOpacity(
//           opacity: _visible ? 1.0 : 0.0,
//           duration: Duration(seconds: 1),
//           curve: Curves.fastOutSlowIn,
//           child: Container(
//             width: _width,
//             height: 200.0,
//             color: Colors.green,
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             _visible = !_visible;
//             // final random = Random();
//             // _width = random.nextInt(300).toDouble();
//           });
//         },
//         tooltip: 'Toggle Opacity',
//         child: Icon(Icons.flip),
//       ),
//     );
//   }
// }

// // 将抽屉添加到屏幕
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   final appTitle = 'Drawer Demo';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: appTitle,
//       home: MyHomePage(title: appTitle),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   final String title;

//   MyHomePage({Key key, this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child: Text('我的页面!'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               child: Text('Drawer Header'),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//             ),
//             ListTile(
//               title: Text('Item 1'),
//               onTap: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             ListTile(
//               title: Text('Item 2'),
//               onTap: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // 显示SnackBars
// import 'package:flutter/material.dart';

// void main() => runApp(SnackBarDemo());

// class SnackBarDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'SnackBar Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('SnackBar Demo'),
//         ),
//         body: SnackBarPage(),
//       ),
//     );
//   }
// }

// class SnackBarPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: RaisedButton(
//         onPressed: () {
//           final snackBar = SnackBar(
//             content: Text('Yay! A SnackBar'),
//             action: SnackBarAction(
//               label: '关闭',
//               onPressed: () {
//                 //
//               },
//             ),
//           );

//           Scaffold.of(context).showSnackBar(snackBar);
//         },
//         child: Text('Show SnackBar'),
//       ),
//     );
//   }
// }

// // 根据横/竖屏 方向 决定绘制UI
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final appTitle = 'Orientation Demo';

//     return MaterialApp(
//       title: appTitle,
//       home: OrientationList(
//         title: appTitle,
//       ),
//     );
//   }
// }

// class OrientationList extends StatelessWidget {
//   final String title;
//   OrientationList({Key key, this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: OrientationBuilder(
//         builder: (BuildContext context, orientation) {
//           return GridView.count(
//             crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
//             children: List.generate(100, (index) {
//               return Center(
//                 child: Text(
//                   'Item $index',
//                   style: Theme.of(context).textTheme.headline,
//                 ),
//               );
//             }),
//           );
//         },
//       ),
//     );
//   }
// }

// 继承父主题
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final appName = 'Custom Themes';

//     return MaterialApp(
//       title: appName,
//       theme: ThemeData(
//           brightness: Brightness.dark,
//           primaryColor: Colors.lightBlue[200],
//           accentColor: Colors.cyan[600],
//           fontFamily: 'Montserrat',
//           textTheme: TextTheme(
//               headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
//             )
//           ),
//       home: MyHomePage(
//         title: appName,
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   final String title;
//   MyHomePage({Key key, @required this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child: Container(
//           color: Theme.of(context).primaryColor,
//           child: Text(
//             'Text with a background color',
//             style: Theme.of(context).textTheme.title,
//           ),
//         ),
//       ),
//       floatingActionButton: Theme(
//         data: Theme.of(context).copyWith(accentColor: Colors.yellow),
//         child: FloatingActionButton(
//           onPressed: null,
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }

// // Tabs 导航页
// import 'package:flutter/material.dart';

// void main() {
//   runApp(TabBarDemo());
// }

// class TabBarDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 4,
//         child: Scaffold(
//           appBar: AppBar(
//             bottom: TabBar(
//               tabs: [
//                 Tab(icon: Icon(Icons.directions_car),),
//                 Tab(icon: Icon(Icons.directions_transit),),
//                 Tab(icon: Icon(Icons.directions_bike),),
//                 Tab(icon: Icon(Icons.directions_bike),),
//               ],
//             ),
//             title: Text('Tabs Demo'),
//           ),
//           body: TabBarView(
//             children: [
//               Icon(Icons.directions_car),
//               Icon(Icons.directions_transit),
//               Icon(Icons.directions_bike),
//               Icon(Icons.directions_bike),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // 表单验证
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final appTitle = 'Form Validation Demo';

//     return MaterialApp(
//       title: appTitle,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(appTitle),
//         ),
//         body: MyCustomForm(),
//       ),
//     );
//   }
// }

// class MyCustomForm extends StatefulWidget {
//   @override
//   MyCustomFormState createState() {
//     return MyCustomFormState();
//   }
// }

// class MyCustomFormState extends State<MyCustomForm> {
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           TextFormField(
//             validator: (value) {
//               if (value.isEmpty) {
//                 return 'Please enter some text';
//               }
//             },
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 16.0),
//             child: RaisedButton(
//               onPressed: () {
//                 if (_formKey.currentState.validate()) {
//                   Scaffold.of(context)
//                       .showSnackBar(SnackBar(content: Text('Processing Data'),));
//                 }
//               },
//               child: Text('Submit'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // 输入框自动聚焦 和 绑定FocusNode
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Text Field Focus',
//       home: MyCustomForm(),
//     );
//   }
// }

// class MyCustomForm extends StatefulWidget {
//   @override
//   _MyCustomFormState createState() => _MyCustomFormState();
// }

// class _MyCustomFormState extends State<MyCustomForm> {
//   FocusNode myFocusNode;

//   @override
//   void initState() {
//     super.initState();

//     myFocusNode = FocusNode();
//   }

//   @override
//   void dispose() {
//     myFocusNode.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Text Field Focus'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               autofocus: true,
//             ),
//             TextField(
//               focusNode: myFocusNode,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => FocusScope.of(context).requestFocus(myFocusNode),
//         tooltip: 'Focus Second Text Field',
//         child: Icon(Icons.edit),
//       ),
//     );
//   }
// }

// 两种方式监听输入框，一种 onChange， 另一种 TextEditingController
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Retrieve Text Input',
//       home: MyCustomForm(),
//     );
//   }
// }

// // Define a Custom Form Widget
// class MyCustomForm extends StatefulWidget {
//   @override
//   _MyCustomFormState createState() => _MyCustomFormState();
// }

// // Define a corresponding State class. This class will hold the data related to
// // our Form.
// class _MyCustomFormState extends State<MyCustomForm> {
//   final myController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();

//     myController.addListener(_printLatestValue);
//   }

//   @override
//   void dispose() {
//     myController.dispose();
//     super.dispose();
//   }

//   _printLatestValue() {
//     print('Second text field: ${myController.value}');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Retrieve Text Input'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: <Widget>[
//             TextField(
//               onChanged: (text) {
//                 print('First text field: $text');
//               },
//               maxLength: 11,
//             ),
//             TextField(
//               controller: myController,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// Dialog model弹出层
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Retrieve Text Input',
//       home: MyCustomForm(),
//     );
//   }
// }

// // Define a Custom Form Widget
// class MyCustomForm extends StatefulWidget {
//   @override
//   _MyCustomFormState createState() => _MyCustomFormState();
// }

// // Define a corresponding State class. This class will hold the data related to
// // our Form.
// class _MyCustomFormState extends State<MyCustomForm> {
//   final myController = TextEditingController();

//   @override
//   void dispose() {
//     myController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Retrieve Text Input'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: TextField(
//           controller: myController,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           return showDialog(
//             context: context,
//             builder: (context) {
//               return AlertDialog(
//                 content: Text(myController.text),
//               );
//             }
//           );
//         },
//         tooltip: 'Show me the value!',
//         child: Icon(Icons.text_fields),
//       ),
//     );
//   }
// }

// // 添加水波纹效果
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final title = 'InkWell Demo';

//     return MaterialApp(
//       title: title,
//       home: MyHomePage(title: title),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   final String title;

//   MyHomePage({Key key, this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child: MyButton(),
//       ),
//     );
//   }
// }

// class MyButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Scaffold.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Tap'),
//           ),
//         );
//       },
//       child: Container(
//         padding: EdgeInsets.all(12.0),
//         child: Text('Flat Button'),
//       ),
//     );
//   }
// }

// // GestureDetector自定义手势， 监听用户Tap行为
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final title = 'Gesture Demo';

//     return MaterialApp(
//       title: title,
//       home: MyHomePage(title: title),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   final String title;

//   MyHomePage({Key key, this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(child: MyButton(),),
//     );
//   }
// }

// class MyButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         final snackBar = SnackBar(content: Text('Tap'),);

//         Scaffold.of(context).showSnackBar(snackBar);
//       },
//       child: Container(
//         padding: EdgeInsets.all(12.0),
//         decoration: BoxDecoration(
//           color: Theme.of(context).buttonColor,
//           borderRadius: BorderRadius.circular(8.0),
//         ),
//         child: Text('My Button'),
//       ),
//     );
//   }
// }

// 滑动删除list 中的一项
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   MyApp({Key key}) : super(key: key);

//   @override
//   MyAppState createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   final items = List<String>.generate(3, (i) => 'Item ${i + 1}');

//   @override
//   Widget build(BuildContext context) {
//     final title = 'Dismissing Items';

//     return MaterialApp(
//       title: title,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
//         body: ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (BuildContext context, i) {
//             final item = items[i];

//             return Dismissible(
//               key: Key(item),
//               onDismissed: (direction) {
//                 setState(() {
//                   items.removeAt(i);
//                 });

//                 Scaffold.of(context).showSnackBar(
//                   SnackBar(
//                     content: Text('$item dismissed'),
//                   ),
//                 );
//               },
//               background: Container(
//                 color: Colors.red,
//               ),
//               child: ListTile(
//                 title: Text('$item'),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// 通过Image.network 加载网络图像
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var title = 'Web Images';

//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
//         body: Image.network(
//           'https://picsum.photos/250?image=9',
//         ),
//       ),
//     );
//   }
// }

// 使用占位符淡入图像
// import 'package:flutter/material.dart';
// import 'package:transparent_image/transparent_image.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final title = 'Fade in images';

//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
//         // body: Stack(
//         //   children: <Widget>[
//         //     Center(child: CircularProgressIndicator(),),
//         //     Center(
//         //       child: FadeInImage.memoryNetwork(
//         //         placeholder: kTransparentImage,
//         //         image: 'https://picsum.photos/250?image=9',
//         //       ),
//         //     )
//         //   ],
//         // ),
//         body: Center(
//           child: FadeInImage.assetNetwork(
//             placeholder: 'images/beachball-alpha.png', //占位符图片
//             image: 'https://picsum.photos/250?image=9',
//           ),
//         )
//       ),
//     );
//   }
// }

// 使用缓存的图像
// import 'package:flutter/material.dart';
// import 'package:cached_network_image/cached_network_image.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final title = 'Cached Images';

//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
//         body: Center(
//           child: CachedNetworkImage(
//             placeholder: CircularProgressIndicator(),
//             imageUrl: 'https://picsum.photos/250?image=9',
//           ),
//         ),
//       ),
//     );
//   }
// }

// ListView 列表
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final title = 'Basic List';

//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
//         body: ListView(
//           children: <Widget>[
//             ListTile(
//               leading: Icon(Icons.map),
//               title: Text('Map'),
//             ),
//             ListTile(
//               leading: Icon(Icons.photo_album),
//               title: Text('Album'),
//             ),
//             ListTile(
//               leading: Icon(Icons.phone),
//               title: Text('Phone'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//横向排列的 列表ListView
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final title = 'Horizontal List';

//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
//         body: Container(
//           margin: EdgeInsets.symmetric(vertical: 20.0),
//           height: 200.0,
//           child: ListView(
//             scrollDirection: Axis.horizontal,
//             children: <Widget>[
//               Container(
//                 width: 160.0,
//                 color: Colors.red,
//               ),
//               Container(
//                 width: 160.0,
//                 color: Colors.blue,
//               ),
//               Container(
//                 width: 160.0,
//                 color: Colors.green,
//               ),
//               Container(
//                 width: 160.0,
//                 color: Colors.yellow,
//               ),
//               Container(
//                 width: 160.0,
//                 color: Colors.orange,
//               ),
//               Container(
//                 width: 160.0,
//                 color: Colors.red,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// GridView 网格
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final title = 'Grid List';

//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
//         body: GridView.count(
//           // Create a grid with 2 columns. If you change the scrollDirection to
//           // horizontal, this would produce 2 rows.
//           crossAxisCount: 2,
//           // Generate 100 Widgets that display their index in the List
//           children: List.generate(100, (index) {
//             return Center(
//               child: Text(
//                 'Item $index',
//                 style: Theme.of(context).textTheme.headline,
//               ),
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }

// 根据值，返回不同的 Widget
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp(
//     items: List<ListItem>.generate(
//       1000,
//       (i) => i % 6 == 0
//           ? HeadingItem('Heading $i')
//           : MessageItem('Sender $i', 'Message body $i'),
//     ),
//   ));
// }

// class MyApp extends StatelessWidget {
//   final List<ListItem> items;

//   MyApp({Key key, @required this.items}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final title = 'Mixed List';

//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
//         body: ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             final item = items[index];

//             if (item is HeadingItem) {
//               return ListTile(
//                 title: Text(
//                   item.heading,
//                   style: Theme.of(context).textTheme.headline,
//                 ),
//               );
//             } else if (item is MessageItem) {
//               return ListTile(
//                 title: Text(item.sender),
//                 subtitle: Text(item.body),
//               );
//             }
//           },
//         )
//       ),
//     );
//   }
// }

// abstract class ListItem {}

// class HeadingItem implements ListItem {
//   final String heading;

//   HeadingItem(this.heading);
// }

// class MessageItem implements ListItem {
//   final String sender;
//   final String body;

//   MessageItem(this.sender, this.body);
// }


// 在列表上方放置一个浮动应用栏
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   MyApp({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final title = 'Floating App Bar';

//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//         body: CustomScrollView(
//           slivers: <Widget>[
//             SliverAppBar(
//               title: Text('title'),
//               floating: false,
//               flexibleSpace: Text('data'),
//               expandedHeight: 200,
//             ),
//             SliverList(
//               delegate: SliverChildBuilderDelegate(
//                 (context, index) => ListTile(title: Text('Item $index'),),
//                 childCount: 1000,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// 无限滚动列表
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    items: List<String>.generate(10000, (i) => 'Item $i'),
  ));
}

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Long List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}