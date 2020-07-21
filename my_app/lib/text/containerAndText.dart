import 'package:flutter/material.dart';

class ContainerAndText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Container和Text测试 Container和Text测试 Container和Text测试 Container和Text测试',
          textAlign: TextAlign.right,
          overflow: TextOverflow.ellipsis,
          maxLines: 1, // 最大行数
          textScaleFactor: 2, // 字体缩放
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
            decorationColor: Colors.cyan,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 4.0,
            )
          ),
        height: 300.0,
        width: 300.0,
        alignment: Alignment.bottomLeft,
        // padding: EdgeInsets.all(40),
        // padding: EdgeInsets.fromLTRB(10, 30, 50, 70),
        // transform: Matrix4.translationValues(0, 0, 100),
        // transform: Matrix4.rotationX(20.0),
        // transform: Matrix4.rotationY(30.0),
        // transform: Matrix4.rotationZ(30.0), // 选装
        // transform: Matrix4.skew(10, 0), // 倾斜
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: Colors.blueAccent, //  背景色
          border: Border.all( // 边框
            color:Colors.blueAccent,
            width: 2.0,
          ),
          ),
        ),
    );
  }
  
}