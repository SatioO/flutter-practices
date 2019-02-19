import 'package:flutter/material.dart';
import 'package:myapp/widgets/stateful/books/books.dart';
import 'package:myapp/widgets/stateful/posts/posts.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Youtube",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {"/": (context) => Posts(), "/books": (context) => Books()},
      debugShowCheckedModeBanner: false,
    );
  }
}
