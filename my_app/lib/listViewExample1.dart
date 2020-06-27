import 'package:flutter/material.dart';

class ListViewExample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return ListView(
     padding: EdgeInsets.all(10),
     children: <Widget>[
      ListTile(
        leading: Icon(
          Icons.weekend,
          size: 32,
          color: Colors.amberAccent,
          ), // 文字前的图标
        trailing:Icon(
          Icons.accessible,
          size: 32,
          color: Colors.amberAccent,
          ), // 文字后面的图标
        title: Text(
          '列表的标题',
          style: TextStyle(
            fontSize: 20,
            color: Colors.amber
          ),
          ),
        subtitle: Text('[一周原创发现]开启朱星杰的“梦幻密语"'),
      ),
      ListTile(
        title: Text('列表的标题'),
        subtitle: Text('[一周原创发现]开启朱星杰的“梦幻密语"'),
      ),
      ListTile(
        title: Text('列表的标题'),
        subtitle: Text('[一周原创发现]开启朱星杰的“梦幻密语"'),
      ),
      ListTile(
        title: Text('列表的标题'),
        subtitle: Text('[一周原创发现]开启朱星杰的“梦幻密语"'),
      ),
      ListTile(
        title: Text('列表的标题'),
        subtitle: Text('[一周原创发现]开启朱星杰的“梦幻密语"'),
      ),
     ],
   );
  }
  
}