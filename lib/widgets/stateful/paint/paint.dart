import 'package:flutter/material.dart';
// import 'package:myapp/widgets/stateless/square.dart';

class BackgroundPaint extends CustomPainter {
  final Color color;

  BackgroundPaint(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;

    Paint paint = Paint();

    Path background = Path();
    background.addRect(Rect.fromLTRB(0.0, 0.0, width, height));
    paint.color = Colors.white;
    canvas.drawPath(background, paint);

    Path shape = Path();
    // Start from x -> 0%, to y -> 90% --> (0, 9)
    shape.moveTo(0.0, height * 0.10); // left, top
    // start from x -> 50% to y -> 50% --> (5, 5)
    shape.quadraticBezierTo(
        width * 0.50, height * 0.25, width * 0.5, height * 0.5);
    // x -> 0% , y - 0% --> (10, 0)
    shape.quadraticBezierTo(width * 0.5, height * 0.8, width, height);
    shape.lineTo(0, height);
    paint.color = color;
    canvas.drawPath(shape, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class PaintExperiment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => print("hello"),
        ),
        body: Container());
    // body: CustomPaint(
    //   painter: BackgroundPaint(color),
    //   child: Center(
    //       child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: <Widget>[],
    //   )),
    // ));
  }
}
