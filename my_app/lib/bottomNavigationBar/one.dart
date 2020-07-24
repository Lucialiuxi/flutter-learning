import 'package:flutter/material.dart';

// Swatch翻译： 色板
class HomeComponent extends StatelessWidget {
  const HomeComponent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '测试BottomNavigationBar组件',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('标题'),
        ),
        body: Text('body区域'),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('个人中心'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text('消息'),
            ),
          ],
        ),
      ),
    );
  }
}
