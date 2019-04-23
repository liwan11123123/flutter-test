// import 'package:flutter/material.dart';
// import 'package:flutter/animation.dart';

// // void main() => runApp(MyApp());

// void main() => runApp(LogoApp());

// class AnimatedLogo extends AnimatedWidget {
//   static final _opacityTween = Tween<double>(begin: 0.1, end: 1);
//   static final _sizeTween = Tween<double>(begin: 0, end: 300);

//   AnimatedLogo({Key key, Animation<double> animation})
//     : super(key: key, listenable: animation);

//   Widget build(BuildContext context) {
//     final Animation<double> animation = listenable;
//     return Center(
//       child: Opacity(
//         opacity: _opacityTween.evaluate(animation),
//         child: Container(
//           margin: EdgeInsets.symmetric(vertical: 10),
//           height: _sizeTween.evaluate(animation),
//           width: _sizeTween.evaluate(animation),
//           child: FlutterLogo(),
//         ),
//       )
//     );
//   }
// }

// class LogoWidget extends StatelessWidget {
//   Widget build(BuildContext context) => Container(
//     margin: EdgeInsets.symmetric(vertical: 10),
//     child: FlutterLogo(),
//   );
// }

// class GrowTransition extends StatelessWidget {
//   GrowTransition({this.child, this.animation});

//   final Widget child;
//   final Animation<double> animation;

//   Widget build(BuildContext context) => Center(
//     child: AnimatedBuilder(
//       animation: animation,
//       builder: (context, child) => Container(
//         height: animation.value,
//         width: animation.value,
//         child: child,
//       ),
//       child: child,
//     ),
//   );
// }

// class LogoApp extends StatefulWidget {
//   _LogoAppState createState() => _LogoAppState();
// }

// class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
//   Animation<double> animation;
//   AnimationController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);
//     animation = CurvedAnimation(parent: controller, curve: Curves.easeIn)
//       ..addStatusListener((status) {
//         if (status == AnimationStatus.completed) {
//           controller.reverse();
//         } else if (status == AnimationStatus.dismissed) {
//           controller.forward();
//         }
//       })
//       ..addStatusListener((state) => print('$state'));
//     controller.forward();
//   }

//   @override
//   Widget build(BuildContext context) => GrowTransition(
//     child: LogoWidget(),
//     animation: animation,
//   );

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
// }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     Widget titleSection = Container(
// //       padding: const EdgeInsets.all(32),
// //       child: Row(
// //         children: [
// //           Expanded(
// //             child: Column(
// //               // 基于横轴 定位， 居左，居中，居右
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 Container(
// //                   padding: const EdgeInsets.only(bottom: 8),
// //                   child: Text(
// //                     '马尼拉一日游',
// //                     style: TextStyle(
// //                       fontWeight: FontWeight.bold,
// //                       fontSize: 24
// //                     ),
// //                   ),
// //                 ),
// //                 Text(
// //                   '马尼拉南部滑翔伞',
// //                   style: TextStyle(
// //                     color: Colors.grey[500],
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           FavoriteWidget(),
// //         ],
// //       ),
// //     );

// //     Color color = Theme.of(context).primaryColor;

// //     Widget buttonSection = Container(
// //       child: Row(
// //         // 主轴对其， 是均匀地分布，还是居左，居中，居右
// //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //         children: [
// //           _buildButtonColumn(color, Icons.call, '电话'),
// //           _buildButtonColumn(color, Icons.near_me, '地图'),
// //           _buildButtonColumn(color, Icons.share, '分享'),
// //         ],
// //       ),
// //     );

// //     Widget textSection = Container(
// //       padding: const EdgeInsets.all(32),
// //       child: Text(
// //         'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
// //         'Alps. Situated 1,578 meters above sea level, it is one of the '
// //         'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
// //         'half-hour walk through pastures and pine forest, leads you to the '
// //         'lake, which warms to 20 degrees Celsius in the summer. Activities '
// //         'enjoyed here include rowing, and riding the summer toboggan run.',
// //         softWrap: true,
// //       ),
// //     );

// //     return MaterialApp(
// //       title: 'Flutter layout demo',
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text('Flutter layout demo'),
// //         ),
// //         //使用ListView 的原因是 在小屏手机上，可以支持正文滚动。
// //         body: ListView(
// //           children: [
// //             Image.network(
// //               'https://github.com/flutter/website/blob/master/examples/layout/lakes/step6/images/lake.jpg?raw=true',
// //               width: 600,
// //               height: 240,
// //               fit: BoxFit.cover, // 图像应该尽可能小，但覆盖整个渲染框。
// //             ),
// //             titleSection,
// //             buttonSection,
// //             textSection,
// //           ],
// //         ),
// //       )
// //     );
    
// //   }

// //   Column _buildButtonColumn(Color color, IconData icon, String label) {
// //     return Column(
// //       mainAxisSize: MainAxisSize.min,
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: [
// //         Icon(icon, color: color),
// //         Container(
// //           margin: const EdgeInsets.only(top: 8),
// //           child: Text(
// //             label,
// //             style: TextStyle(
// //               fontSize: 12, 
// //               fontWeight: FontWeight.w400,
// //               color: color,
// //             )
// //           ),
// //         )
// //       ],
// //     );
// //   }
// // }

// // class FavoriteWidget extends StatefulWidget {
// //   @override
// //   _FavoriteWidgetState createState() => _FavoriteWidgetState();
// // }

// // class _FavoriteWidgetState extends State<FavoriteWidget> {
// //   bool _isFavorited = true;
// //   int _favoriteCount = 41;

// //   void _toggleFavorite() {
// //     setState(() {
// //       if (_isFavorited) {
// //         _favoriteCount -= 1;
// //         _isFavorited = false;
// //       } else {
// //         _favoriteCount += 1;
// //         _isFavorited = true;
// //       }
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Row(
// //       mainAxisSize: MainAxisSize.min,
// //       children: [
// //         Container(
// //           padding: EdgeInsets.all(0),
// //           child: IconButton(
// //             icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
// //             color: Colors.red[500],
// //             onPressed: _toggleFavorite,
// //           ),
// //         ),
// //         SizedBox(
// //           width: 18,
// //           child: Container(
// //             child: Text('$_favoriteCount'),
// //           ),
// //         )
// //       ],
// //     );
// //   }
// // }

// // class TapboxA extends StatefulWidget {
// //   TapboxA({Key key}) : super(key: key);

// //   @override
// //   _TapboxAState createState() => _TapboxAState();
// // }

// // class _TapboxAState extends State<TapboxA> {
// //   bool _active = false;

// //   void _handleTap() {
// //     setState(() {
// //       _active = !_active; 
// //     });
// //   }

// //   Widget build(BuildContext context) {
// //     return GestureDetector(
// //       onTap: _handleTap,
// //       child: Container(
// //         child: Center(
// //           child: Text(
// //             _active ? 'Active' : 'Inactive',
// //             style: TextStyle(fontSize: 32.0, color: Colors.white),
// //           ),
// //         ),
// //         width: 200.0,
// //         height: 200.0,
// //         decoration: BoxDecoration(
// //           color: _active ? Colors.lightGreen[700] : Colors.grey[600],
// //         ),
// //       ),
// //     );
// //   }
// // }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter Demo'),
//         ),
//         body: Center(
//           child: ParentWidget(),
//         ),
//       ),
//     );
//   }
// }

// // // 父类 管理状态
// // class ParentWidget extends StatefulWidget {
// //   @override
// //   _ParentWidgetState createState() => _ParentWidgetState();
// // }

// // class _ParentWidgetState extends State<ParentWidget> {
// //   bool _active = false;

// //   void _handleTapboxChanged(bool newValue) {
// //     print(newValue);
// //     setState(() {
// //       _active = newValue; 
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: TapboxB(
// //         active: _active,
// //         onChanged: _handleTapboxChanged,
// //       ),
// //     );
// //   }
// // }

// // class TapboxB extends StatelessWidget {
// //   TapboxB({Key key, this.active: false, @required this.onChanged})
// //     : super(key: key);

// //   final bool active;
// //   final ValueChanged<bool> onChanged;

// //   void _handleTap() {
// //     onChanged(!active);
// //   }

// //   Widget build(BuildContext context) {
// //     // GestureDetector 手势识别
// //     return GestureDetector(
// //       onLongPress: _handleTap,
// //       child: Container(
// //         child: Center(
// //           child: Text(
// //             active ? 'Active' : 'Inactive',
// //             style: TextStyle(fontSize: 32.0, color: Colors.white),
// //           ),
// //         ),
// //         width: 200.0,
// //         height: 200.0,
// //         decoration: BoxDecoration(
// //           color: active ? Colors.lightGreen[700] : Colors.grey[600],
// //         ),
// //       ),
// //     );
// //   }
// // }

// class ParentWidget extends StatefulWidget {
//   @override
//   _ParentWidgetState createState() => _ParentWidgetState();
// }

// class _ParentWidgetState extends State<ParentWidget> {
//   bool _active = false;

//   void _handleTapboxChanged(bool newValue) {
//     setState(() {
//       _active = newValue;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: TapboxC(
//         active: _active,
//         onChanged: _handleTapboxChanged,
//       ),
//     );
//   }
// }

// class TapboxC extends StatefulWidget {
//   TapboxC({Key key, this.active: false, @required this.onChanged})
//     : super(key: key);

//     final bool active;
//     final ValueChanged<bool> onChanged;
//     _TapboxCState createState() => _TapboxCState();
// }

// class _TapboxCState extends State<TapboxC> {
//   bool _highlight = false;

//   void _handleTapDown(TapDownDetails details) {
//     print(details);
//     setState(() {
//      _highlight = true; 
//     });
//   }

//   void _handleTapUp(TapUpDetails details) {
//     print(details);
//     setState(() {
//       _highlight = false;
//     });
//   }

//   void _handleTapCancel() {
//     setState(() {
//       _highlight = false;
//     });
//   }

//   void _handleTap() {
//     widget.onChanged(!widget.active);
//   }

//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTapDown: _handleTapDown,
//       onTapUp: _handleTapUp,
//       onTap: _handleTap,
//       onTapCancel: _handleTapCancel,
//       child: Container(
//         child: Center(
//           child: Text(
//             widget.active ? 'Active' : 'Inactive',
//             style: TextStyle(fontSize: 32.0, color: Colors.white),
//           ),
//         ),
//         width: 200.0,
//         height: 200.0,
//         decoration: BoxDecoration(
//           color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
//           border: _highlight ? Border.all(
//             color: Colors.teal[700],
//             width: 10.0
//           ) : null,
//         ),
//       ),
//     );
//   }
// }

// // void main() {
// //   runApp(MaterialApp(
// //     title: 'Flutter Tutorial',
// //     home: TutorialHome(),
// //   ));
// // }

// // class TutorialHome extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         leading: IconButton(
// //           icon: Icon(Icons.menu),
// //           tooltip: 'Navigation menu',
// //           onPressed: null,
// //         ),
// //         title: Text('Example title'),
// //         actions: <Widget>[
// //           IconButton(
// //             icon: Icon(Icons.search),
// //             tooltip: 'Search',
// //             onPressed: null,
// //           ),
// //         ],
// //       ),
// //       body: Center(
// //         child: Counter()
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         tooltip: 'Add',
// //         child: Icon(Icons.add),
// //         onPressed: null,
// //       ),
// //     );
// //   }
// // }

// // class MyButton extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return GestureDetector(
// //       onTap: () {
// //         print('MyButton was tapped!');
// //       },
// //       child: Container(
// //         height: 36.0,
// //         padding: const EdgeInsets.all(8.0),
// //         margin: const EdgeInsets.symmetric(horizontal: 8.0),
// //         decoration: BoxDecoration(
// //           borderRadius: BorderRadius.circular(18.0),
// //           color: Colors.lightGreen[500]
// //         ),
// //         child: Center(
// //           child: Text('Engage'),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class Counter extends StatefulWidget {
// //   @override
// //   _CounterState createState() => _CounterState();
// // }

// // class _CounterState extends State<Counter> {
// //   int _counter = 0;

// //   void _increment() {
// //     setState(() {
// //       _counter++; 
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: <Widget>[
// //         RaisedButton(
// //           onPressed: _increment,
// //           child: Text('Increment'),
// //         ),
// //         Text('Count: $_counter'),
// //       ],
// //     );
// //   }
// // }

// // class CounterDisplay extends StatelessWidget {
// //   CounterDisplay({this.count});

// //   final int count;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Text('Count: $count');
// //   }
// // }

// // class CounterIncrementor extends StatelessWidget {
// //   CounterIncrementor({this.onPressed});

// //   final VoidCallback onPressed;

// //   @override
// //   Widget build(BuildContext context) {
// //     return RaisedButton(
// //       onPressed: onPressed,
// //       child: Text('Increment'),
// //     );
// //   }
// // }

// // class Counter extends StatefulWidget {
// //   @override
// //   _CounterState createState() => _CounterState();
// // }

// // class _CounterState extends State<Counter> {
// //   int _counter = 0;

// //   void _increment() {
// //     setState(() {
// //       ++_counter; 
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Row(children: <Widget>[
// //       CounterIncrementor(onPressed: _increment),
// //       CounterDisplay(count: _counter)
// //     ],);
// //   }
// // }

// // class Product {
// //   const Product({this.name});
// //   final String name;
// // }

// // typedef void CartChangedCallback(Product product, bool inCart);

// // class ShoppingListItem extends StatelessWidget {
// //   ShoppingListItem({Product product, this.inCart, this.onCartChanged}) 
// //       : product = product, 
// //       super(key: ObjectKey(product));

// //   final Product product;
// //   final bool inCart;
// //   final CartChangedCallback onCartChanged;

// //   Color _getColor(BuildContext context) {
// //     return inCart ? Colors.black54 : Theme.of(context).primaryColor;
// //   }

// //   TextStyle _getTextStyle(BuildContext context) {
// //     if (!inCart) return null;

// //     return TextStyle(
// //       color: Colors.black54,
// //       decoration: TextDecoration.lineThrough,
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return ListTile(
// //       onTap: () {
// //         onCartChanged(product, !inCart);
// //       },
// //       leading: CircleAvatar(
// //         backgroundColor: _getColor(context),
// //         child: Text(product.name[0]),
// //       ),
// //       title: Text(product.name, style: _getTextStyle(context)),
// //     );
// //   }
// // }

// // class ShoppingList extends StatefulWidget {
// //   ShoppingList({Key key, this.products}) : super(key: key);

// //   final List<Product> products;

// //   @override
// //   _ShoppingListState createState() => _ShoppingListState();
// // }

// // class _ShoppingListState extends State<ShoppingList> {
// //   Set<Product> _shoppingCart = Set<Product>();

// //   void _handleCartChanged(Product product, bool inCart) {
// //     setState(() {
// //       if (inCart)
// //         _shoppingCart.add(product); 
// //       else 
// //         _shoppingCart.remove(product);
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Shopping List'),
// //       ),
// //       body: ListView(
// //         padding: EdgeInsets.symmetric(vertical: 8.0),
// //         children: widget.products.map((Product product) {
// //           return ShoppingListItem(
// //             product: product,
// //             inCart: _shoppingCart.contains(product),
// //             onCartChanged: _handleCartChanged,
// //           );
// //         }).toList(),
// //       ),
// //     );
// //   }
// // }

// // void main() {
// //   runApp(MaterialApp(
// //     title: 'Shopping App',
// //     home: ShoppingList(
// //       products: <Product>[
// //         Product(name: 'Eggs'),
// //         Product(name: 'Flour'),
// //         Product(name: 'Chocolate chips'),
// //       ],
// //     ),
// //   ));
// // }

// // class MyAppBar extends StatelessWidget {
// //   MyAppBar({this.title});

// //   final Widget title;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       height: 56.0,
// //       padding: const EdgeInsets.symmetric(horizontal: 8.0), // 左右 padding 为8.0
// //       decoration: BoxDecoration(color: Colors.blue[500]),
// //       child: Row(
// //         children: <Widget>[
// //           IconButton(
// //             icon: Icon(Icons.menu),
// //             tooltip: 'Navigation menu',
// //             onPressed: () {
// //               print('111');
// //             },
// //           ),
// //           Expanded(
// //             child: title,
// //           ),
// //           IconButton(
// //             icon: Icon(Icons.search),
// //             tooltip: 'Search',
// //             onPressed: null,
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class MyScaffold extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Material(
// //       child: Column(
// //         children: <Widget>[
// //           MyAppBar(
// //             title: Text(
// //               'Example title',
// //               style: Theme.of(context).primaryTextTheme.title,
// //             ),
// //           ),
// //           Expanded(
// //             child: Center(
// //               child: Text('Hello world'),
// //             ),
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }

// // void main() {
// //   runApp(MaterialApp(
// //     title: 'My app',
// //     home: MyScaffold(),
// //   ));
// // }

// // #docregion ShakeCurve
// import 'dart:math';

// // #enddocregion ShakeCurve
// import 'package:flutter/animation.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(LogoApp());

// // #docregion diff
// class AnimatedLogo extends AnimatedWidget {
//   // Make the Tweens static because they don't change.
//   static final _opacityTween = Tween<double>(begin: 0.1, end: 1);
//   static final _sizeTween = Tween<double>(begin: 0, end: 300);

//   AnimatedLogo({Key key, Animation<double> animation})
//       : super(key: key, listenable: animation);

//   Widget build(BuildContext context) {
//     final Animation<double> animation = listenable;
//     return Center(
//       child: Opacity(
//         opacity: _opacityTween.evaluate(animation),
//         child: Container(
//           margin: EdgeInsets.symmetric(vertical: 10),
//           height: _sizeTween.evaluate(animation),
//           width: _sizeTween.evaluate(animation),
//           child: FlutterLogo(),
//         ),
//       ),
//     );
//   }
// }

// class LogoApp extends StatefulWidget {
//   _LogoAppState createState() => _LogoAppState();
// }

// class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
//   Animation<double> animation;
//   AnimationController controller;

//   @override
//   void initState() {
//     super.initState();
//     // #docregion AnimationController, tweens
//     controller =
//         AnimationController(duration: const Duration(seconds: 2), vsync: this);
//     // #enddocregion AnimationController, tweens
//     animation = CurvedAnimation(parent: controller, curve: Curves.easeIn)
//       ..addStatusListener((status) {
//         if (status == AnimationStatus.completed) {
//           controller.reverse();
//         } else if (status == AnimationStatus.dismissed) {
//           controller.forward();
//         }
//       });
//     controller.forward();
//   }

//   @override
//   Widget build(BuildContext context) => AnimatedLogo(animation: animation);

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
// }
// // #enddocregion diff

// // Extra code used only in the tutorial explanations. It is not used by the app.

// class UsedInTutorialTextOnly extends _LogoAppState {
//   UsedInTutorialTextOnly() {
//     // ignore: unused_local_variable
//     var animation, sizeAnimation, opacityAnimation, tween, colorTween;

//     // #docregion CurvedAnimation
//     animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
//     // #enddocregion CurvedAnimation

//     // #docregion tweens
//     sizeAnimation = Tween<double>(begin: 0, end: 300).animate(controller);
//     opacityAnimation = Tween<double>(begin: 0.1, end: 1).animate(controller);
//     // #enddocregion tweens

//     // #docregion tween
//     tween = Tween<double>(begin: -200, end: 0);
//     // #enddocregion tween

//     // #docregion colorTween
//     colorTween = ColorTween(begin: Colors.transparent, end: Colors.black54);
//     // #enddocregion colorTween
//   }

//   usedInTutorialOnly1() {
//     // #docregion IntTween
//     AnimationController controller = AnimationController(
//         duration: const Duration(milliseconds: 500), vsync: this);
//     Animation<int> alpha = IntTween(begin: 0, end: 255).animate(controller);
//     // #enddocregion IntTween
//     return alpha;
//   }

//   usedInTutorialOnly2() {
//     // #docregion IntTween-curve
//     AnimationController controller = AnimationController(
//         duration: const Duration(milliseconds: 500), vsync: this);
//     final Animation curve =
//         CurvedAnimation(parent: controller, curve: Curves.easeOut);
//     Animation<int> alpha = IntTween(begin: 0, end: 255).animate(curve);
//     // #enddocregion IntTween-curve
//     return alpha;
//   }
// }

// // #docregion ShakeCurve
// class ShakeCurve extends Curve {
//   @override
//   double transform(double t) => sin(t * pi * 2);
// }

// class PhotoHero extends StatelessWidget {
//   const PhotoHero({Key key, this.photo, this.onTap, this.width}) : super(key: key);

//   final String photo;
//   final VoidCallback onTap;
//   final double width;

//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       child: Hero(
//         tag: photo,
//         child: Material(
//           color: Colors.transparent,
//           child: InkWell(
//             onTap: onTap,
//             child: Image.asset(
//               photo,
//               fit: BoxFit.contain,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class HeroAnimation extends StatelessWidget {
//   Widget build(BuildContext context) {
//     timeDilation = 5.0;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Basic Hero Animation'),
//       ),
//       body: Center(
//         child: PhotoHero(
//           photo: 'images/flippers-alpha.png',
//           width: 300.0,
//           onTap: () {
//             Navigator.of(context).push(MaterialPageRoute<void>(
//               builder: (BuildContext context) {
//                 return Scaffold(
//                   appBar: AppBar(
//                     title: const Text('Flippers Page'),
//                   ),
//                   body: Container(
//                     color: Colors.lightBlueAccent,
//                     padding: const EdgeInsets.all(16.0),
//                     alignment: Alignment.topLeft,
//                     child: PhotoHero(
//                       photo: 'images/flippers-alpha.png',
//                       width: 100.0,
//                       onTap: () {
//                         Navigator.of(context).pop();
//                       },
//                     ),
//                   ),
//                 );
//               }
//             )); 
//           },
//         ),
//       ),
//     );
//   }
// }

// class RadialExpansion extends StatelessWidget {
//   RadialExpansion({
//     Key key,
//     this.maxRadius,
//     this.child,
//   }) : clipRectSize = 2.0 * (maxRadius / math.sqrt2),
//        super(key: key);

//   final double maxRadius;
//   final clipRectSize;
//   final Widget child;

//   @override 
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return ClipOval(
//       child: Center(
//         child: SizedBox(
//           width: clipRectSize,
//           height: clipRectSize,
//           child: ClipRect(
//             child: child,
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart' show timeDilation;

// class PhotoHero extends StatelessWidget {
//   const PhotoHero({ Key key, this.photo, this.onTap, this.width }) : super(key: key);

//   final String photo;
//   final VoidCallback onTap;
//   final double width;

//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       child: Hero(
//         tag: photo,
//         child: Material(
//           color: Colors.transparent,
//           child: InkWell(
//             onTap: onTap,
//             child: Image.network(
//               'https://github.com/flutter/website/blob/master/examples/_animation/hero_animation/images/flippers-alpha.png?raw=true',
//               fit: BoxFit.contain,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class HeroAnimation extends StatelessWidget {
//   Widget build(BuildContext context) {
//     timeDilation = 10.0; // 1.0 means normal animation speed.

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Basic Hero Animation'),
//       ),
//       body: Center(
//         child: PhotoHero(
//           photo: 'images/flippers-alpha.png',
//           width: 300.0,
//           onTap: () {
//             Navigator.of(context).push(MaterialPageRoute<void>(
//               builder: (BuildContext context) {
//                 return Scaffold(
//                   appBar: AppBar(
//                     title: const Text('Flippers Page'),
//                   ),
//                   body: Container(
//                     // Set background to blue to emphasize that it's a new route.
//                     color: Colors.lightBlueAccent,
//                     padding: const EdgeInsets.all(16.0),
//                     alignment: Alignment.topLeft,
//                     child: PhotoHero(
//                       photo: 'https://github.com/flutter/website/blob/master/examples/_animation/hero_animation/images/flippers-alpha.png?raw=true',
//                       width: 100.0,
//                       onTap: () {
//                         Navigator.of(context).pop();
//                       },
//                     ),
//                   ),
//                 );
//               }
//             ));
//           },
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(home: HeroAnimation()));
// }


// import 'package:flutter/material.dart';

// class BasicHeroAnimation extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Basic Hero Animation'),
//       ),
//       body: Center(
//         child: InkWell(
//           onTap: () {
//             Navigator.of(context).push(
//               MaterialPageRoute<void>(
//                 builder: (BuildContext context) {
//                   return Scaffold(
//                     appBar: AppBar(
//                       title: const Text('Flippers Page'),
//                     ),
//                     body: Container(
//                       padding: const EdgeInsets.all(8.0),
//                       alignment: Alignment.topLeft,
//                       // Use background color to emphasize that it's a new route.
//                       color: Colors.lightBlueAccent,
//                       child: Hero(
//                         tag: 'flippers',
//                         child: SizedBox(
//                           width: 100.0,
//                           child: Image.asset(
//                             'images/flippers-alpha.png',
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             );
//           },
//           // Main route
//           child: Hero(
//             tag: 'flippers',
//             child: Image.asset(
//               'images/flippers-alpha.png',
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(home: BasicHeroAnimation()));
// }


// import 'dart:math' as math;

// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart' show timeDilation;

// class Photo extends StatelessWidget {
//   Photo({ Key key, this.photo, this.color, this.onTap }) : super(key: key);

//   final String photo;
//   final Color color;
//   final VoidCallback onTap;

//   Widget build(BuildContext context) {
//     return Material(
//       // Slightly opaque color appears where the image has transparency.
//       color: Theme.of(context).primaryColor.withOpacity(0.75),
//       child: InkWell(
//         onTap: onTap,
//         child: LayoutBuilder(
//           builder: (BuildContext context, BoxConstraints size) {
//             return Image.asset(
//               photo,
//               fit: BoxFit.contain,
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class RadialExpansion extends StatelessWidget {
//   RadialExpansion({
//     Key key,
//     this.maxRadius,
//     this.child,
//   }) : clipRectSize = 2.0 * (maxRadius / math.sqrt2),
//        super(key: key);

//   final double maxRadius;
//   final clipRectSize;
//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     return ClipOval(
//       child: Center(
//         child: SizedBox(
//           width: clipRectSize,
//           height: clipRectSize,
//           child: ClipRect(
//             child: child,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class RadialExpansionDemo extends StatelessWidget {
//   static const double kMinRadius = 32.0;
//   static const double kMaxRadius = 128.0;
//   static const opacityCurve = const Interval(0.0, 0.75, curve: Curves.fastOutSlowIn);

//   static RectTween _createRectTween(Rect begin, Rect end) {
//     return MaterialRectCenterArcTween(begin: begin, end: end);
//   }

//   static Widget _buildPage(BuildContext context, String imageName, String description) {
//     return Container(
//       color: Theme.of(context).canvasColor,
//       child: Center(
//         child: Card(
//           elevation: 8.0,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               SizedBox(
//                 width: kMaxRadius * 2.0,
//                 height: kMaxRadius * 2.0,
//                 child: Hero(
//                   createRectTween: _createRectTween,
//                   tag: imageName,
//                   child: RadialExpansion(
//                     maxRadius: kMaxRadius,
//                     child: Photo(
//                       photo: imageName,
//                       onTap: () {
//                         Navigator.of(context).pop();
//                       },
//                     ),
//                   ),
//                 ),
//               ),
//               Text(
//                 description,
//                 style: TextStyle(fontWeight: FontWeight.bold),
//                 textScaleFactor: 3.0,
//               ),
//               const SizedBox(height: 16.0),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildHero(BuildContext context, String imageName, String description) {
//     return Container(
//       width: kMinRadius * 2.0,
//       height: kMinRadius * 2.0,
//       child: Hero(
//         createRectTween: _createRectTween,
//         tag: imageName,
//         child: RadialExpansion(
//           maxRadius: kMaxRadius,
//           child: Photo(
//             photo: imageName,
//             onTap: () {
//               Navigator.of(context).push(
//                 PageRouteBuilder<void>(
//                   pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
//                     return AnimatedBuilder(
//                       animation: animation,
//                       builder: (BuildContext context, Widget child) {
//                         return Opacity(
//                           opacity: opacityCurve.transform(animation.value),
//                           child: _buildPage(context, imageName, description),
//                         );
//                       }
//                     );
//                   },
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     timeDilation = 5.0; // 1.0 is normal animation speed.

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Radial Transition Demo'),
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(32.0),
//         alignment: FractionalOffset.bottomLeft,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             _buildHero(context, 'images/chair-alpha.png', 'Chair'),
//             _buildHero(context, 'images/binoculars-alpha.png', 'Binoculars'),
//             _buildHero(context, 'images/beachball-alpha.png', 'Beach ball'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(home: RadialExpansionDemo()));
// }


// import 'dart:math' as math;

// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart' show timeDilation;

// class Photo extends StatelessWidget {
//   Photo({ Key key, this.photo, this.color, this.onTap }) : super(key: key);

//   final String photo;
//   final Color color;
//   final VoidCallback onTap;

//   Widget build(BuildContext context) {
//     return Material(
//       // Slightly opaque color appears where the image has transparency.
//       // Makes it possible to see the radial transformation's boundary.
//       color: Theme.of(context).primaryColor.withOpacity(0.25),
//       child: InkWell(
//         onTap: onTap,
//         child: Image.asset(
//               photo,
//               fit: BoxFit.contain,
//         ),
//       ),
//     );
//   }
// }

// class RadialExpansion extends StatelessWidget {
//   RadialExpansion({
//     Key key,
//     this.maxRadius,
//     this.child,
//   }) : clipRectExtent = 2.0 * (maxRadius / math.sqrt2),
//        super(key: key);

//   final double maxRadius;
//   final clipRectExtent;
//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     // The ClipOval matches the RadialExpansion widget's bounds,
//     // which change per the Hero's bounds as the Hero flies to
//     // the new route, while the ClipRect's bounds are always fixed.
//     return ClipOval(
//       child: Center(
//         child: SizedBox(
//           width: clipRectExtent,
//           height: clipRectExtent,
//           child: ClipRect(
//             child: child,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class RadialExpansionDemo extends StatelessWidget {
//   static const double kMinRadius = 32.0;
//   static const double kMaxRadius = 128.0;
//   static const opacityCurve = const Interval(0.0, 0.75, curve: Curves.fastOutSlowIn);

//   static RectTween _createRectTween(Rect begin, Rect end) {
//     return MaterialRectCenterArcTween(begin: begin, end: end);
//   }

//   static Widget _buildPage(BuildContext context, String imageName, String description) {
//     return Container(
//       color: Theme.of(context).canvasColor,
//       alignment: FractionalOffset.center,
//       child: SizedBox(
//         width: kMaxRadius * 2.0,
//         height: kMaxRadius * 2.0,
//         child: Hero(
//           createRectTween: _createRectTween,
//           tag: imageName,
//           child: RadialExpansion(
//             maxRadius: kMaxRadius,
//             child: Photo(
//               photo: imageName,
//               onTap: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildHero(BuildContext context, String imageName, String description) {
//     return Container(
//       width: kMinRadius * 2.0,
//       height: kMinRadius * 2.0,
//       child: Hero(
//         createRectTween: _createRectTween,
//         tag: imageName,
//         child: RadialExpansion(
//           maxRadius: kMaxRadius,
//           child: Photo(
//             photo: imageName,
//             onTap: () {
//               Navigator.of(context).push(
//                 PageRouteBuilder<void>(
//                   pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
//                     return AnimatedBuilder(
//                       animation: animation,
//                       builder: (BuildContext context, Widget child) {
//                         return Opacity(
//                           opacity: opacityCurve.transform(animation.value),
//                           child: _buildPage(context, imageName, description),
//                         );
//                       }
//                     );
//                   },
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     timeDilation = 20.0; // 1.0 is normal animation speed.

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Basic Radial Hero Animation Demo'),
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(32.0),
//         alignment: FractionalOffset.bottomLeft,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             _buildHero(context, 'images/chair-alpha.png', 'Chair'),
//             _buildHero(context, 'images/binoculars-alpha.png', 'Binoculars'),
//             _buildHero(context, 'images/beachball-alpha.png', 'Beach ball'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(home: RadialExpansionDemo()));
// }


import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class Photo extends StatelessWidget {
  Photo({ Key key, this.photo, this.color, this.onTap }) : super(key: key);

  final String photo;
  final Color color;
  final VoidCallback onTap;

  Widget build(BuildContext context) {
    return Material(
    // Slightly opaque color appears where the image has transparency.
    color: Theme.of(context).primaryColor.withOpacity(0.25),
      child: InkWell(
        onTap: onTap,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints size) {
            return Image.asset(
              photo,
              fit: BoxFit.contain,
            );
          },
        ),
      ),
    );
  }
}

class RadialExpansion extends StatelessWidget {
  RadialExpansion({
    Key key,
    this.minRadius,
    this.maxRadius,
    this.child,
  }) : clipTween = Tween<double>(
         begin: 2.0 * minRadius,
         end: 2.0 * (maxRadius / math.sqrt2),
       ),
       super(key: key);

  final double minRadius;
  final double maxRadius;
  final Tween<double> clipTween;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints size) {
        final double t = (size.biggest.width / 2.0 - minRadius) / (maxRadius - minRadius);
        final double rectClipExtent = clipTween.transform(t);
        return ClipOval(
          child: Center(
            child: SizedBox(
              width: rectClipExtent,
              height: rectClipExtent,
              child: ClipRect(
                child: child,
              ),
            ),
          ),
        );
      },
    );
  }
}

class RadialExpansionDemo extends StatelessWidget {
  static const double kMinRadius = 32.0;
  static const double kMaxRadius = 128.0;
  static const opacityCurve = const Interval(0.0, 0.75, curve: Curves.fastOutSlowIn);

  static RectTween _createRectTween(Rect begin, Rect end) {
    return MaterialRectCenterArcTween(begin: begin, end: end);
  }

  static Widget _buildPage(BuildContext context, String imageName, String description) {
    return Container(
      color: Theme.of(context).canvasColor,
      child: Center(
        child: Card(
          elevation: 8.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: kMaxRadius * 2.0,
                height: kMaxRadius * 2.0,
                child: Hero(
                  createRectTween: _createRectTween,
                  tag: imageName,
                  child: RadialExpansion(
                    minRadius: kMinRadius,
                    maxRadius: kMaxRadius,
                    child: Photo(
                      photo: imageName,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
              ),
              Text(
                description,
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 3.0,
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHero(BuildContext context, String imageName, String description) {
    return Container(
      width: kMinRadius * 2.0,
      height: kMinRadius * 2.0,
      child: Hero(
        createRectTween: _createRectTween,
        tag: imageName,
        child: RadialExpansion(
          minRadius: kMinRadius,
          maxRadius: kMaxRadius,
          child: Photo(
            photo: imageName,
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder<void>(
                  pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
                    return AnimatedBuilder(
                      animation: animation,
                      builder: (BuildContext context, Widget child) {
                        return Opacity(
                          opacity: opacityCurve.transform(animation.value),
                          child: _buildPage(context, imageName, description),
                        );
                      }
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 15.0; // 1.0 is normal animation speed.

    return Scaffold(
      appBar: AppBar(
        title: const Text('Radial Transition Demo'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        alignment: FractionalOffset.bottomLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildHero(context, 'images/chair-alpha.png', 'Chair'),
            _buildHero(context, 'images/binoculars-alpha.png', 'Binoculars'),
            _buildHero(context, 'images/beachball-alpha.png', 'Beach ball'),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: RadialExpansionDemo()));
}