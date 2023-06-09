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
      body: Stack(
        children: [
          ListView(
            children: const [
              ListTile(
                title: Text("我是一个列表"),
              ),
              ListTile(
                title: Text("我是一个列表"),
              ),
              ListTile(
                title: Text("我是一个列表"),
              ),
              ListTile(
                title: Text("我是一个列表"),
              ),
              ListTile(
                title: Text("我是一个列表"),
              ),
              ListTile(
                title: Text("我是一个列表"),
              ),
            ],
          ),
          AnimatedPositioned(
              curve: Curves.bounceInOut,
              right: flag ? 10 : 300,
              top: flag ? 10 : 560,
              duration: const Duration(seconds: 1, milliseconds: 500),
              child: Container(
                width: 60,
                height: 60,
                color: Colors.blue,
              )),
        ],
      ),
    );
  }
}
