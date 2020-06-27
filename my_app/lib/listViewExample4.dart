import 'package:flutter/material.dart';

class ListViewExample4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180,
        child: ListView(
          scrollDirection: Axis.horizontal, // 滚动方向, 水平列表ListView高度自适应；垂直列表高度子适应
          children: <Widget>[
            Container(
              width: 180.0,
              color: Colors.deepOrange,
              child: ListView(
                children: <Widget>[
                  Image.network('https://www.itying.com/images/flutter/1.png'),
                  Text('我是一个文本'),
                ]
              ),
            ),
            Container(
              width: 180.0,
              color: Colors.deepPurpleAccent,
            ),
            Container(
              width: 180.0,
              color: Colors.lightBlueAccent,
            ),
            Container(
              width: 180.0,
              color: Colors.limeAccent,
            )
          ],
        ));
  }
}
