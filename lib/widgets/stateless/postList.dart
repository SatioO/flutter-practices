import 'package:flutter/material.dart';
import 'package:myapp/models/post.dart';

class PostList extends StatelessWidget {
  final List<Post> posts;
  PostList({Key key, this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(posts[index].title),
          subtitle: Text(posts[index].body),
        );
      });
}
