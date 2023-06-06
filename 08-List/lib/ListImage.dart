import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        Image.network("https://www.itying.com/images/flutter/1.png"),
        const SizedBox(
          // padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: Text(
            "我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22)),
        ),
        Image.network("https://www.itying.com/images/flutter/3.png"),
         Container(
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22)),
        ),
        Image.network("https://www.itying.com/images/flutter/2.png"),
         Container(
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22)),
        ),
        Image.network("https://www.itying.com/images/flutter/4.png"),
         Container(
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22)),
        ),
        Image.network("https://www.itying.com/images/flutter/5.png"),
         Container(
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22)),
        ),
        Image.network("https://www.itying.com/images/flutter/6.png"),
      ],
    );
  }
}
