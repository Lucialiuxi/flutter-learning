import 'package:flutter/material.dart';

class PersonalCenterPageInTab extends StatefulWidget {
  PersonalCenterPageInTab({Key key}) : super(key: key);

  @override
  _PersonalCenterPageInTabState createState() =>
      _PersonalCenterPageInTabState();
}

class _PersonalCenterPageInTabState extends State<PersonalCenterPageInTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('个人中心的组件'),
    );
  }
}
