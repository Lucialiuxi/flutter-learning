import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  final arguments;
  SettingItem({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置的子页面'),
      ),
      body: Column(
        children: <Widget>[
          Text('标题：${this.arguments.title}'),
          Text('作者：${this.arguments.author}'),
          Image.network(this.arguments.imageUrl),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('返回'),
          )
        ],
      ),
    );
  }
}
