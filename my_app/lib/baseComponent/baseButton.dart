import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final String buttonName;
  const BaseButton({Key key, this.buttonName}) : super(key: key);
  @override
  Widget build(Object context) {
    return RaisedButton(
      child: Text(this.buttonName),
      // textColor: Theme.of(context).accentColor,
      textColor: Colors.brown,
      onPressed: () => {},
    );
  }
}
