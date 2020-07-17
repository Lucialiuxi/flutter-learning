import 'package:flutter/material.dart';
// import 'customText.dart';
// import 'containerAndText.dart';
// import 'imageExampleNetWork.dart';
// import 'imageExampleAsset.dart';
// import 'listView/listViewExample7.dart';
// import 'padding/paddingExample1.dart';
// import 'row/rowExample1.dart';
// import 'row/expandExample.dart';
// import 'row/combineExample.dart';
import 'stack/four.dart';

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
        // body: ListViewExample7(),
        // body: GridViewExample3(),
        // body: PaddingExample1(),
        // body: CombineExample(),
        body: StackExample4(),
      ),
    );
  }
}
