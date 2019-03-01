import 'package:flutter/material.dart';
import 'package:myapp/snake/constant.dart';

class Piece extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: PIECE_SIZE,
      height: PIECE_SIZE,
      decoration: new BoxDecoration(
          color: const Color(0xFF0080FF),
          border: new Border.all(color: const Color(0xFFFFFFFF)),
          borderRadius: BorderRadius.circular(PIECE_SIZE)),
    );
  }
}
