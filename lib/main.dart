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
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp(
//     items: List<String>.generate(10000, (i) => 'Item $i'),
//   ));
// }

// class MyApp extends StatelessWidget {
//   final List<String> items;

//   MyApp({Key key, @required this.items}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final title = 'Long List';

//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
//         body: ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: Text('${items[index]}'),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// 在屏幕上设置小部件动画
// import 'package:flutter/material.dart';

// void main() => runApp(HeroApp());

// class HeroApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Transition Demo',
//       home: MainScreen(),
//     );
//   }
// }

// class MainScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Main Screen'),
//       ),
//       body: GestureDetector(
//         child: MyHero(),
//         onTap: () {
//           Navigator.push(context, MaterialPageRoute(builder: (_) {
//             return DetailScreen();
//           }));
//         },
//       ),
//     );
//   }
// }

// class MyHero extends StatelessWidget {
//   const MyHero({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Hero(
//       tag: 'imageHero',
//       child: Image.network(
//         'https://picsum.photos/250?image=9',
//       ),
//     );
//   }
// }

// class DetailScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GestureDetector(
//         child: Center(
//           child: MyHero(),
//         ),
//         onTap: () {
//           Navigator.pop(context);
//         },
//       ),
//     );
//   }
// }

// 路由导航 push pop
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     title: 'Navigation Basics',
//     home: FirstRoute(),
//   ));
// }

// class FirstRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Route'),
//       ),
//       body: Center(
//         child: RaisedButton(
//           child: Text('Open route'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => SecondRoute()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class SecondRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second Route'),
//       ),
//       body: Center(
//         child: RaisedButton(
//           onPressed: () {
//             // Navigator.pop(context);
//           },
//           child: Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }

// 路由跳转
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     title: 'Named Routes Demo',
//     initialRoute: '/',
//     routes: {
//       '/': (context) => FirstScreen(),
//       '/second': (context) => SecondScreen(),
//     },
//   ));
// }

// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Screen'),
//       ),
//       body: Center(
//         child: RaisedButton(
//           child: Text('Launch screen'),
//           onPressed: () {
//             Navigator.pushNamed(context, '/second');
//           },
//         ),
//       ),
//     );
//   }
// }

// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second Screen'),
//       ),
//       body: Center(
//         child: RaisedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }

// // 带参数 导航的路由
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       onGenerateRoute: (settings) {
//         if (settings.name == PassArgumentsScreen.routeName) {
//           final ScreenArguments args = settings.arguments;

//           return MaterialPageRoute(
//             builder: (context) {
//               return PassArgumentsScreen(
//                 title: args.title,
//                 message: args.message,
//               );
//             },
//           );
//         }
//       },
//       title: 'Navigation with Arguments',
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Screen'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             RaisedButton(
//               child: Text('Navigate to screen that extracts arguments'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ExtractArgumentsScreen(),
//                     settings: RouteSettings(
//                       arguments: ScreenArguments(
//                         'Extract Arguments Screen',
//                         'This message is extracted in the build method.',
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//             RaisedButton(
//               child: Text('Navigate to a named that accepts arguments'),
//               onPressed: () {
//                 Navigator.pushNamed(
//                   context,
//                   PassArgumentsScreen.routeName,
//                   arguments: ScreenArguments(
//                     'Accept Arguments Screen',
//                     'This message is extracted in the onGenerateRoute function.',
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ExtractArgumentsScreen extends StatelessWidget {
//   static const routeName = '/extractArguments';

//   @override
//   Widget build(BuildContext context) {
//     final ScreenArguments args = ModalRoute.of(context).settings.arguments;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(args.title),
//       ),
//       body: Center(
//         child: Text(args.message),
//       ),
//     );
//   }
// }

// class PassArgumentsScreen extends StatelessWidget {
//   static const routeName = '/passArguments';

//   final String title;
//   final String message;

//   const PassArgumentsScreen({
//     Key key,
//     @required this.title,
//     @required this.message,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child: Text(message),
//       ),
//     );
//   }
// }

// class ScreenArguments {
//   final String title;
//   final String message;

//   ScreenArguments(this.title, this.message);
// }

// 从屏幕返回数据
// import 'package:flutter/material.dart';
// import 'package:mobx/mobx.dart';

// void main() {
//   runApp(MaterialApp(
//     title: 'Returning Data',
//     home: HomeScreen(),
//   ));
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Returning Data Demo'),
//       ),
//       body: Center(child: SelectionButton()),
//     );
//   }
// }

// class SelectionButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return RaisedButton(
//       onPressed: () {
//         _navigateAndDisplaySelection(context);
//       },
//       child: Text('Pick an option, any option!'),
//     );
//   }

//   // A method that launches the SelectionScreen and awaits the result from
//   // Navigator.pop!
//   _navigateAndDisplaySelection(BuildContext context) async {
//     // Navigator.push returns a Future that will complete after we call
//     // Navigator.pop on the Selection Screen!
//     final result = await Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => SelectionScreen()),
//     );

//     // After the Selection Screen returns a result, hide any previous snackbars
//     // and show the new result!
//     Scaffold.of(context)
//       ..removeCurrentSnackBar()
//       ..showSnackBar(SnackBar(content: Text("$result")));
//   }
// }

// class SelectionScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Pick an option'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: RaisedButton(
//                 onPressed: () {
//                   // Close the screen and return "Yep!" as the result
//                   Navigator.pop(context, 'Yep!');
//                 },
//                 child: Text('Yep!'),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: RaisedButton(
//                 onPressed: () {
//                   // Close the screen and return "Nope!" as the result
//                   Navigator.pop(context, 'Nope.');
//                 },
//                 child: Text('Nope.'),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// 路由传参
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// class Todo {
//   final String title;
//   final String description;

//   Todo(this.title, this.description);
// }

// void main() {
//   runApp(new MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Passing Data',
//       home: TodosScreen(
//         todos: List.generate(
//           20,
//           (i) => Todo(
//                 'Todo $i',
//                 'A description of what needs to be done for Todo $i',
//               ),
//         ),
//       ),
//     );
//   }
// }

// class TodosScreen extends StatelessWidget {
//   final List<Todo> todos;

//   TodosScreen({Key key, @required this.todos}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Todos'),
//       ),
//       body: ListView.builder(
//         itemCount: todos.length,
//         itemBuilder: (context, i) {
//           return ListTile(
//             title: Text(todos[i].title),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => DetailScreen(todo: todos[i]),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class DetailScreen extends StatelessWidget {
//   final Todo todo;

//   DetailScreen({Key key, @required this.todo}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(todo.title),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Text(todo.description),
//       ),
//     );
//   }
// }

// 从互联网上获取数据
// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// const url = 'https://jsonplaceholder.typicode.com/posts/1';

// Future<Post> fetchPost() async {
//   final response = await http.get(url);

//   if (response.statusCode == 200) {
//     return Post.fromJson(json.decode(response.body));
//   } else {
//     throw Exception('Failed to load post');
//   }
// }

// class Post {
//   final int userId;
//   final int id;
//   final String title;
//   final String body;

//   Post({this.userId, this.id, this.title, this.body});

//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//       body: json['body'],
//     );
//   }
// }

// void main() => runApp(MyApp(post: fetchPost()));

// class MyApp extends StatelessWidget {
//   final Future<Post> post;

//   MyApp({Key key, this.post}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fetch Data Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Fetch Data Example'),
//         ),
//         body: Center(
//           child: FutureBuilder<Post>(
//             future: post,
//             builder: (context, snapshot) {
//               print(snapshot);
//               if (snapshot.hasData) {
//                 return Text(snapshot.data.title);
//               } else if (snapshot.hasError) {
//                 return Text('${snapshot.error}');
//               }

//               return CircularProgressIndicator();
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

// 从互联网上获取数据
// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// Future<Post> fetchPost() async {
//   final response =
//       await http.get('https://jsonplaceholder.typicode.com/posts/1',);

//   if (response.statusCode == 200) {
//     // If the call to the server was successful, parse the JSON
//     return Post.fromJson(json.decode(response.body));
//   } else {
//     // If that call was not successful, throw an error.
//     throw Exception('Failed to load post');
//   }
// }

// class Post {
//   final int userId;
//   final int id;
//   final String title;
//   final String body;

//   Post({this.userId, this.id, this.title, this.body});

//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//       body: json['body'],
//     );
//   }
// }

// void main() => runApp(MyApp(post: fetchPost()));

// class MyApp extends StatelessWidget {
//   final Future<Post> post;

//   MyApp({Key key, this.post}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fetch Data Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Fetch Data Example'),
//         ),
//         body: Center(
//           child: FutureBuilder<Post>(
//             future: post,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Text(snapshot.data.title);
//               } else if (snapshot.hasError) {
//                 return Text('${snapshot.error}');
//               }

//               return CircularProgressIndicator();
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

// 在后台处理json数据
// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:transparent_image/transparent_image.dart';

// Future<List<Photo>> fetchPhoto(http.Client client) async {
//   final response =
//     await client.get('https://jsonplaceholder.typicode.com/photos');

//   return compute(parsePhotos, response.body);
// }

// List<Photo> parsePhotos(String responseBody) {
//   final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

//   return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
// }

// class Photo {
//   final int albumId;
//   final int id;
//   final String title;
//   final String url;
//   final String thumbnailUrl;

//   Photo({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

//   factory Photo.fromJson(Map<String, dynamic> json) {
//     return Photo(
//       albumId: json['albumId'] as int,
//       id: json['id'] as int,
//       title: json['title'] as String,
//       url: json['url'] as String,
//       thumbnailUrl: json['thumbnailUrl'] as String,
//     );
//   }
// }

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final appTitle = 'Isolate Demo';
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
//       body: FutureBuilder<List<Photo>>(
//         future: fetchPhoto(http.Client()),
//         builder: (context, snapshot) {
//           if (snapshot.hasError) print(snapshot.error);

//           return snapshot.hasData
//             ? PhotosList(photos: snapshot.data)
//             : Center(child: CircularProgressIndicator(),);
//         },
//       ),
//     );
//   }
// }

// class PhotosList extends StatelessWidget {
//   final List<Photo> photos;

//   PhotosList({Key key, this.photos}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//       ),
//       itemCount: photos.length,
//       itemBuilder: (context, index) {
//         // return Image.network(photos[index].thumbnailUrl);
//         // return FadeInImage.memoryNetwork(
//         //         placeholder: kTransparentImage,
//         //         image: photos[index].thumbnailUrl,
//         // );
//         // 占位符 淡入 显示图片
//         return Stack(
//           children: <Widget>[
//             Center(child: CircularProgressIndicator(),),
//             Center(
//               child: FadeInImage.memoryNetwork(
//                 placeholder: kTransparentImage,
//                 image: photos[index].thumbnailUrl,
//               ),
//             )
//           ],
//         );
//       },
//     );
//   }
// }

// 使用WebSockets
// import 'package:flutter/foundation.dart';
// import 'package:web_socket_channel/io.dart';
// import 'package:flutter/material.dart';
// import 'package:web_socket_channel/web_socket_channel.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final title = 'WebSocket Demo';
//     return MaterialApp(
//       title: title,
//       home: MyHomePage(
//         title: title,
//         channel: IOWebSocketChannel.connect('ws://echo.websocket.org'),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   final String title;
//   final WebSocketChannel channel;

//   MyHomePage({Key key, @required this.title, @required this.channel})
//     : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   TextEditingController _controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Form(
//               child: TextFormField(
//                 controller: _controller,
//                 decoration: InputDecoration(labelText: 'Send a message'),
//               ),
//             ),
//             StreamBuilder(
//               stream: widget.channel.stream,
//               builder: (context, snapshot) {
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 24.0),
//                   child: Text(snapshot.hasData ? '${snapshot.data}' : ''),
//                 );
//               },
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _sendMessage,
//         tooltip: '发送消息',
//         child: Icon(Icons.send),
//       ),
//     );
//   }

//   void _sendMessage() {
//     if (_controller.text.isNotEmpty) {
//       widget.channel.sink.add(_controller.text);
//     }
//   }

//   @override
//   void dispose() {
//     widget.channel.sink.close();
//     super.dispose();
//   }
// }

// 使用sqflite 本地数据库
// import 'dart:async';

// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

// void main() async {
//   final database = openDatabase(
//     join(await getDatabasesPath(), 'doggle_database.db'),
//     onCreate: (db, version) {
//       return db.execute(
//         'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
//       );
//     },
//     version: 1,
//   );

//   Future<void> insertDog(Dog dog) async {
//     final Database db = await database;

//     await db.insert(
//       'dogs',
//       dog.toMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace,
//     );
//   }

//   Future<List<Dog>> dogs() async {
//     final Database db = await database;

//     final List<Map<String, dynamic>> maps = await db.query('dogs');

//     return List.generate(maps.length, (i) {
//       return Dog(
//         id: maps[i]['id'],
//         name: maps[i]['name'],
//         age: maps[i]['age'],
//       );
//     });
//   }

//   Future<void> updateDog(Dog dog) async {
//     final db = await database;

//     await db.update(
//       'dogs',
//       dog.toMap(),
//       where: 'id = ?',
//       whereArgs: [dog.id],
//     );
//   }

//   Future<void> deleteDog(int id) async {
//     final db = await database;

//     await db.delete(
//       'dogs',
//       where: 'id = ?',
//       whereArgs: [id],
//     );
//   }

//   var fido = Dog(
//     id: 0,
//     name: 'Fido',
//     age: 35,
//   );

//   await insertDog(fido);
//   var fido1 = Dog(
//     id: 1,
//     name: 'F22ido',
//     age: 353,
//   );
//   await insertDog(fido1);

//   print(await dogs());

//   fido = Dog(
//     id: fido.id,
//     name: fido.name,
//     age: fido.age + 11,
//   );
//   await updateDog(fido);

//   print(await dogs());

//   await deleteDog(fido.id);

//   print(await dogs());
// }

// class Dog {
//   final int id;
//   final String name;
//   final int age;

//   Dog({this.id, this.name, this.age});

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'name': name,
//       'age': age,
//     };
//   }

//   @override
//   String toString() {
//     return 'Dog{id: $id, name: $name, age: $age}';
//   }
// }

// 读取/写入 本地文件
// import 'dart:async';
// import 'dart:io';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:path_provider/path_provider.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       title: 'Reading and Writing Files',
//       home: FlutterDemo(storage: CounterStorage()),
//     ),
//   );
// }

// class CounterStorage {
//   Future<String> get _localPath async {
//     final directory = await getApplicationDocumentsDirectory();

//     return directory.path;
//   }

//   Future<File> get _localFile async {
//     final path = await _localPath;
//     return File('$path/counter.txt');
//   }

//   Future<int> readCounter() async {
//     try {
//       final file = await _localFile;

//       String contents = await file.readAsString();
//       print(contents);

//       return int.parse(contents);
//     } catch (e) {

//       return 0;
//     }
//   }

//   Future<File> writeCounter(int counter) async {
//     final file = await _localFile;

//     return file.writeAsString('$counter');
//   }
// }

// class FlutterDemo extends StatefulWidget {
//   final CounterStorage storage;

//   FlutterDemo({Key key, @required this.storage}) : super(key: key);

//   @override
//   _FlutterDemoState createState() => _FlutterDemoState();
// }

// class _FlutterDemoState extends State<FlutterDemo> {
//   int _counter;

//   @override
//   void initState() {
//     super.initState();
//     widget.storage.readCounter().then((int value) {
//       setState(() {
//         _counter = value;
//       });
//     });
//   }

//   Future<File> _incrementCounter() {
//     setState(() {
//       _counter++;
//     });

//     return widget.storage.writeCounter(_counter);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Reading and Writing Files'),
//       ),
//       body: Center(
//         child: Text(
//           'Button tapped $_counter time${_counter == 1 ? '' : 's'}.',
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

// 在磁盘上存储键值数据
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of the application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shared preferences demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Shared preferences demo'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   @override
//   void initState() {
//     super.initState();
//     _loadCounter();
//   }

//   //Loading counter value on start
//   _loadCounter() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       _counter = (prefs.getInt('counter') ?? 0);
//     });
//   }

//   //Incrementing counter after click
//   _incrementCounter() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       _counter = (prefs.getInt('counter') ?? 0) + 1;
//       prefs.setInt('counter', _counter);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// 播放器
// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// void main() => runApp(VideoPlayerApp());

// class VideoPlayerApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Video Player Demo',
//       home: VideoPlayerScreen(),
//     );
//   }
// }

// class VideoPlayerScreen extends StatefulWidget {
//   VideoPlayerScreen({Key key}) : super(key: key);

//   @override
//   _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
// }

// class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
//   VideoPlayerController _controller;
//   Future<void> _initializeVideoPlayerFuture;

//   @override
//   void initState() {
//     _controller = VideoPlayerController.network(
//       'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'
//     );

//     _initializeVideoPlayerFuture = _controller.initialize();

//     _controller.setLooping(true);

//     super.initState();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Butterfly Video'),
//       ),
//       body: FutureBuilder(
//         future: _initializeVideoPlayerFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return AspectRatio(
//               aspectRatio: _controller.value.aspectRatio,
//               child: VideoPlayer(_controller),
//             );
//           } else {
//             return Center(child: CircularProgressIndicator(),);
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             if (_controller.value.isPlaying) {
//               _controller.pause();
//             } else {
//               _controller.play();
//             }
//           });
//         },
//         child: Icon(
//           _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//         ),
//       ),
//     );
//   }
// }

// camera 照相机 (有bug)
// import 'dart:async';
// import 'dart:io';

// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:path/path.dart' show join;
// import 'package:path_provider/path_provider.dart';

// Future<void> main() async {
//   final cameras = await availableCameras();

//   final firstCamera = cameras.first;

//   runApp(
//     MaterialApp(
//       theme: ThemeData.dark(),
//       home: TakePictureScreen(
//         camera: firstCamera,
//       ),
//     ),
//   );
// }

// class TakePictureScreen extends StatefulWidget {
//   final CameraDescription camera;

//   const TakePictureScreen({
//     Key key,
//     @required this.camera,
//   }) : super(key: key);

//   @override
//   TakePictureScreenState createState() => TakePictureScreenState();
// }

// class TakePictureScreenState extends State<TakePictureScreen> {
//   CameraController _controller;
//   Future<void> _initializeControllerFuture;

//   @override
//   void initState() {
//     super.initState();

//     _controller = CameraController(
//       widget.camera,
//       ResolutionPreset.medium,
//     );

//     _initializeControllerFuture = _controller.initialize();
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Take a picture'),
//       ),
//       body: FutureBuilder<void>(
//         future: _initializeControllerFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return CameraPreview(_controller);
//           } else {
//             return Center(child: CircularProgressIndicator(),);
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.camera_alt),
//         onPressed: () async {
//           try {
//             await _initializeControllerFuture;

//             final path = join(
//               (await getTemporaryDirectory()).path,
//               '${DateTime.now()}.png',
//             );

//             await _controller.takePicture(path);

//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => DisplayPictureScreen(imagePath: path),
//               ),
//             );
//           } catch (e) {
//             print(e);
//           }
//         },
//       ),
//     );
//   }
// }

// class DisplayPictureScreen extends StatelessWidget {
//   final String imagePath;

//   const DisplayPictureScreen({Key key, this.imagePath}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Display the Picture'),
//       ),
//       body: Image.file(File(imagePath)),
//     );
//   }
// }

// 单元测试. 
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Counter App',
//       home: MyHomePage(title: 'Counter App Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               key: Key('counter'),
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         key: Key('increment'),
//         onPressed: _incrementCounter,
//         tooltip: '增加',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }



// 滑动 测试用例
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
          key: Key('long_list'),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                '${items[index]}',
                key: Key('item_${index}_text'),
              ),
            );
          },
        ),
      ),
    );
  }
}