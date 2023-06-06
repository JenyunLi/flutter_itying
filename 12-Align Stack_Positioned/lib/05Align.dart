import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //获取设备的宽度和高度
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      // width: 300,
      height: 300,
      color: Colors.red,
      child: const Align(
        alignment: Alignment.center,
        child: Text("你好Flutter"),
      ),
    );
  }
}
