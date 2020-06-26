
import 'package:flutter/material.dart';
// import 'customText.dart';
// import 'containerAndText.dart';
// import 'imageExampleNetWork.dart';
// import 'imageExampleAsset.dart';
import 'listView.dart';

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
        body: ListViewExample1(),
        ),
    );
  }
}