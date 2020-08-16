import 'package:flutter/material.dart';
import 'routesExample/one.dart';
import 'routesHaveName//pagesInBody/search.dart';
import 'routesHaveName//pagesInBody/settingItem.dart';

void main() {
  runApp(RouteApp());
}

class RouteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial',
      home: PageJumpOne(),
      routes: {
        '/search': (context) => SearchPageInBody(),
        '/settingItem': (context, {arguments}) =>
            SettingItem(arguments: arguments),
      },
    );
  }
}
