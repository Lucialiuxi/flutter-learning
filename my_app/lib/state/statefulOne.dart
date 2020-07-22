import 'package:flutter/material.dart';

// 自定义有状态组件
class StateFulExampleOne extends StatefulWidget {
  StateFulExampleOne({Key key}) : super(key: key);

  @override
  _StateFulExampleOneState createState() => _StateFulExampleOneState();
}

class _StateFulExampleOneState extends State<StateFulExampleOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('自定义有状态组件'),
    );
  }
}
