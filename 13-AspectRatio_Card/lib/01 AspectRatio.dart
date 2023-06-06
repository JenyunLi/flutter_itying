import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {    
    return AspectRatio(
      aspectRatio: 3/1,
      child: Container(
        alignment: Alignment.center,
        color: Colors.red,
        child: const Text('key'),
      ),
    );
  }
  //需求：页面上显示一个容器，宽度是屏幕的宽度，高度是容器宽度的一半
  
}
