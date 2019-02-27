import 'package:flutter/material.dart';
import "dart:math";

class Loader extends StatefulWidget {
  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> with SingleTickerProviderStateMixin {
  final double radius = 50.0;

  AnimationController controller;

  Animation<double> animation_rotation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation_rotation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: controller, curve: Interval(0.0, 1.0, curve: Curves.linear)));

    controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RotationTransition(
      turns: animation_rotation,
      child: Center(
        child: Container(
            width: 100.0,
            height: 100.0,
            child: Center(
                child: Stack(
              children: <Widget>[
                Dot(radius: radius, color: Colors.black38),
                Transform.translate(
                  offset: Offset(
                      radius * cos(2 * pi / 4), radius * sin(2 * pi / 4)),
                  child: Dot(radius: 10.0, color: Colors.cyan),
                ),
                Transform.translate(
                  offset: Offset(
                      radius * cos(3 * pi / 4), radius * sin(3 * pi / 4)),
                  child: Dot(radius: 10.0, color: Colors.cyan),
                ),
                Transform.translate(
                  offset: Offset(
                      radius * cos(4 * pi / 4), radius * sin(4 * pi / 4)),
                  child: Dot(radius: 10.0, color: Colors.cyan),
                ),
                Transform.translate(
                  offset: Offset(
                      radius * cos(5 * pi / 4), radius * sin(5 * pi / 4)),
                  child: Dot(radius: 10.0, color: Colors.cyan),
                ),
                Transform.translate(
                  offset: Offset(
                      radius * cos(6 * pi / 4), radius * sin(6 * pi / 4)),
                  child: Dot(radius: 10.0, color: Colors.cyan),
                ),
                Transform.translate(
                  offset: Offset(
                      radius * cos(7 * pi / 4), radius * sin(7 * pi / 4)),
                  child: Dot(radius: 10.0, color: Colors.cyan),
                ),
                Transform.translate(
                  offset: Offset(
                      radius * cos(8 * pi / 4), radius * sin(8 * pi / 4)),
                  child: Dot(radius: 10.0, color: Colors.cyan),
                ),
                Transform.translate(
                  offset: Offset(
                      radius * cos(9 * pi / 4), radius * sin(9 * pi / 4)),
                  child: Dot(radius: 10.0, color: Colors.cyan),
                )
              ],
            ))),
      ),
    ));
  }
}

class Dot extends StatelessWidget {
  final Color color;
  final double radius;

  Dot({this.color = Colors.blue, this.radius = 10.0});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: radius,
            height: radius,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle)));
  }
}
