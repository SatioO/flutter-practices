import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatefulWidget {
  Header({this.title});

  final String title;

  @override
  HeaderTitle createState() => new HeaderTitle();
}

class HeaderTitle extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          FontAwesomeIcons.youtube,
          color: Colors.red,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            widget.title,
            style: TextStyle(
                color: Colors.black,
                letterSpacing: -1.0,
                fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}
