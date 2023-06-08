import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool flag=true;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.refresh),
            onPressed: () {
              flag? _controller.forward(): _controller.reverse();
              flag=!flag;
            }),
        appBar: AppBar(title: const Text("Title")),
        body: Center(
            child: Stack(
          children: [
            // 0-0.5 search消失 0.5-1 close顯示
            ScaleTransition(
                scale: _controller.drive(Tween(begin: 0.0, end: 1.0)
                    .chain(CurveTween(curve: const Interval(0.2, 0.5)))),
                child: const Icon(Icons.close, size: 40)),
            ScaleTransition(
                scale: _controller.drive(Tween(begin: 1.0, end: 0.0)
                    .chain(CurveTween(curve: const Interval(0, 0.2)))),
                child: const Icon(Icons.search, size: 40)),
          ],
        )));
  }
}
