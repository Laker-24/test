import 'package:flutter/material.dart';

class EchoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Echoroute"),
      ),
      body: Center(
        child: Text("This is Echo route"),
      ),
    );
    //获取路由参数
    var args = ModalRoute.of(context)!.settings.arguments;
    //...省略无关代码
  }
}
