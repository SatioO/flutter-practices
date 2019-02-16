import 'package:flutter/material.dart';
import 'package:myapp/home/home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Youtube",
      home: new MyHome(),
    );
  }
}
