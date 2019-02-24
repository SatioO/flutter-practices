import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import "dart:async";
import "dart:convert";

class Book {
  int id;
  String title;
  String thumbnailUrl;

  Book({this.id, this.title, this.thumbnailUrl});
}

class Fetch extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Fetch> {
  Future<List<Book>> _getBooks() async {
    final response =
        await http.get("https://jsonplaceholder.typicode.com/photos");

    final books = json.decode(response.body).cast<Map<String, dynamic>>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fetch Example'),
        ),
        body: FutureBuilder(
            future: _getBooks(),
            builder: (BuildContext builder, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(title: Text(snapshot.data[index].name));
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }
}
