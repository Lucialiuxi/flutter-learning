import 'package:flutter/material.dart';
import '../consts/listData.dart';

// 图文卡片
class CardExample2 extends StatelessWidget {
  Widget _getListData(context, index) {
    return Column(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 20 / 13,
          child: Image.network(listData[index]['imageUrl']),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: listData.length,
        itemBuilder: this._getListData,
      ),
    );
  }
}
