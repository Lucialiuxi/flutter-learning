import 'package:flutter/material.dart';

// //显示图片
// class ImageExampleNetWork extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300,
//       width: 300,
//       decoration: BoxDecoration(
//         color: Colors.blueAccent,
//         borderRadius: BorderRadius.circular(150),
//       ),
//       child: Image.network(
//         // 'https://zos.alipayobjects.com/rmsportal/jkjgkEfvpUPVyRjUImniVslZfWPnJuuZ.png',
//         'http://www.ionic.wang/statics/index/images/ionic4.png',
//         alignment: Alignment.topLeft,
//         // colorBlendMode: BlendMode.colorDodge, // 跟color一起设置图的特效，如果只用color，图片将会被color覆盖而不显示
//         // color: Colors.amber,
//         fit: BoxFit.cover, // 图片适应盒子的类型设置,跟设置css背景图类似
//         repeat: ImageRepeat.repeatX, // 跟背景的repeat类似
//         ),
//       );
//   }
  
// }

// 设置背景图
// class ImageExampleNetWork extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300,
//       width: 300,
//       decoration: BoxDecoration(
//         color: Colors.blueAccent,
//         borderRadius: BorderRadius.circular(150),
//         image: DecorationImage(
//           image: NetworkImage('https://zos.alipayobjects.com/rmsportal/jkjgkEfvpUPVyRjUImniVslZfWPnJuuZ.png'),
//           )
//       ),
//       );
//   }
  
// }


// ClipOval按照图片形状，自适应处理成圆形或者椭圆形
class ImageExampleNetWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ClipOval(
          child: Image.network(
            'http://www.ionic.wang/statics/index/images/ionic4.png',
            height: 100,
            width: 100,
            fit: BoxFit.cover,
            ),
        ),
      );
  }
  
}