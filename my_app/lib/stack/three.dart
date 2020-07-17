import 'package:flutter/material.dart';

// 配合Positioned组件 实现多个元素定位
class StackExample3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.teal,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              child: Icon(
                Icons.ac_unit,
                color: Colors.black,
                size: 10,
              ),
            ),
            Positioned(
              left: 10,
              top: 220,
              child: Icon(
                Icons.backspace,
                color: Colors.white,
                size: 20,
              ),
            ),
            Positioned(
              top: 30,
              right: 110,
              child: Icon(
                Icons.cached,
                color: Colors.red,
                size: 30,
              ),
            ),
            Positioned(
              right: 20,
              bottom: 240,
              child: Icon(
                Icons.dashboard,
                color: Colors.yellow,
                size: 40,
              ),
            ),
            Positioned(
              left: 122,
              bottom: 0,
              child: Icon(
                Icons.edit,
                color: Colors.yellow,
                size: 15,
              ),
            ),
            Positioned(
              left: 33,
              top: 119,
              child: Icon(
                Icons.face,
                color: Colors.blue,
                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
