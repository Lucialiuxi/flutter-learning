import 'package:flutter/material.dart';

class ListViewExample5 extends StatelessWidget {
  // 自定义方法
  List<Widget> _getData () {
    List<Widget> list = new List(); 
    for(var i = 0; i < 20; i ++) {
      list.add(ListTile(
          title: Text('我是渔夫终结者$i')
      ));
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    return ListView(children: this._getData());
  }
  
}