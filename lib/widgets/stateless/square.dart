import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final Color color;
  final double size;

  Square({this.color = Colors.red, this.size = 200.0});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size, height: size, color: color, child: Icon(Icons.flash_auto));
  }
}
