import 'package:flutter/material.dart';
import '../consts//books.dart';
import '../baseComponent/baseButton.dart';

class WrapExample2 extends StatelessWidget {
  List<Widget> _getBook() {
    var buttons = books.map((e) => BaseButton(buttonName: e));
    return buttons.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreenAccent,
      height: 400,
      // width: 300,
      child: Wrap(
        children: this._getBook(),
        // direction: Axis.horizontal, // 主轴 的方向，默认水平
        direction: Axis.vertical, // 主轴 的方向，默认水平
        alignment: WrapAlignment.center, // 主轴的对齐方式
        spacing: 10, // 主轴方向上的间距
        textDirection: TextDirection.ltr, // 控件左右排列方向，单个从左到右排列，默认从左到右排列
        // textDirection: TextDirection.rtl, // 控件左右排列方向， 单个从右到左排列
        verticalDirection: VerticalDirection.down, // 控件上下排列方向，默认行数从上到下
        // runAlignment: WrapAlignment.spaceBetween, // runAlignment和runSpacing设置单个即可
        runSpacing: 50,
      ),
    );
  }
}
