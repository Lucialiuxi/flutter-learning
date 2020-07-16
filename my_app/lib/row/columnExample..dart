import 'package:flutter/material.dart';
import './iconContaniner.dart';

class ColumnExample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      width: 400.0,
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconContaniner(Icons.ac_unit,
              color: Colors.blue, backGroundColor: Colors.red),
          IconContaniner(Icons.home,
              color: Colors.green, backGroundColor: Colors.pink),
          IconContaniner(Icons.access_alarm,
              color: Colors.yellow, backGroundColor: Colors.cyan),
        ],
      ),
    );
  }
}
