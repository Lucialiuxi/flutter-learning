import 'package:flutter/material.dart';
// import 'customText.dart';
// import 'containerAndText.dart';
// import 'imageExampleNetWork.dart';
// import 'imageExampleAsset.dart';
// import 'listView/listViewExample1.dart';
// import 'listView/listViewExample2.dart';
// import 'listView/listViewExample3.dart';
// import 'listView/listViewExample4.dart';
// import 'listView/listViewExample5.dart';
// import 'listView/listViewExample6.dart';
import 'listView/listViewExample7.dart';

class CustomApp extends StatelessWidget {
  // const name({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lucia',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('CustomApp Title~'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add),
              tooltip: 'hover',
              onPressed: null,
              hoverColor: Colors.greenAccent,
            )
          ],
        ),
        // body:  ContainerAndText(),
        // body: ImageExampleNetWork(),
        // body: ImageExampleAsset(),
        // body: ListViewExample1(),
        // body: ListViewExample4(),
        // body: ListViewExample5(),
        // body: ListViewExample6(),
        body: ListViewExample7(),
      ),
    );
  }
}
