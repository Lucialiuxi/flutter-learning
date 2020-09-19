import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

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
                            onPressed: () {
                              print('点击登陆按钮');
                            },
                          ),
                          RaisedButton(
                            color: Colors.white,
                            textColor: Colors.blue,
                            child: Text('注册'),
                            onPressed: () {
                              print('点击注册按钮');
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
