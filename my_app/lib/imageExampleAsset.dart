import 'package:flutter/material.dart';

// class ImageExampleAsset extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Image.asset('images/tree.jpeg',
//       fit: BoxFit.cover,
//       ),
//       width: 300,
//       height: 300,
//       decoration: BoxDecoration(color: Colors.yellow),
//       );
//   }
// }


class ImageExampleAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipOval(
        child: Image.asset(
          'images/tree.jpeg',
           fit: BoxFit.cover,
        ),
        ),
    );
  }
}