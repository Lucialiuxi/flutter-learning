import 'package:flutter/material.dart';
import './iconContaniner.dart';

// class ExpandExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: <Widget>[
//         Expanded(
//           flex: 1,
//           child: IconContaniner(
//             Icons.ac_unit,
//             color: Colors.blue,
//             backGroundColor: Colors.red,
//           ),
//         ),
//         Expanded(
//           flex: 2,
//           child: IconContaniner(
//             Icons.home,
//             color: Colors.green,
//             backGroundColor: Colors.pink,
//           ),
//         ),
//       ],
//     );
//   }
// }

// 左侧固定宽度 右侧自适应
class ExpandExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconContaniner(
          Icons.ac_unit,
          color: Colors.blue,
          backGroundColor: Colors.red,
        ),
        Expanded(
          child: IconContaniner(
            Icons.home,
            color: Colors.green,
            backGroundColor: Colors.pink,
          ),
        ),
      ],
    );
  }
}
