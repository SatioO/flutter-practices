import 'package:flutter/material.dart';
import "package:myapp/routes.dart";

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Youtube",
      // showPerformanceOverlay: true,
      // debugShowMaterialGrid: true,
      initialRoute: "/",
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
