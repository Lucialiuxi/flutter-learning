import 'package:flutter/material.dart';

class BottomNavigationBar1 extends StatefulWidget {
  BottomNavigationBar1({Key key}) : super(key: key);

  @override
  _BottomNavigationBar1State createState() => _BottomNavigationBar1State();
}

class _BottomNavigationBar1State extends State<BottomNavigationBar1> {
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp title',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar title 动态切换底部导航'),
        ),
        body: Text('data'),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this.tabIndex,
          onTap: (int index) {
            setState(() {
              this.tabIndex = index;
              print(index);
            });
          },
          iconSize: 40,
          fixedColor: Colors.greenAccent,
          // type: BottomNavigationBarType.shifting,
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
          ],
        ),
      ),
    );
  }
}
