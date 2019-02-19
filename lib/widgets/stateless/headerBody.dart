import 'package:flutter/material.dart';
import 'package:myapp/models/video.dart';

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

class HeaderBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: videos.length,
      itemBuilder: (BuildContext context, int index) {
        return new ListTile(
          leading: Icon(Icons.video_label),
          title: new Text(
            videos[index].title,
          ),
          subtitle: new Text(videos[index].publisher),
        );
      },
    );
  }
}
