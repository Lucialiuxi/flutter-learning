import 'package:flutter/material.dart';
import './pagesInBody/setting.dart';
import './pagesInBody/sort.dart';
import './pagesInBody/home.dart';

class PageJumpOne extends StatefulWidget {
  PageJumpOne({Key key}) : super(key: key);

  @override
  _PageJumpOneState createState() => _PageJumpOneState();
}

class _PageJumpOneState extends State<PageJumpOne> {
  int _currentIndex = 0;
  List _bodyPages = [
    SettingPageInBody(),
    SortPageInBody(),
    HomePageInBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "路由跳转的demo",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('路由跳转')),
        body: this._bodyPages[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              title: Text('设置'),
              icon: Icon(
                Icons.settings,
              ),
            ),
            BottomNavigationBarItem(
              title: Text('分类'),
              icon: Icon(
                Icons.sort,
              ),
            ),
            BottomNavigationBarItem(
              title: Text('首页'),
              icon: Icon(
                Icons.home,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
