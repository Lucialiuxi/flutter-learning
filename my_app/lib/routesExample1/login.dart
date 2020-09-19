import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  Future<void> showNoticeDialog(nocitceText) async {
    return showDialog(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('提醒'),
          content: SingleChildScrollView(
            child: Center(
              child: Text('$nocitceText'),
            ),
          ),
          actions: [
            FlatButton(
              child: Text('确定'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ], // 滚动组件，防止可视区内元素放不下导致显示异常
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登陆'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Center(
              child: Form(
                key: this._formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      // 相当于placeholder
                      decoration: const InputDecoration(
                        hintText: '请输入账户名',
                        labelText: '账户名',
                      ),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return '账户名为必填项';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      // 相当于placeholder
                      decoration: const InputDecoration(
                        hintText: '请输入密码',
                        labelText: '密码',
                      ),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return '密码为必填项';
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RaisedButton(
                            color: Colors.blue,
                            textColor: Colors.white,
                            child: Text('登陆'),
                            onPressed: () async {
                              print('点击登陆按钮${_formKey.currentState}');
                              SharedPreferences.setMockInitialValues({});
                              // 获取本地缓存，查看是否登陆
                              final perfers =
                                  await SharedPreferences.getInstance();
                              final isRegister = perfers.getBool('isRegister');
                              if (isRegister == true) {
                                Navigator.pushNamed(
                                  context,
                                  '/product',
                                );
                              } else {
                                showNoticeDialog('未注册');
                              }
                            },
                          ),
                          RaisedButton(
                            color: Colors.white,
                            textColor: Colors.blue,
                            child: Text('注册'),
                            onPressed: () {
                              print('点击注册按钮');
                              Navigator.pushNamed(
                                context,
                                '/register',
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
