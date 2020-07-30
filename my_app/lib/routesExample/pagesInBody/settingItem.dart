import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  String title;
  String author;
  String imageUrl;
  SettingItem({this.title, this.author, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: Text('设置的子页面'),
        ),
        body: Column(
          children: <Widget>[
            Text('标题：${this.title}'),
            Text('作者：${this.author}'),
            Image.network(this.imageUrl),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('返回'),
            )
          ],
        ),
      ),
    );
  }
}
