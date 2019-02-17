import 'package:flutter/material.dart';
import 'package:myapp/models/video.dart';
import 'package:myapp/widgets/stateless/bottomNavigator.dart';
import 'package:myapp/widgets/stateless/headerBody.dart';
import 'package:myapp/widgets/stateless/headerTitle.dart';
import 'package:myapp/widgets/stateless/navigationIcon.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHome> {
  var videos = [
    VideoItemModel(
        "Gordon Ramsay Cooked For Vladimir Putin",
        "The Late Show with Stephen Colbert\n1.1M views.2 weeks ago",
        "assets/youtube_one.jpg"),
    VideoItemModel("Hailee Steinfeld, Alesso - Let Me Go",
        "Hailee Steinfeld\n57M views.8 months ago", "assets/youtube_two.jpg"),
    VideoItemModel("Charlie Puth - Look At Me Now",
        "Lyricwood\n4.7M views.4 months ago", "assets/youtube_three.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: HeaderTitle("Accion Labs"),
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
