import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderTitle extends StatelessWidget {
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
            "YouTube",
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
