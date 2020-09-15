import 'package:flutter/material.dart';
import './home.dart';
import './setting.dart';
import './private.dart';

class TabPage extends StatefulWidget {
  TabPage({Key key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _tabIndex = 0;

  List _pageList = [
    HomePage(),
    SettingTab(),
    PrivateCenter(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('111'),
        iconTheme: IconThemeData(
          color: Colors.greenAccent,
        ),
      ),
      body: this._pageList[this._tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._tabIndex,
        fixedColor: Colors.red,
        onTap: (int index) {
          setState(() {
            this._tabIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('分类'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center),
            title: Text('个人中心'),
          ),
        ],
      ),
    );
  }
}
