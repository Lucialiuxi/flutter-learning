import 'package:flutter/material.dart';
import 'routes/Routes.dart';

void main() {
  runApp(RouteApp());
}

// 跳转失败， 还需要找原因
class RouteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial',
      initialRoute: '/', //初始化要加载的路由
      onGenerateRoute: onGenerateRoute,
    );
  }
}
