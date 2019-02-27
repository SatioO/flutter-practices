import 'package:myapp/widgets/stateful/animation/index.dart';
import 'package:myapp/widgets/stateful/books/books.dart';
import 'package:myapp/widgets/stateful/fetch/index.dart';
import 'package:myapp/widgets/stateful/flow/index.dart';
import 'package:myapp/widgets/stateful/loader/index.dart';
import 'package:myapp/widgets/stateful/paint/paint.dart';
import 'package:myapp/widgets/stateful/posts/posts.dart';
import "package:myapp/widgets/stateful/home/index.dart";

var routes = {
  "/": (context) => AnimatedCard(),
  "/loader": (context) => Loader(),
  "/fetch": (context) => Fetch(),
  "/flow": (context) => MasterFlow(),
  "/paint": (context) => PaintExperiment(),
  "/home": (context) => Home(),
  "/posts": (context) => Posts(),
  "/books": (context) => Books()
};
