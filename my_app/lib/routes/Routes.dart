import 'package:flutter/material.dart';
import '../routesHaveName/pagesInBody/search.dart';
import '../routesHaveName/pagesInBody/settingItem.dart';
import '../routesHaveName/one.dart';

final routes = {
  '/': (context) => PageJumpOne(),
  '/search': (context) => SearchPageInBody(),
  '/settingItem': (context, {arguments}) => SettingItem(arguments: arguments),
};

var onGenerateRoute = (RouteSettings settings) {
  print('RouteSettings----');
  print(RouteSettings);
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(
          context,
          arguments: settings.arguments,
        ),
      );
      print('11111111---');
      print(route);
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context),
      );
      print('2222222---');
      print(route);
      return route;
    }
  }
  return MaterialPageRoute(
    builder: (context) => Scaffold(
      body: Center(child: Text('No route defined for ${settings.name}')),
    ),
  );
};
