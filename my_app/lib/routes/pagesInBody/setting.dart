import 'package:flutter/material.dart';
import '../../consts/listData.dart';

class SettingPageInBody extends StatefulWidget {
  SettingPageInBody({Key key}) : super(key: key);

  @override
  _SettingPageInBodyState createState() => _SettingPageInBodyState();
}

class _SettingPageInBodyState extends State<SettingPageInBody> {
  Widget _getListData(context, index) {
    return ListTile(
      leading: Image.network(listData[index]['imageUrl']),
      title: Text(listData[index]['title']),
      subtitle: Text(listData[index]['author']),
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
