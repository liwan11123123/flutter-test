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

// 无限滚动 demo
import 'package:flutter/material.dart';

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  List widgets = <Widget>[];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 100; i++) {
      widgets.add(getRow(i));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(hintText: "This is a hint"),
        ),
      ),
      body: ListView.builder(
        itemCount: widgets.length,
        itemBuilder: (BuildContext context, int position) {
          return getRow(position);
        }),
      );
  }

  Widget getRow(int i) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Row $i'),
      ),
      onTap: () {
        // setState(() {
        //   widgets.add(getRow(widgets.length + 1));
        //   print('rot $i');
        // });
        print('row $i');
      },
    );
  }
  // _getListData() {
  //   List<Widget> widgets = [];
  //   for (int i = 0; i < 100; i++) {
  //     widgets.add(GestureDetector(
  //       child: Padding(
  //         padding: EdgeInsets.all(10.0),
  //         child: Text('Row $i'),
  //       ),
  //       onTap: () {
  //         print('row tapped');
  //       },
  //     ));
  //     // widgets.add(Padding(
  //     //   padding: EdgeInsets.all(10.0),
  //     //   child: Text('Row $i'),
  //     // ));
  //   }
  //   return widgets;
  // }
}
