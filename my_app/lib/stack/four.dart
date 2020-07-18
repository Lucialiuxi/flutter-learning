import 'package:flutter/material.dart';
import '../consts/listData.dart';

class StackExample4 extends StatelessWidget {
  Widget _getListData(context, index) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 20),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: AspectRatio(
              aspectRatio: 2.0 / 1.0,
              child: Image.network(
                listData[index]['imageUrl'],
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 100,
            child: Text(
              listData[index]['title'],
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 0,
            child: Text(listData[index]['author'],
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                )),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ListView.builder(
          itemCount: listData.length,
          itemBuilder: this._getListData,
        ),
      ),
    );
  }
}
