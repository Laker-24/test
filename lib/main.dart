// ignore_for_file: prefer_const_constructors

import 'package:demo/AnimatedSwitcherCounterRoute.dart';
import 'package:demo/KeepAliveTest.dart';
import 'package:demo/PersistentHeaderRoute.dart';
import 'package:demo/ScaleAnimationRoute.dart';
import 'package:demo/TabViewRoute1.dart';
import 'package:demo/switchAndcheck.dart';
import 'package:flutter/material.dart';

import 'AnimatedDecoratedBox.dart';
import 'AnimatedDecoratedBox1.dart';
import 'AnimatedListRoute.dart';
import 'AnimatedWidgetsTest.dart';
import 'CenterColumn.dart';
import 'ClipTestRoute.dart';
import 'Cupertino.dart';
import 'EchoRoute.dart';
import 'EdgeInsets.dart';
import 'FadeRoute.dart';
import 'FixedExtentList.dart';
import 'FlexLayout.dart';
import 'FocusTest.dart';
import 'FormTest.dart';
import 'Gradient.dart';
import 'GridView1.dart';
import 'HeroAnimationRouteA.dart';
import 'Image.dart';
import 'KeepAliveWrapper.dart';
import 'ListView.dart';
import 'MyClipper.dart';
import 'NavBar.dart';
import 'ParentWidget.dart';
import 'Progress.dart';
import 'ProviderRoute.dart';
import 'ResponsiveColumn.dart';
import 'Scaffold.dart';
import 'ScrollControllerTestRoute.dart';
import 'ScrollNotificationTestRoute.dart';
import 'ShareDataWidget.dart';
import 'SingleChildScrollViewTestRoute.dart';
import 'SingleLineFittedBox.dart';
import 'StaggerAnimation.dart';
import 'StaggerRoute .dart';
import 'TabViewRoute2.dart';
import 'TapboxA.dart';
import 'TapboxC.dart';
import 'TestFlow.dart';
import 'ThemeTestRoute.dart';
import 'Tiproute.dart';
import 'ValueListenableRoute.dart';
import 'WillPopScopeTestRoute.dart';
import 'context.dart';
import 'englishword.dart';
import 'example1.dart';
import 'finiteListView.dart';
import 'newRoute.dart';
import 'dart:math' as math;
import 'package:flutter/physics.dart';
import 'SliverHeaderBuilder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        // "new_page": (context) => EchoRoute(),
        "/": (context) => MyHomePage(title: 'PageView'),
      },
      // home: ScaffoldRoute(),
    );
  }
}

// class Page extends StatefulWidget {
//   const Page({Key? key, required this.text}) : super(key: key);

//   final String text;

//   @override
//   _PageState createState() => _PageState();
// }

// class _PageState extends State<Page> {
//   @override
//   Widget build(BuildContext context) {
//     print("build ${widget.text}");
//     return Center(child: Text("${widget.text}", textScaleFactor: 5));
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // Widget redBox = DecoratedBox(
  //   decoration: BoxDecoration(color: Colors.red),
  // );
  Color _decorationColor = Colors.blue;
  var duration = Duration(seconds: 1);
  @override
  Widget build(BuildContext context) {
    // return ValueListenableRoute();
    // ThemeTestRoute();
    // return TabViewRoute2();
    // var children = <Widget>[];
    // for (int i = 0; i < 6; ++i) {
    //   children.add(KeepAliveWrapper(child: Page(text: '$i')));
    // }
    // Color _decorationColor = Colors.blue;
    // var duration = Duration(seconds: 1);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: AnimatedWidgetsTest()
          //     child: AnimatedDecoratedBox1(
          //   duration: duration,
          //   decoration: BoxDecoration(color: _decorationColor),
          //   child: TextButton(
          //     onPressed: () {
          //       setState(() {
          //         _decorationColor = Colors.red;
          //       });
          //     },
          //     child: const Text(
          //       "AnimatedDecoratedBox",
          //       style: TextStyle(color: Colors.white),
          //     ),
          //   ),
          // )
          // child: AnimatedSwitcherCounterRoute()
          // child: StaggerRoute()
          // child: HeroAnimationRouteA()
          // child: ScaleAnimationRoute()
          //     child: Column(children: <Widget>[
          //   //背景为蓝色，则title自动为白色
          //   NavBar(color: Colors.blue, title: "标题"),
          //   //背景为白色，则title自动为黑色
          //   NavBar(color: Colors.white, title: "标题"),
          // ])
          // child: ProviderRoute()
          // child: InheritedWidgetTestRoute()
          // child: WillPopScopeTestRoute()
          // child: PersistentHeaderRoute()
          // child: KeepAliveTest()

          //     child: PageView(
          //   children: children,
          // )
          ),
    );
    //   var children = <Widget>[];
    //   // 生成 6 个 Tab 页
    //   for (int i = 0; i < 6; ++i) {
    //     children.add(Page(text: '$i'));
    //   }
    //   return PageView(
    //     // scrollDirection: Axis.vertical, // 滑动方向为垂直方向
    //     children: children,
    //   );
    // return Center(child: SingleChildScrollViewTestRoute());
    // return Center(
    // child: Column(
    //   children: [
    //     wRow(' 90000000000000000 '),
    //     SingleLineFittedBox(child: wRow(' 90000000000000000 ')),
    //     wRow(' 800 '),
    //     SingleLineFittedBox(child: wRow(' 800 ')),
    //   ]
    //       .map((e) => Padding(
    //             padding: EdgeInsets.symmetric(vertical: 20),
    //             child: e,
    //           ))
    //       .toList(),
    // ),
    // );
    // return Center(
    //   child: Column(
    //     children: [
    //       wContainer(BoxFit.none),
    //       Text('Wendux'),
    //       wContainer(BoxFit.contain),
    //       Text('Flutter中国'),
    //     ],
    //   ),
    // );
    // Widget avatar = Image.asset("images/avatar.jpg", width: 60.0);
    // return Scaffold(
    // appBar: AppBar(
    // title: Text(widget.title),
//       //   actions: <Widget>[
//       //     UnconstrainedBox(
//       //       child: SizedBox(
//       //         width: 20,
//       //         height: 20,
//       //         child: CircularProgressIndicator(
//       //           strokeWidth: 3,
//       //           valueColor: AlwaysStoppedAnimation(Colors.white70),
//       //         ),
//       //       ),
//       //     )
//       //   ],
//       // ),
    // appBar: AppBar(
    //   title: Text(widget.title),
    // ),
    // body: Center(

    // child: InfiniteGridView()

    //     child: GridView.extent(
    //   maxCrossAxisExtent: 120.0,
    //   childAspectRatio: 2.0,
    //   children: <Widget>[
    //     Icon(Icons.ac_unit),
    //     Icon(Icons.airport_shuttle),
    //     Icon(Icons.all_inclusive),
    //     Icon(Icons.beach_access),
    //     Icon(Icons.cake),
    //     Icon(Icons.free_breakfast),
    //   ],
    // )
    //     child: GridView.count(
    //   crossAxisCount: 3,
    //   childAspectRatio: 1.0,
    //   children: <Widget>[
    //     Icon(Icons.ac_unit),
    //     Icon(Icons.airport_shuttle),
    //     Icon(Icons.all_inclusive),
    //     Icon(Icons.beach_access),
    //     Icon(Icons.cake),
    //     Icon(Icons.free_breakfast),
    //   ],
    // )
    // child: AnimatedListRoute()
    // child: ScrollNotificationTestRoute()
    // child: ScrollControllerTestRoute()
    //     child: Column(
    //   children: <Widget>[
    //     ListTile(title: Text("商品列表")),
    //     Expanded(
    //       child: ListView.builder(
    //         itemBuilder: (BuildContext context, int index) =>
    //             ListTile(title: Text("$index")),
    //       ),
    //     ),
    //   ],
    // )
    // child: InfiniteListView()
    // child: FixedExtentList()
    // child: ListView3()
    // child: ListView.builder(
    //     itemCount: 100,
    //     itemExtent: 50.0,
    //     itemBuilder: (BuildContext context, int inde x) =>
    //         ListTile(title: Text("$index")))
    // child: GridView(
    // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 3, childAspectRatio: 1.0),
    // padding: EdgeInsets.zero,
    // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //     maxCrossAxisExtent: 120.0, childAspectRatio: 2.0),
    // children: <Widget>[
    //   Icon(Icons.ac_unit),
    //   Icon(Icons.airport_shuttle),
    //   Icon(Icons.all_inclusive),
    //   Icon(Icons.beach_access),
    //   Icon(Icons.cake),
    //   Icon(Icons.free_breakfast)
    // ],
    // )
    // )
    // child: SingleChildScrollViewTestRoute()
    // );
    // );
    //     child: DecoratedBox(
    //   decoration: BoxDecoration(color: Colors.red),
    //   child: ClipRect(
    //       clipper: MyClipper(), //使用自定义的clipper
    //       child: avatar),
    // )
    // child: ClipTestRoute()
    //     child: Column(
    //   children: <Widget>[
    //     Padding(
    //       padding: EdgeInsets.all(20.0),
    //       child: DecoratedBox(
    //         decoration: BoxDecoration(color: Colors.orange),
    //         child: Text("Hello world!"),
    //       ),
    //     ),
    //     DecoratedBox(
    //       decoration: BoxDecoration(color: Colors.orange),
    //       child: Padding(
    //         padding: const EdgeInsets.all(20.0),
    //         child: Text("Hello world!"),
    //       ),
    //     ),
    //     // Container(
    //     //   margin: EdgeInsets.all(20.0), //容器外补白
    //     //   color: Colors.orange,
    //     //   child: Text("Hello world!"),
    //     // ),
    //     // Container(
    //     //   padding: EdgeInsets.all(20.0), //容器内补白
    //     //   color: Colors.orange,
    //     //   child: Text("Hello world!"),
    //     // ),
    //   ],
    // )

    //     child: Container(
    //   margin: EdgeInsets.only(top: 50.0, left: 120.0),
    //   constraints:
    //       BoxConstraints.tightFor(width: 200.0, height: 150.0), //卡片大小
    //   decoration: BoxDecoration(
    //     //背景装饰
    //     gradient: RadialGradient(
    //       //背景径向渐变
    //       colors: [Colors.red, Colors.orange],
    //       center: Alignment.topLeft,
    //       radius: .98,
    //     ),
    //     boxShadow: [
    //       //卡片阴影
    //       BoxShadow(
    //         color: Colors.black54,
    //         offset: Offset(2.0, 2.0),
    //         blurRadius: 4.0,
    //       )
    //     ],
    //   ),
    //   transform: Matrix4.rotationZ(.2), //卡片倾斜变换
    //   alignment: Alignment.center, //卡片内文字居中
    //   child: Text(
    //     //卡片文字
    //     "5.20", style: TextStyle(color: Colors.white, fontSize: 40.0),
    //   ),
    // )
    //     child: Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: <Widget>[
    //     DecoratedBox(
    //       decoration: BoxDecoration(color: Colors.red),
    //       //将Transform.rotate换成RotatedBox
    //       child: RotatedBox(
    //         quarterTurns: 1, //旋转90度(1/4圈)
    //         child: Text("Hello world"),
    //       ),
    //     ),
    //     Text(
    //       "你好",
    //       style: TextStyle(color: Colors.green, fontSize: 18.0),
    //     )
    //   ],
    // )
    //     child: Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: <Widget>[
    //     DecoratedBox(
    //         decoration: BoxDecoration(color: Colors.red),
    //         child: Transform.scale(scale: 1.5, child: Text("Hello world"))),
    //     Text(
    //       "你好",
    //       style: TextStyle(color: Colors.green, fontSize: 18.0),
    //     )
    //   ],
    // )
    // child: DecoratedBox(
    //     decoration: BoxDecoration(color: Colors.red),
    //     child: Transform.scale(
    //         scale: 1.5, //放大到1.5倍
    //         child: Text("Hello world")))
    //     child: DecoratedBox(
    //   decoration: BoxDecoration(color: Colors.red),
    //   child: Transform.rotate(
    //     //旋转90度
    //     angle: math.pi / 2,
    //     child: Text("Hello world"),
    //   ),
    // )
    //     child: DecoratedBox(
    //   decoration: BoxDecoration(color: Colors.red),
    //   //默认原点为左上角，左移20像素，向上平移5像素
    //   child: Transform.translate(
    //     offset: Offset(-20.0, -5.0),
    //     child: Text("Hello world"),
    //   ),
    // )
    //     child: Container(
    //   color: Colors.black,
    //   child: Transform(
    //     alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
    //     transform: Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
    //     child: Container(
    //       padding: const EdgeInsets.all(8.0),
    //       color: Colors.deepOrange,
    //       child: const Text('Apartment for rent!'),
    //     ),
    //   ),
    // )
    // child: DecoratedBox(
    //     decoration: BoxDecoration(
    //         gradient: LinearGradient(
    //             colors: [Colors.red, Colors.orange.shade700]), //背景渐变
    //         borderRadius: BorderRadius.circular(3.0), //3像素圆角
    //         boxShadow: [
    //           //阴影
    //           BoxShadow(
    //               color: Colors.black54,
    //               offset: Offset(2.0, 2.0),
    //               blurRadius: 4.0)
    //         ]),
    //     child: Padding(
    //       padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
    //       child: Text(
    //         "Login",
    //         style: TextStyle(color: Colors.white),
    //       ),
    //     ))
    // child:Gradient_Property_Widget()
    //// PaddingTestRoute()
    // LayoutBuilderRoute()
    // child: FlexLayoutTestRoute()
    // child: CenterColumnRoute()
//           // child: ProgressRoute()

    // child: Column(
//           // mainAxisAlignment: MainAxisAlignment.center,
    // children: <Widget>[

    // body: Container(
    //   height: 120.0,
    //   width: 120.0,
    //   color: Colors.blue.shade50,
    //   child: Align(
    //     alignment: Alignment.topRight,
    //     child: FlutterLogo(
    //       size: 60,
    //     ),
    //   ),
    // )
    // child: ConstrainedBox(
    //   constraints: BoxConstraints.expand(),
    //   child: Stack(
    //     alignment: Alignment.center,
    //     fit: StackFit.expand, //未定位widget占满Stack整个空间
    //     children: <Widget>[
    //       Positioned(
    //         left: 18.0,
    //         child: Text("I am Jack"),
    //       ),
    //       Container(
    //         child:
    //             Text("Hello world", style: TextStyle(color: Colors.white)),
    //         color: Colors.red,
    //       ),
    //       Positioned(
    //         top: 18.0,
    //         child: Text("Your friend"),
    //       )
    //     ],
    //   ),
    // ),
    // Flow(
    //   delegate: TestFlowDelegate(margin: EdgeInsets.all(10.0)),
    //   children: <Widget>[
    //     Container(
    //       width: 80.0,
    //       height: 80.0,
    //       color: Colors.red,
    //     ),
    //     Container(
    //       width: 80.0,
    //       height: 80.0,
    //       color: Colors.green,
    //     ),
    //     Container(
    //       width: 80.0,
    //       height: 80.0,
    //       color: Colors.blue,
    //     ),
    //     Container(
    //       width: 80.0,
    //       height: 80.0,
    //       color: Colors.yellow,
    //     ),
    //     Container(
    //       width: 80.0,
    //       height: 80.0,
    //       color: Colors.brown,
    //     ),
    //     Container(
    //       width: 80.0,
    //       height: 80.0,
    //       color: Colors.purple,
    //     ),
    //   ],
    // )

    //   Wrap(
    //     spacing: 8.0, // 主轴(水平)方向间距
    //     runSpacing: 4.0, // 纵轴（垂直）方向间距
    //     alignment: WrapAlignment.center, //沿主轴方向居中
    //     children: <Widget>[
    //       Chip(
    //         avatar: CircleAvatar(
    //             backgroundColor: Colors.blue, child: Text('A')),
    //         label: Text('Hamilton'),
    //       ),
    //       Chip(
    //         avatar: CircleAvatar(
    //             backgroundColor: Colors.blue, child: Text('M')),
    //         label: Text('Lafayette'),
    //       ),
    //       Chip(
    //         avatar: CircleAvatar(
    //             backgroundColor: Colors.blue, child: Text('H')),
    //         label: Text('Mulligan'),
    //       ),
    //       Chip(
    //         avatar: CircleAvatar(
    //             backgroundColor: Colors.blue, child: Text('J')),
    //         label: Text('Laurens'),
    //       ),
    //     ],
    //   )
//           // ConstrainedBox(
//           //     constraints:
//           //         BoxConstraints(minWidth: 60.0, minHeight: 100.0), //父
//           //     child: UnconstrainedBox(
//           //       //“去除”父级限制
//           //       child: ConstrainedBox(
//           //         constraints:
//           //             BoxConstraints(minWidth: 90.0, minHeight: 20.0), //子
//           //         child: redBox,
//           //       ),
//           //     ))
//           // ConstrainedBox(
//           //     constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
//           //     child: ConstrainedBox(
//           //       constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
//           //       child: redBox,
//           //     ))
//           // ConstrainedBox(
//           //   constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0), //父
//           //   child: ConstrainedBox(
//           //     constraints:
//           //         BoxConstraints(minWidth: 90.0, minHeight: 20.0), //子
//           //     child: redBox,
//           //   ),
//           // )
//           // ConstrainedBox(
//           //   constraints: BoxConstraints(
//           //       minWidth: double.infinity, //宽度尽可能大
//           //       minHeight: 50.0 //最小高度为50像素
//           //       ),
//           //   child: Container(
//           //     height: 5.0,
//           //     child: redBox,
//           //   ),
//           // )
//           // SizedBox(
//           //   height: 3,
//           //   child: LinearProgressIndicator(
//           //     backgroundColor: Colors.grey[200],
//           //     valueColor: AlwaysStoppedAnimation(Colors.blue),
//           //     value: .5,
//           //   ),
//           // ),
//           // SizedBox(
//           //   height: 100,
//           //   width: 130,
//           //   child: CircularProgressIndicator(
//           //     backgroundColor: Colors.grey[200],
//           //     valueColor: AlwaysStoppedAnimation(Colors.blue),
//           //     value: .7,
//           //   ),
//           // ),
//           // CircularProgressIndicator(
//           //   backgroundColor: Colors.grey[200],
//           //   valueColor: AlwaysStoppedAnimation(Colors.blue),
//           // ),
//           // CircularProgressIndicator(
//           //   backgroundColor: Colors.grey[200],
//           //   valueColor: AlwaysStoppedAnimation(Colors.blue),
//           //   value: .5,
//           // ),
//           // LinearProgressIndicator(
//           //   backgroundColor: Colors.grey[200],
//           //   valueColor: AlwaysStoppedAnimation(Colors.blue),
//           // ),
//           // LinearProgressIndicator(
//           //   backgroundColor: Colors.grey[200],
//           //   valueColor: AlwaysStoppedAnimation(Colors.blue),
//           //   value: .5,
//           // )
//           // Text('You have pushed the button this many times: '),
//           // Text(
//           //   '$_counter',
//           //   style: Theme.of(context).textTheme.headline4,
//           // ),
//           // TextField(
//           //   autofocus: true,
//           //   decoration: InputDecoration(
//           //       labelText: "用户名",
//           //       hintText: "用户名或邮箱",
//           //       prefixIcon: Icon(Icons.person)),
//           // ),
//           // TextField(
//           //   decoration: InputDecoration(
//           //       labelText: "密码",
//           //       hintText: "您的登录密码",
//           //       prefixIcon: Icon(Icons.lock)),
//           //   obscureText: true,
//           // ),
//           // TextButton(
//           //   child: Text("open new route",
//           //       style: TextStyle(
//           //           color: Colors.blue,
//           //           fontSize: 18.0,
//           //           height: 1.2,
//           //           fontFamily: "Courier",
//           //           background: Paint()..color = Colors.yellow,
//           //           decoration: TextDecoration.underline,
//           //           decorationStyle: TextDecorationStyle.dashed)),
//           //   onPressed: () {
//           //     Navigator.pushNamed(context, "new_page");

//           //     //导航到新路由
//           //     // Navigator.push(
//           //     //   context,
//           //     //   MaterialPageRoute(builder: (context) {
//           //     //     return NewRoute();
//           //     //   }),
//           //     // );
//           //   },
//           // ),
//           // RandomWordsWidget(),
//           // ],
// //           child:Column(
// //   children: <Widget>[
// //     UnconstrainedBox(
// //       alignment: Alignment.topLeft,
// //       child: Padding(
// //         padding: const EdgeInsets.all(16),
// //         child: Row(children: [Text('xx' * 30)]),
// //       ),
// //     ),
// //  ]
// //         ),
//           // child:Column(
//           // //测试Row对齐方式，排除Column默认居中对齐的干扰
//           //       crossAxisAlignment: CrossAxisAlignment.start,
//           //       children: <Widget>[
//           //         Row(
//           //           mainAxisAlignment: MainAxisAlignment.center,
//           //           children: <Widget>[
//           //             Text(" hello world "),
//           //             Text(" I am Jack "),
//           //           ],
//           //         ),
//           //         Row(
//           //           mainAxisSize: MainAxisSize.min,
//           //           mainAxisAlignment: MainAxisAlignment.center,
//           //           children: <Widget>[
//           //             Text(" hello world "),
//           //             Text(" I am Jack "),
//           //           ],
//           //         ),
//           //         Row(
//           //           mainAxisAlignment: MainAxisAlignment.end,
//           //           textDirection: TextDirection.rtl,
//           //           children: <Widget>[
//           //             Text(" hello world "),
//           //             Text(" I am Jack "),
//           //           ],
//           //         ),
//           //         Row(
//           //           crossAxisAlignment: CrossAxisAlignment.start,
//           //           verticalDirection: VerticalDirection.up,
//           //           children: <Widget>[
//           //             Text(" hello world ", style: TextStyle(fontSize: 30.0),),
//           //             Text(" I am Jack "),
//           //           ],
//           //         ),
    // ],
//           //     ),
//           ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//       // This trailing comma makes auto-formatting nicer for build methods.
    // ),
    //       ),
    // );
    // );
  }
  // return Container(
  //   color: Colors.green,
  //   child: Padding(
  //     padding: const EdgeInsets.all(16.0),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
  //       children: <Widget>[
  //         Expanded(
  //           child: Container(
  //             color: Colors.red,
  //             child: Column(
  //               mainAxisSize: MainAxisSize.max, //无效，内层Colum高度为实际高度
  //               children: <Widget>[
  //                 Text("hello world "),
  //                 Text("I am Jack "),
  //               ],
  //             ),
  //           ),
  //         )
  //       ],
  //     ),
  //   ),
  // );

  // Widget wContainer(BoxFit boxFit) {
  //   return ClipRect(
  //       child: Container(
  //     width: 50,
  //     height: 50,
  //     color: Colors.red,
  //     child: FittedBox(
  //       fit: boxFit,
  //       // 子容器超过父容器大小
  //       child: Container(width: 60, height: 70, color: Colors.blue),
  //     ),
  //   ));
  // }
  // Widget wRow(String text) {
  //   Widget child = Text(text);
  //   child = Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //     children: [child, child, child],
  //   );
  //   return child;
  // }
}
