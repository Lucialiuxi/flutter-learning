import 'package:flutter/material.dart';
import '../consts/listData.dart';

class ListViewExample6 extends StatelessWidget {
  // 自定义方法
  List<Widget> _getData() {
    var tempList = listData.map((e) {
      return ListTile(
        leading: Image.network(e['imageUrl']),
        title: Text(e['title']),
        subtitle: Text(e['author']),
      );
    });
    //print(tempList); // (ListTile, ListTile, ListTile, ListTile)
    return tempList.toList(); // [ListTile, ListTile, ListTile, ListTile]
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: this._getData());
  }
}
