import 'package:flutter/material.dart';

//有状态组件:如果我们想改变页面中的数据的话这个时候就需要用到StatefulWidget
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _numCount = 0;
  @override
  Widget build(BuildContext context) {
    print(_numCount);
    return Scaffold(
      appBar: AppBar(title: const Text("flutter App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$_numCount",
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(height: 60),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _numCount++;
                  });
                },
                child: const Text("增加"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _numCount+=2;
          });
        },
        child:const Icon(Icons.add),
      ),
    );
  }
}
