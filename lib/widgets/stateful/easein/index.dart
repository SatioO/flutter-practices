import 'package:flutter/material.dart';

class EaseInAnimation extends StatefulWidget {
  final Widget child;

  EaseInAnimation({Key key, this.child}) : super(key: key);

  _EaseInAnimationState createState() => _EaseInAnimationState();
}

class _EaseInAnimationState extends State<EaseInAnimation>
    with SingleTickerProviderStateMixin {
  Animation _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn));

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: AnimatedBuilder(
      animation: _animation,
      builder: (context, child) => Transform(
            transform:
                Matrix4.translationValues(_animation.value * width, 0.0, 0.0),
            child: Center(
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration:
                    BoxDecoration(color: Colors.cyan, shape: BoxShape.circle),
              ),
            ),
          ),
    ));
  }
}
