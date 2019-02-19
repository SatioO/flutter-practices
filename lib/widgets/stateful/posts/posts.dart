import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:myapp/models/post.dart';
import 'package:myapp/widgets/stateless/navigationIcon.dart';
import 'package:myapp/widgets/stateless/postList.dart';
import 'package:myapp/widgets/stateless/headerTitle.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: <Widget>[
            NavigationIcons(
              icon: Icons.videocam,
            )
          ],
          title: HeaderTitle("AccionLabs"),
        ),
        body: Body());
  }
}

Future<List<Post>> fetchPost() async {
  final response = await http.get('https://jsonplaceholder.typicode.com/posts');

  if (response.statusCode == 200) {
    // Use the compute function to run parsePhotos in a separate isolate
    return compute(parsePosts, response.body);
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
  }
}

class Body extends StatefulWidget {
  @override
  BodyState createState() => new BodyState();
}

class BodyState extends State<Body> {
  Future<List<Post>> post;

  @override
  void initState() {
    super.initState();
    post = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    // By default, show a loading spinner
    return Center(
        child: FutureBuilder<List<Post>>(
            future: post,
            builder: (context, snapshot) {
              if (snapshot.hasError) print(snapshot.error);

              return snapshot.hasData
                  ? PostList(posts: snapshot.data)
                  : Center(child: CircularProgressIndicator());
            }));
  }
}
