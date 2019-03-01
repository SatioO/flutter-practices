import 'package:flutter/material.dart';
import 'package:myapp/snake/constant.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xFFFFFFFF),
        width: BOARD_SIZE,
        height: BOARD_SIZE,
        padding: const EdgeInsets.all(TEXT_PADDING),
        child: Center(
          child: Text("Tap to start the Game!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: const Color(0xFF50C878),
                  fontSize: 18.0,
                  decoration: TextDecoration.none)),
        ));
  }
}
