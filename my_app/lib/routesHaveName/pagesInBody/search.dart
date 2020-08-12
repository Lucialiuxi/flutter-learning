import 'package:flutter/material.dart';

class SearchPageInBody extends StatelessWidget {
  const SearchPageInBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('search组件'),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('前往 home首页'),
          ),
        ),
      ),
    );
  }
}
