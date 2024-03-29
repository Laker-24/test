import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:work/http/MyDio.dart';
import 'package:work/page/forgetpwdpage.dart';
import 'package:work/page/loginpage.dart';
import 'package:work/page/registerpage.dart';
import 'package:work/page/verifypage.dart';
import 'const/pageconst.dart';
import 'model/TelResponse.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await BaseCache.preInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: PageConst.login,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        PageConst.login: (context) => loginpage(),
        PageConst.register: (context) => registerpage(),
        PageConst.verify: (context) => verifypage(),
        PageConst.fpwd:(context) => forgetpwdpage(),
        // "/": (context) => MyHomePage(title: 'Flutter Demo Home Page'),
      },
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // BaseCache baseCache = BaseCache.getInstance();
    // baseCache.setInt("count",)

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, PageConst.login);
          },
          child: Text("newpage"),
        ),
      ),
    );
    // floatingActionButton: FloatingActionButton(
    //   onPressed: _incrementCounter,
    //   tooltip: 'Increment',
    //   child: const Icon(Icons.add),
    // ), // This trailing comma makes auto-formatting nicer for build methods.
  }
}
