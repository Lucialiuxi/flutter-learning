import 'package:flutter/material.dart';

// 单个组件定位
class StackExample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        // alignment: Alignment.center,
        // alignment: Alignment.bottomCenter,
        // alignment: Alignment.bottomLeft,
        // alignment: Alignment(1, 1), // bottomRight
        // alignment: Alignment(0, 0), // center
        // alignment: Alignment(0.3, 0.3), // 自定义 两个参数都是0～1之间的浮点数
        alignment: Alignment(-1, 0.3), // 自定义
        children: <Widget>[
          Container(
            color: Colors.green,
            height: 400,
            width: 200,
          ),
          Text(
            '我是用来测试定位的文字',
            style: TextStyle(color: Colors.white, fontSize: 14),
          )
        ],
      ),
    );
  }
}
