import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          //注意：相对于[外部容器]进行定位，
          //如果没有外部容器就相对于[整个屏幕]进行定位
          children: [
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            )),
            const Positioned(
              top: 190,
              right: 0,
              child: Text("你好Flutter")
            )
          ],
        ),
      ),
    );
  }
}
