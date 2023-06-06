import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(
      height: 140,
      child:
    ListView(
      scrollDirection: Axis.horizontal, // 水平列表
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        Container(
          height: 120,
          width: 120,   //宽度是自适应的    设置没有效果
          decoration: const BoxDecoration(
            color: Colors.red
          ),
          child: Column(children: [
            SizedBox( 
              height: 100, 
              child: Image.network("https://www.itying.com/images/flutter/2.png", fit:BoxFit.fill),
            ),
            const Text("data")
          ]),        
        ),
        Container(
          height: 120,
          width: 120,
          decoration: const BoxDecoration(
            color: Colors.yellow
          ),
          child: Column(children: [
            Image.network("https://www.itying.com/images/flutter/3.png"),
            const Text("data")
          ]),
        ),
         Container(
          height: 120,
          width: 120,
          decoration: const BoxDecoration(
            color: Colors.orange
          ),
        ), Container(
          height: 120,
          width: 120,
          decoration: const BoxDecoration(
            color: Colors.black
          ),
        ), Container(
          height: 120,
          width: 120,
          decoration: const BoxDecoration(
            color: Colors.blue
          ),
        ), Container(
          height: 120,
          width: 120,
          decoration: const BoxDecoration(
            color: Colors.red
          ),
        ), Container(
          height: 120,
          width: 120,
          decoration: const BoxDecoration(
            color: Colors.pink
          ),
        ), Container(
          height: 120,
          width: 120,
          decoration: const BoxDecoration(
            color: Colors.blueGrey
          ),
        ),
      ],
    )
    );
  }
}
