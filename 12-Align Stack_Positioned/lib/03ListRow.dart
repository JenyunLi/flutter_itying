import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //获取设备的宽度和高度
    final size =MediaQuery.of(context).size;

    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 50),
          children: const [
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表2")),
            ListTile(title: Text("我是一个列表3")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
          ],
        ),
        Positioned(
            left: 0,
            top: 0,
            width: size.width,
            height: 39,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      color: Colors.black,
                      child: const Text(
                        "二级导航",
                        style: TextStyle(color: Colors.white),
                      ),
                    ))
              ],
            ))
      ],
    );
  }
}
