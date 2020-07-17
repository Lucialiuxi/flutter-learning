import 'package:flutter/material.dart';

class CombineExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            height: 100.0,
            width: double.infinity,
            color: Colors.pink,
          ),
          Container(
            height: 100.0,
            width: double.infinity,
            // color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Image.network(
                    'https://www.itying.com/images/flutter/1.png',
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Image.network(
                          'https://www.itying.com/images/flutter/2.png',
                          height: 45,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Image.network(
                          'https://www.itying.com/images/flutter/3.png',
                          height: 45,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
