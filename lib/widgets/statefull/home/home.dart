import 'package:flutter/material.dart';
import 'package:myapp/models/video.dart';
import 'package:myapp/widgets/stateless/bottomNavigator.dart';
import 'package:myapp/widgets/stateless/headerBody.dart';
import 'package:myapp/widgets/stateless/headerTitle.dart';

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
          title: Header(title: "Youtube"),
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
