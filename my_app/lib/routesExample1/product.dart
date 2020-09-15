import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../consts/listData.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品页面'),
      ),
      body: ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(listData[index]['imageUrl']),
            title: Text(listData[index]['title']),
            subtitle: Text(listData[index]['author']),
            onTap: () async {
              SharedPreferences.setMockInitialValues({});
              // 获取本地缓存，查看是否登陆
              final perfers = await SharedPreferences.getInstance();
              final isLogin = perfers.getBool('isLogin');
              if (isLogin == true) {
                Navigator.pushNamed(
                  context,
                  '/productDetail',
                );
              } else {
                print('未登陆');
                Navigator.pushNamed(
                  context,
                  '/login',
                );
              }
            },
          );
        },
      ),
    );
  }
}
