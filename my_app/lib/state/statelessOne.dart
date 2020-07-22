import 'package:flutter/material.dart';

class StatelessExample1 extends StatelessWidget {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 50),
          Text('点击➕1'),
          SizedBox(height: 50),
          SizedBox(height: 20),
          RaisedButton(
            child: Text('按钮${this.count}'),
            onPressed: () {
              this.count++;
              print(this.count);
            },
          )
        ],
      ),
    );
  }
}
