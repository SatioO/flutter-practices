import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black54,
          ),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.black54),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.fire,
            color: Colors.black54,
          ),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.black54),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.subscriptions,
            color: Colors.black54,
          ),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.black54),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.email,
            color: Colors.black54,
          ),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.black54),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.folder,
            color: Colors.black54,
          ),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.black54),
          ),
        ),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
