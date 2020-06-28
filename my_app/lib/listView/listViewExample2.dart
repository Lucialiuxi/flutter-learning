import 'package:flutter/material.dart';

class ListViewExample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return ListView(children: <Widget>[
     ListTile(
       leading: Image.network('https://zos.alipayobjects.com/rmsportal/jkjgkEfvpUPVyRjUImniVslZfWPnJuuZ.png'),
       title: Text('列表的标题'),
        subtitle: Text('[一周原创发现]开启朱星杰的“梦幻密语"'),
     ),
     ListTile(
       leading: Image.network('https://zos.alipayobjects.com/rmsportal/jkjgkEfvpUPVyRjUImniVslZfWPnJuuZ.png'),
       title: Text('列表的标题'),
        subtitle: Text('[一周原创发现]开启朱星杰的“梦幻密语"'),
     ),
     ListTile(
       leading: Image.network('https://zos.alipayobjects.com/rmsportal/jkjgkEfvpUPVyRjUImniVslZfWPnJuuZ.png'),
       title: Text('列表的标题'),
        subtitle: Text('[一周原创发现]开启朱星杰的“梦幻密语"'),
     ),
     ListTile(
       leading: Image.network('https://zos.alipayobjects.com/rmsportal/jkjgkEfvpUPVyRjUImniVslZfWPnJuuZ.png'),
       title: Text('列表的标题'),
        subtitle: Text('[一周原创发现]开启朱星杰的“梦幻密语"'),
       trailing: Image.network('https://zos.alipayobjects.com/rmsportal/jkjgkEfvpUPVyRjUImniVslZfWPnJuuZ.png'),
     ),
   ]);
  }
  
}