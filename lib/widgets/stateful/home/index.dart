import 'package:flutter/material.dart';
import 'package:myapp/widgets/stateless/square.dart';

class FullWidthBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.indigo,
        child: Icon(Icons.developer_mode));
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            // margin: EdgeInsets.all(30),
            // alignment: Alignment.center,
            // width: 700,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 8.0)),
            // child: Column(
            //   // mainAxisAlignment: MainAxisAlignment.spaceBetween, //flex-flow
            //   // // mainAxisSize: MainAxisSize.max,
            //   // crossAxisAlignment: CrossAxisAlignment.start, //justify-content
            //   children: <Widget>[
            //     Square(),
            //     Square(
            //       color: Colors.cyan,
            //     ),
            //     Expanded(flex: 1, child: Square(color: Colors.indigo)) //flex-grow
            //   ],
            // )),
            child: FullWidthBox()));
  }
}
