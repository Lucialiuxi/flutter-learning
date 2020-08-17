import 'package:flutter/material.dart';
import './routesExample1/home.dart';
import './routesExample1/product.dart';
import './routesExample1/productDetail.dart';

void main() {
  runApp(RouteApp());
}

class RouteApp extends StatelessWidget {
  final routes = {
    '/': (context) => HomePage(),
    '/product': (context) => ProductPage(),
    '/productDetail': (context) => ProductDetail(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '第三个路由练习',
      initialRoute: '/',
      routes: this.routes,
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
