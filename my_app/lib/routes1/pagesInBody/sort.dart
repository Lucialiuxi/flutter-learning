import 'package:flutter/material.dart';
import '../../consts//books.dart';

class SortPageInBody extends StatefulWidget {
  SortPageInBody({Key key}) : super(key: key);

  @override
  _SortPageInBodyState createState() => _SortPageInBodyState();
}

class _SortPageInBodyState extends State<SortPageInBody> {
  List<Widget> _getBooks() {
    var list = books.map((e) => RaisedButton(
          child: Text(e),
          onPressed: () {},
          // color: Colors.amber,
          textTheme: ButtonTextTheme.accent,
          // textColor: Colors.red,
          // highlightColor: Colors.green,
          // hoverColor: Colors.green,
          // splashColor: Colors.yellow,
        ));
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: this._getBooks(),
      ),
    );
  }
}
