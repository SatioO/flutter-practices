import 'package:flutter/material.dart';
import 'package:myapp/snake/board.dart';

class Snake extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF000000),
        body: Center(
          child: Board(),
        ));
  }
}
