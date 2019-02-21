import 'package:myapp/widgets/stateful/books/books.dart';
import 'package:myapp/widgets/stateful/paint/paint.dart';
import 'package:myapp/widgets/stateful/posts/posts.dart';
import "package:myapp/widgets/stateful/home/index.dart";

var routes = {
  "/": (context) => PaintExperiment(),
  "/home": (context) => Home(),
  "/posts": (context) => Posts(),
  "/books": (context) => Books()
};
