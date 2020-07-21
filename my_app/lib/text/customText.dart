
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  // const name({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          '我是第一个自定义组件',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            backgroundColor: Colors.white,
            ),
        ),
        ),
    );
  }
}