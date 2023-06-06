import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Flutter App")),
        body: Text("FLutter App Tab: $_currentIndex"),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex:_currentIndex,
          onTap:(index){
            print(index);
            //注意 要用setState
            setState(() {
              _currentIndex=index;
            });
          },
          items: const [
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            label: "首页"
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.category),
            label: "分类"
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.settings),
            label: "设置"
          )
        ]),
      );
  }
}