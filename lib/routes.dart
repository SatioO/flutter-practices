import 'package:myapp/widgets/stateful/books/books.dart';
import 'package:myapp/widgets/stateful/flow/index.dart';
import 'package:myapp/widgets/stateful/paint/paint.dart';
import 'package:myapp/widgets/stateful/posts/posts.dart';
import "package:myapp/widgets/stateful/home/index.dart";

var routes = {
  "/": (context) => MasterFlow(),
  "/paint": (context) => PaintExperiment(),
  "/home": (context) => Home(),
  "/posts": (context) => Posts(),
  "/books": (context) => Books()
};
