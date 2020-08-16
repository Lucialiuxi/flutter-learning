import 'package:flutter/material.dart';
import 'routesExample/one.dart';
import 'routes/Routes.dart';

void main() {
  runApp(RouteApp());
}

class RouteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial',
      home: PageJumpOne(),
      onGenerateRoute: onGenerateRoute,
    );
  }
}
