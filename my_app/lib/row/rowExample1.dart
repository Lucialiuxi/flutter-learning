import 'package:flutter/material.dart';

class RowExample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      width: 400.0,
      color: Colors.grey,
      child: Row(
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

class IconContaniner extends StatelessWidget {
  double size = 32.0;
  Color color = Colors.yellow;
  Color backGroundColor = Colors.red;
  IconData icon;

  IconContaniner(
    this.icon, {
    //可选命名参数
    this.size,
    this.color,
    this.backGroundColor,
  }); //构造函数

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: this.backGroundColor,
      child: Center(
        child: Icon(
          this.icon,
          size: this.size,
          color: this.color,
        ),
      ),
    );
  }
}
