import "package:flutter/material.dart";
import "package:flutter/foundation.dart";
import 'package:myapp/widgets/stateful/books/books.dart';

class NavigationIcons extends StatelessWidget {
  NavigationIcons({@required this.icon, this.color = Colors.black54});

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Books()),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Icon(
            icon,
            color: color,
          ),
        ));
  }
}
