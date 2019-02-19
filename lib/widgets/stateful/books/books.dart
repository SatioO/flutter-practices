import "package:flutter/material.dart";
import "package:http/http.dart" as http;
import 'package:myapp/models/book.dart';

class Books extends StatefulWidget {
  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {
  Future<List<Book>> fetchData() async {
    final response = await http.get("https://www.googleapis.com/books/v1/volumes?q=http");
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
