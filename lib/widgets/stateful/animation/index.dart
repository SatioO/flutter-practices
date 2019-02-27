import 'package:flutter/material.dart';

class AnimatedCard extends StatefulWidget {
  final Widget child;

  AnimatedCard({Key key, this.child}) : super(key: key);

  _AnimatedCardState createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    animation = Tween<double>(begin: 0.2, end: 1.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.linear));

    controller.addListener(() {
      setState(() {});
    });

    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Opacity(
      opacity: animation.value,
      child: Center(
          child: Container(
        width: animation.value * 50,
        height: animation.value * 50,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
      )),
    ));
  }
}
