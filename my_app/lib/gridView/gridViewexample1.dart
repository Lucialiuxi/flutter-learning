import 'package:flutter/material.dart';

class GridViewExample1 extends StatelessWidget {
  // 自定义方法
  List<Widget> _getData() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        color: Colors.blueAccent,
        child: Text(
          '我是渔夫终结者$i',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // 一行Widget的数量（有几列）
      children: this._getData(),
      crossAxisSpacing: 20, //  水平子Widget之间的间距
      mainAxisSpacing: 20, // 垂直子Widget之间的间距
      padding: EdgeInsets.all(10),
      childAspectRatio: 3.0, // 子Widget的宽高比例
    );
  }
}
