import 'package:flutter/material.dart';
import './tabContentPage/home.dart';
import './tabContentPage/message.dart';
import './tabContentPage/personalCenter.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _tabIndex = 0;

  List _pageList = [
    HomePageInTab(),
    MessagePageInTab(),
    PersonalCenterPageInTab(),
    Text('1111'),
    Text('2222'),
    Text('3333'),
    Text('4444'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp title',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar title 动态切换底部导航---modify'),
        ),
        body: this._pageList[this._tabIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._tabIndex,
          onTap: (int index) {
            setState(() {
              this._tabIndex = index;
              print(index);
            });
          },
          iconSize: 20,
          fixedColor: Colors.greenAccent,
          type: BottomNavigationBarType.fixed, // 配置底部tabs可以有多个按钮
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('个人中心'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text('消息'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('个人中心1'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text('消息1'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页1'),
            ),
          ],
        ),
      ),
    );
  }
}
