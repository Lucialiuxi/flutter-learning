import 'package:flutter/material.dart';

class StatefulExample2 extends StatefulWidget {
  StatefulExample2({Key key}) : super(key: key);

  @override
  _StatefulExample2State createState() => _StatefulExample2State();
}

class _StatefulExample2State extends State<StatefulExample2> {
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
            Text(
              '当前count的值为:${this.count}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            RaisedButton(
              child: Text('点击按钮+1'),
              onPressed: () {
                this.count++;
                print(this.count);
              },
            )
          ],
        ),
      ),
    );
  }
}
