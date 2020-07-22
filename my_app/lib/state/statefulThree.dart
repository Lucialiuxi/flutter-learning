import 'package:flutter/material.dart';

class StatefulExample3 extends StatefulWidget {
  StatefulExample3({Key key}) : super(key: key);

  @override
  _StatefulExample3State createState() => _StatefulExample3State();
}

class _StatefulExample3State extends State<StatefulExample3> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      color: Colors.pink[50],
      padding: EdgeInsets.all(50),
      child: Center(
        child: Column(
          children: <Widget>[
            Chip(
              label: Text(
                '当前count的值为:${this.count}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 50),
            RaisedButton(
              child: Text('点击按钮+1'),
              onPressed: () {
                setState(() {
                  this.count++;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
