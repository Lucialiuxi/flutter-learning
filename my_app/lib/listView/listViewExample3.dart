import 'package:flutter/material.dart';

class ListViewExample3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
          Image.network('https://www.itying.com/images/flutter/1.png'),
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.amber,
             ),
            child: Text(
              '我是container的文字',
               textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                ),
            ),
          ),
          Image.network('https://www.itying.com/images/flutter/2.png'),
          Image.network('https://www.itying.com/images/flutter/3.png'),
          Image.network('https://www.itying.com/images/flutter/4.png'),
          Image.network('https://www.itying.com/images/flutter/5.png'),
    ],);
  }
  
}