import 'package:flutter/material.dart';

class Gradient_Property_Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.purple,
            gradient: LinearGradient(
              colors: [Colors.red, Colors.cyan],
            )),
        child: FlutterLogo(
          size: 200.0,
        ),
      ),
    );
  }
}
