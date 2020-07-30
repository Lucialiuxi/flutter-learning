import 'package:flutter/material.dart';
import '../routesHaveName/pagesInBody/search.dart';
import '../routesHaveName/pagesInBody/settingItem.dart';

final routes = {
  '/search': (context) => SearchPageInBody(),
  '/settingItem': (context, {arguments}) => SettingItem(arguments: arguments),
};

var onGenerateRoute = (RouteSettings settings) {
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
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context),
      );
      return route;
    }
  }
};
