import 'package:flutter/material.dart';
import 'package:myapp/snake/board.dart';

class Snake extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: const Color(0xFF000000),
        body: new Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: new Board(),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
