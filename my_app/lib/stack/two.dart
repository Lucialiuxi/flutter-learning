import 'package:flutter/material.dart';

// 配合Align组件 实现多个元素定位
class StackExample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.cyanAccent,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Icon(Icons.ac_unit, color: Colors.black),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(Icons.backspace, color: Colors.white),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Icon(Icons.cached, color: Colors.red),
            ),
            Align(
              alignment: Alignment(-1, -1),
              child: Icon(Icons.dashboard, color: Colors.yellow),
            ),
            Align(
              alignment: Alignment(0, -0.5),
              child: Icon(Icons.edit, color: Colors.yellow),
            ),
            Align(
              alignment: Alignment(0.5, -0.5),
              child: Icon(Icons.face, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
