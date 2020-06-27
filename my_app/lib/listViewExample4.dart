import 'package:flutter/material.dart';

class ListViewExample4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal, // 滚动方向
      children: <Widget>[
        Container(
          width: 180.0,
          height: 180.0,
          color: Colors.deepOrange,
        ),
        Container(
          width: 180.0,
          height: 180.0,
          color: Colors.deepPurpleAccent,
        ),
        Container(
          width: 180.0,
          height: 180.0,
          color: Colors.lightBlueAccent,
        ),
        Container(
          width: 180.0,
          height: 180.0,
          color: Colors.limeAccent,
        )
    ],);
  }
  
}