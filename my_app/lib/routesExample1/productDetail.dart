import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  // final arguments;
  // ProductDetail(this.arguments);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('详情页面'),
      ),
      body: Column(
        children: <Widget>[Text('详情页面-content')],
      ),
    );
  }
}
