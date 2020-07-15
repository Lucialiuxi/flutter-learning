import 'package:flutter/material.dart';
import '../consts/listData.dart';

class PaddingExample1 extends StatelessWidget {
  List<Widget> _getList() {
    var list = listData.map((value) {
      return Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network(
            value['imageUrl'],
            fit: BoxFit.cover,
          ));
    });
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        crossAxisCount: 2, // 一行Widget数量
        childAspectRatio: 1.7, //子Widget宽高比例
        children: this._getList(),
      ),
    );
  }
}
