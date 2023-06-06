import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool flag=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          setState(() {
            flag=!flag;
          });
        },
      ),
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1,milliseconds: 100),
          width: flag?200:300,
          height: flag?200:300,
          transform: flag?Matrix4.translationValues(0, 0, 0):Matrix4.translationValues(-200, 0, 0) ,
          color: Colors.yellow, 
        ),
      ),
    );
  }
}