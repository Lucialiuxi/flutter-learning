import 'package:flutter/material.dart';
// import './statelessOne.dart';
// import './statefulOne.dart';
// import './statefulTwo.dart';
// import './statefulThree.dart';
import './statefulFour.dart';

class HomeAboutState extends StatelessWidget {
  const HomeAboutState({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StatelessWidget测试',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('StatelessWidget'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.access_time),
              tooltip: 'lucia',
              onPressed: null,
            )
          ],
        ),
        // body: StatelessExample1(),
        // body: StateFulExampleOne(),
        // body: StatefulExample2(),
        // body: StatefulExample3(),
        body: StatefulExample4(),
      ),
    );
  }
}
