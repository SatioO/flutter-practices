import "package:flutter/material.dart";

class Practice extends StatelessWidget {
  final int counter;
  Practice(this.counter);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Practice1 extends StatelessWidget {
  int pass = 10;
  @override
  Widget build(BuildContext context) {
    return Practice(pass);
  }
}
