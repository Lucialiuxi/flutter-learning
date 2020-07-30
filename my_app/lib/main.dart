import 'package:flutter/material.dart';
// import 'tutorialHome.dart';
// import 'customApp.dart';
// import './state/index.dart';
// import './bottomNavigationBar/two.dart';
// import './bottomNavigationBar/tabs.dart';
import './routes/one.dart';
import './routes1/pagesInBody/search.dart';
import './routes1/pagesInBody/settingItem.dart';

void main() {
  runApp(RouteApp());
}

class RouteApp extends StatelessWidget {
  final routes = {
    '/search': (context) => SearchPageInBody(),
    '/settingItem': (context, {arguments}) => SettingItem(arguments: arguments),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial',
      // home: TutorialHome(),
      // home: CustomApp(),
      // home: HomeAboutState(),
      // home: BottomNavigationBar1(),
      // home: Tabs(),
      home: PageJumpOne(),
      onGenerateRoute: (RouteSettings settings) {
        final String name = settings.name;
        final Function pageContentBuilder = this.routes[name];
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
      },
    );
  }
}
