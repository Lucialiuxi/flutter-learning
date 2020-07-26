import 'package:flutter/material.dart';

class MessagePageInTab extends StatefulWidget {
  MessagePageInTab({Key key}) : super(key: key);

  @override
  _MessagePageInTabState createState() => _MessagePageInTabState();
}

class _MessagePageInTabState extends State<MessagePageInTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('消息页面的组件'),
    );
  }
}
