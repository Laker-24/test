import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    MaterialApp(
      home: AppHome(),
    ),
  );
}

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Center(
        child: TextButton(
          onPressed: () {
            // debugDumpApp();
            // debugDumpRenderTree();
            // debugDumpLayerTree();
            // debugDumpSemanticsTree();
          },
          child: Text('Dump App'),
        ),
      ),
    );
  }
}
