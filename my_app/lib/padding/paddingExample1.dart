import 'package:flutter/material.dart';
import '../consts/listData.dart';

class PaddingExample1 extends StatelessWidget {
  Widget _getList(context, index) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.greenAccent,
          border: Border.all(color: Colors.blueGrey, width: 3),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: <Widget>[
          Text(listData[index]['title']),
          Image.network(listData[index]['imageUrl']),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: listData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: this._getList,
    );
  }
}
