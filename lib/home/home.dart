import 'package:flutter/material.dart';
import 'package:myapp/stateless/bottomNavigator.dart';
import 'package:myapp/stateless/headerBody.dart';
import 'package:myapp/stateless/headerTitle.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: HeaderTitle(),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(
                Icons.videocam,
                color: Colors.black54,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(
                Icons.search,
                color: Colors.black54,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(
                Icons.account_circle,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        body: HeaderBody(),
        bottomNavigationBar: BottomNavigator());
  }
}
