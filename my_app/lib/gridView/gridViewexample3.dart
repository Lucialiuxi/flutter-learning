import 'package:flutter/material.dart';
import '../consts/listData.dart';

class GridViewExample3 extends StatelessWidget {
  // 自定义方法
  Widget _getData(context, index) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.amber,
          width: 2,
        ),
      ),
      child: Column(
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          SizedBox(
            height: 20,
          ), // 用来做间距
          Text(
            listData[index]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 一行Widget的数量（有几列）
        crossAxisSpacing: 20, //  水平子Widget之间的间距
        mainAxisSpacing: 20, // 垂直子Widget之间的间距
        childAspectRatio: 1.0, // 子Widget的宽高比例
      ),
      itemCount: listData.length, // 必要属性 子Widget个数
      itemBuilder: this._getData, // 必要属性
    );
  }
}
