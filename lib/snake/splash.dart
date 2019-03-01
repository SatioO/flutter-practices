import 'package:flutter/material.dart';
import 'package:myapp/snake/constant.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height - 100;

    return Container(
        color: const Color(0xFFFFFFFF),
        width: width,
        height: height,
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
