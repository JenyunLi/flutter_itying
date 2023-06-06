import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
      ],
    );
  }
}
