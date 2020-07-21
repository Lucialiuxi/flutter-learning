import 'package:flutter/material.dart';
import '../consts//books.dart';
import '../baseComponent/baseButton.dart';

class WrapExample1 extends StatelessWidget {
  List<Widget> _getBook() {
    var buttons = books.map((e) => BaseButton(buttonName: e));
    return buttons.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: this._getBook(),
    );
  }
}
