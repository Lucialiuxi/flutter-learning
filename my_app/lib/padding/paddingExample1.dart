import 'package:flutter/material.dart';
import '../consts/listData.dart';

class PaddingExample1 extends StatelessWidget {
  List<Widget> _getList() {
    var list = listData.map((value) {
      return Image.network(
        value['imageUrl'],
        fit: BoxFit.cover,
      );
    });
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: this._getList(),
    );
  }
}
