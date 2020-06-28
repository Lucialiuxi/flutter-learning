import 'package:flutter/material.dart';
import '../consts/listData.dart';

// class ListViewExample7 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: listData.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(listData[index]['title']),
//             subtitle: Text(listData[index]['author']),
//             trailing: Image.network(listData[index]['imageUrl']),
//           );
//         }
//       );
//   }
// }

class ListViewExample7 extends StatelessWidget {
  Widget _getListData(context, index) {
    return ListTile(
      title: Text(listData[index]['title']),
      subtitle: Text(listData[index]['author']),
      trailing: Image.network(listData[index]['imageUrl']),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
}
