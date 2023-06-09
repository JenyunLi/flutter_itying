import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            flag = !flag;
          });
        },
      ),
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: Container(
            alignment: Alignment.center,
            width: 300,
            height: 220,
            color: Colors.yellow,
            child: AnimatedSwitcher(
                //当子元素改变的时候会触发动画
                transitionBuilder: ((child, animation) {
                  //可以改变动画效果
                  return ScaleTransition(//放大縮小
                    scale: animation,
                    // child: child
                    child: FadeTransition(//淡入淡出
                      opacity: animation,
                      child: child,
                    ),
                  );
                }),
                duration: const Duration(seconds: 1),
                child: flag
                    ? const CircularProgressIndicator()
                    : Image.network(
                        "https://www.itying.com/images/flutter/2.png",
                        fit: BoxFit.cover,
                      ))),
      ),
    );
  }
}
