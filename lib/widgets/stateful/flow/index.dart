import 'package:flutter/material.dart';
import 'dart:async';

class MasterFlow extends StatefulWidget {
  @override
  _MasterFlowState createState() => _MasterFlowState();
}

class _MasterFlowState extends State<MasterFlow> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    first();
    second();
  }

  first() {
    getData()
        .then((res) => print(res))
        .catchError((err) => print("Error: $err")); // `${err}`
  }

  second() async {
    try {
      final response = await getData();
    } catch (err) {
      print("Error: $err");
    }
  }

  Future<int> getData() {
    // return Future.value(1); //promise.resolve(1)
    return Future.error("1"); // Promise.reject(1)
  }

  @override
  Widget build(BuildContext context) {
    return ChildFlow(_counter);
  }
}

class ChildFlow extends StatelessWidget {
  final int _counter;

  ChildFlow(this._counter);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
