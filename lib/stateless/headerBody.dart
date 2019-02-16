import 'package:flutter/material.dart';

class HeaderBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Column(children: <Widget>[]);
            },
          )
        ],
      ),
    );
  }
}
