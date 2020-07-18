import 'package:flutter/material.dart';

class AspectRatioExample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.0 / 1.0,
      child: Container(
        color: Colors.greenAccent,
      ),
    );
  }
}
