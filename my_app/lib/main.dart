import 'package:flutter/material.dart';
import './routesExample1/tab.dart';
import './routesExample1/product.dart';
import './routesExample1/productDetail.dart';
import 'package:my_app/routesExample1/register.dart';
import 'package:my_app/routesExample1/login.dart';

void main() {
  runApp(RouteApp());
}

class RouteApp extends StatelessWidget {
  final _routes = {
    '/': (context) => TabPage(),
    '/product': (context) => ProductPage(),
    '/productDetail': (context) => ProductDetail(),
    '/register': (context) => RegisterPage(),
    '/login': (context) => LoginPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '第三个路由练习',
      initialRoute: '/',
      routes: this._routes,
      onGenerateRoute: (RouteSettings settings) {
        final String name = settings.name;
        final Function pageContentBuilder = this._routes[name];
        print('name$name');
        print('this.routes${this._routes}');
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
