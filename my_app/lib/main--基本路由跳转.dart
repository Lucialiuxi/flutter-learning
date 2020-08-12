import 'package:flutter/material.dart';
import 'routesExample/one.dart';

void main() {
  runApp(RouteApp());
}

class RouteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '路由简单的页面跳转',
      home: PageJumpOne(),
    );
  }
}
