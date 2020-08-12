import 'package:flutter/material.dart';
// import 'tutorialHome.dart';
// import 'customApp.dart';
// import './state/index.dart';
// import './bottomNavigationBar/two.dart';
// import './bottomNavigationBar/tabs.dart';
import './routesHaveName/one.dart';
import './routesHaveName/pagesInBody/search.dart';
import './routesHaveName/pagesInBody/settingItem.dart';
import './routes/Routes.dart';

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
      // home: Tabs(),
      // home: PageJumpOne(),
      initialRoute: '/', // 初始化要加载的路由
      onGenerateRoute: onGenerateRoute,
      routes: routes,
    );
  }
}
