import 'package:flutter/material.dart';
import '../consts/listData.dart';

class GridViewExample2 extends StatelessWidget {
  // 自定义方法
  List<Widget> _getData() {
    var tempList = listData.map((value) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.amber,
            width: 2,
          ),
        ),
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            SizedBox(
              height: 20,
            ), // 用来做间距
            Text(
              value['title'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // 一行Widget的数量（有几列）
      children: this._getData(),
      crossAxisSpacing: 20, //  水平子Widget之间的间距
      mainAxisSpacing: 20, // 垂直子Widget之间的间距
      padding: EdgeInsets.all(10),
      // childAspectRatio: 3.0, // 子Widget的宽高比例
    );
  }
}
