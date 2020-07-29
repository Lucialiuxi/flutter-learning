import 'package:flutter/material.dart';
import '../../consts/listData.dart';
import './settingItem.dart';

class SettingPageInBody extends StatefulWidget {
  SettingPageInBody({Key key}) : super(key: key);

  @override
  _SettingPageInBodyState createState() => _SettingPageInBodyState();
}

class _SettingPageInBodyState extends State<SettingPageInBody> {
  Widget _getListData(context, index) {
    var title = listData[index]['title'];
    var imageUrl = listData[index]['imageUrl'];
    var author = listData[index]['author'];
    return ListTile(
      leading: Image.network(imageUrl),
      title: Text(title),
      subtitle: Text(author),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SettingItem(
            title: title,
            author: author,
            imageUrl: imageUrl,
          ),
        ));
      },
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
