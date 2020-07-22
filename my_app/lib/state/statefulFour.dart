import 'package:flutter/material.dart';

class StatefulExample4 extends StatefulWidget {
  StatefulExample4({Key key}) : super(key: key);

  @override
  _StatefulExample4State createState() => _StatefulExample4State();
}

class _StatefulExample4State extends State<StatefulExample4> {
  int count = 1;
  List listData = new List();
  List<Widget> _getList() {
    return this.listData.map((value) {
      return ListTile(
        title: Text(value),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: this._getList(),
        ),
        RaisedButton(
          child: Text('点击新增一条新闻'),
          onPressed: () {
            setState(() {
              this.count++;
              var newsTitle = '这是第${this.count}条新闻';
              this.listData.add(newsTitle);
            });
          },
        )
      ],
    );
  }
}
