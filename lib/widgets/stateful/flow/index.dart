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
      print(response);
    } catch (err) {
      print("Error: $err");
    }
  }

  Future<int> getData() {
    // return Future.value(1); //promise.resolve(1)
    return Future.error("1"); // Promise.reject(1)
  }

  _onIncrement() {
    setState(() {
      _counter = _counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChildFlow(counter: _counter, onIncrement: _onIncrement);
  }
}

class ChildFlow extends StatelessWidget {
  final int counter;
  final onIncrement;

  ChildFlow({Key key, this.counter, this.onIncrement}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text("Counter: $counter"),
        RaisedButton(
          child: Text("Increment"),
          onPressed: () => this.onIncrement(),
        )
      ],
    ));
  }
}
