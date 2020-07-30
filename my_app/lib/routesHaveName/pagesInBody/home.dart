import 'package:flutter/material.dart';
import './search.dart';

class HomePageInBody extends StatefulWidget {
  HomePageInBody({Key key}) : super(key: key);

  @override
  _HomePageInBodyState createState() => _HomePageInBodyState();
}

class _HomePageInBodyState extends State<HomePageInBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              '首页',
              style: TextStyle(
                fontSize: 40,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              child: Text('跳转到 search 页面'),
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (BuildContext context) {
                //     return SearchPageInBody();
                //   }),
                // );
                Navigator.pushNamed(context, './search');
              },
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              child: Text('跳转到 分类 页面'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
