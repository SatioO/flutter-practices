import 'package:flutter/material.dart';
import 'package:myapp/widgets/stateless/bottomNavigator.dart';
import 'package:myapp/widgets/stateless/headerBody.dart';
import 'package:myapp/widgets/stateless/headerTitle.dart';
import 'package:myapp/widgets/stateless/navigationIcon.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: HeaderTitle("Youtube"),
          actions: <Widget>[
            NavigationIcons(icon: Icons.videocam),
            NavigationIcons(icon: Icons.search),
            NavigationIcons(icon: Icons.account_circle),
          ],
        ),
        body: HeaderBody(),
        bottomNavigationBar: BottomNavigator());
  }
}
