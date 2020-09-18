import 'package:flutter/material.dart';

class SwitcherScreen extends StatefulWidget {
  SwitcherScreen({Key key}) : super(key: key);

  @override
  _SwitcherScreenState createState() => _SwitcherScreenState();
}

class _SwitcherScreenState extends State<SwitcherScreen> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Switch.adaptive(
        value: isActive,
        onChanged: (bool currentStatus) {
          setState(() {
            isActive = currentStatus;
          });
        },
      ),
    ));
  }
}
