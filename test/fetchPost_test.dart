// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// void main() {
//   testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
//     await tester.pumpWidget(MyWidget(title: 'T', message: 'M'));

//     final titleFinder = find.text('T');
//     final messageFinder = find.text('M');

//     expect(titleFinder, findsOneWidget);
//     expect(messageFinder, findsOneWidget);
//   });
// }

// class MyWidget extends StatelessWidget {
//   final String title;
//   final String message;

//   const MyWidget({
//     Key key,
//     @required this.title,
//     @required this.message,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
//         body: Center(
//           child: Text(message),
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// void main() {
//   testWidgets('finds a Text Widget', (WidgetTester tester) async {
//     await tester.pumpWidget(MaterialApp(
//       home: Scaffold(
//         body: Text('H'),
//       ),
//     ));

//     expect(find.text('H'), findsOneWidget);
//   });

//   testWidgets('finds a Widget using a Key', (WidgetTester tester) async {
//     final testKey = Key('K');

//     await tester.pumpWidget(MaterialApp(
//       key: testKey,
//       home: Container()
//     ));

//     expect(find.byKey(testKey), findsOneWidget);
//   });

//   testWidgets('finds a specific instance', (WidgetTester tester) async {
//     final childWidget = Padding(padding: EdgeInsets.zero);

//     await tester.pumpWidget(Container(child: childWidget));

//     expect(find.byWidget(childWidget), findsOneWidget);
//   });
// }



import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Add and remove a todo', (WidgetTester tester) async {
    await tester.pumpWidget(TodoList());
    
    await tester.enterText(find.byType(TextField), 'h1');

    await tester.tap(find.byType(FloatingActionButton));

    await tester.pump();

    expect(find.text('h1'), findsOneWidget);

    await tester.drag(find.byType(Dismissible), Offset(500.0, 0.0));

    await tester.pumpAndSettle();

    expect(find.text('h1'), findsNothing);
  });
}

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  static const _appTitle = 'Todo List';
  final todos = <String>[];
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(_appTitle),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              controller: controller,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: todos.length,
                itemBuilder: (BuildContext context, int i) {
                  final todo = todos[i];

                  return Dismissible(
                    key: Key('$todo$i'),
                    onDismissed: (direction) => todos.removeAt(i),
                    child: ListTile(title: Text(todo)),
                    background: Container(color: Colors.red,),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              todos.add(controller.text);
              controller.clear();
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}