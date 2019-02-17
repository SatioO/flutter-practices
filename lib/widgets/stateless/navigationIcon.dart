import "package:flutter/material.dart";

class NavigationIcons extends StatelessWidget {
  NavigationIcons({@required this.icon, this.color = Colors.black54});

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}
