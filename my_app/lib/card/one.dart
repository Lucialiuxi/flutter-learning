import 'package:flutter/material.dart';
import '../consts/personInformation.dart';

class CardExample1 extends StatelessWidget {
  Widget _getListData(context, index) {
    var tel = personInformation[index]['tel'];
    var adress = personInformation[index]['adress'];
    return Card(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      color: Colors.lightGreen[50],
      shadowColor: Colors.red, // 阴影颜色
      elevation: 10.0, // 阴影宽度
      // borderOnForeground: true, // ???? 没什么作用
      // semanticContainer: true, // ???? 没什么作用
      // shape边框和圆角
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          side: BorderSide(
            color: Colors.redAccent,
            width: 1,
          )),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              personInformation[index]['name'],
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(personInformation[index]['job']),
          ),
          ListTile(
            title: Text('电话：$tel'),
          ),
          ListTile(
            title: Text('地址$adress'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(Object context) {
    return Container(
      // color: Colors.greenAccent,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: personInformation.length,
          itemBuilder: this._getListData,
        ),
      ),
    );
  }
}
