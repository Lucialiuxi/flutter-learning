import 'package:flutter/material.dart';

class AspectRatioExample1 extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Container(
      width: 400,
      child: AspectRatio(
        aspectRatio: 2.0 / 1.0, // 宽高比
        child: Container(
          color: Colors.deepOrange,
        ),
      ),
    );
  }
}
