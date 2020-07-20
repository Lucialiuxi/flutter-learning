import 'package:flutter/material.dart';
import '../consts/listData.dart';

// 图文卡片
class CardExample3 extends StatelessWidget {
  Widget _getListData(context, index) {
    return Card(
      child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              listData[index]['imageUrl'],
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(listData[index]['imageUrl']),
            ),
            title: Text(listData[index]['title']),
            subtitle: Text(listData[index]['author']),
          ),
        ],
      ),
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
