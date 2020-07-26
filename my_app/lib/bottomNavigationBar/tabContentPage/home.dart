import 'package:flutter/material.dart';

class HomePageInTab extends StatefulWidget {
  HomePageInTab({Key key}) : super(key: key);

  @override
  _HomePageInTabState createState() => _HomePageInTabState();
}

class _HomePageInTabState extends State<HomePageInTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('首页中的组件'),
    );
  }
}
