import 'package:flutter/material.dart';
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
            onTap: () {
              Navigator.pushNamed(
                context,
                '/productDetail',
              );
            },
          );
        },
      ),
    );
  }
}
