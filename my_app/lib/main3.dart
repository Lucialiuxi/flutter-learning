import 'package:flutter/material.dart';
// import 'tutorialHome.dart';
// import 'customApp.dart';
// import './state/index.dart';
// import './bottomNavigationBar/two.dart';
import './bottomNavigationBar/tabs.dart';

void main() {
  runApp(RouteApp());
}

class RouteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial',
      // home: TutorialHome(),
      // home: CustomApp(),
      // home: HomeAboutState(),
      // home: BottomNavigationBar1(),
      home: Tabs(),
    );
  }
}
