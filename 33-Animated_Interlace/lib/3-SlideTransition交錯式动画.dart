import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool flag = true;
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
              flag ? _controller.forward() : _controller.reverse();
              flag = !flag;
            }),
        appBar: AppBar(title: const Text("Title")),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SlidingBox(
                controller: _controller,
                color: Colors.blue[300],
                curve: const Interval(0, 0.2)),
            SlidingBox(
                controller: _controller,
                color: Colors.blue[500],
                curve: const Interval(0.2, 0.4)),
            SlidingBox(
                controller: _controller,
                color: Colors.blue[700],
                curve: const Interval(0.4, 0.6)),
            SlidingBox(
                controller: _controller,
                color: Colors.blue[900],
                curve: const Interval(0.6, 0.8)),
            SlidingBox(
                controller: _controller,
                color: Colors.blue[100],
                curve: const Interval(0.8, 1.0)),
          ],
        )));
  }
}

class SlidingBox extends StatelessWidget {
  final AnimationController controller;
  final Color? color; // 可空類型
  final Curve curve;
  const SlidingBox(
      {super.key,
      required this.controller,
      required this.color,
      required this.curve});
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        position: controller.drive(
            Tween(begin: const Offset(0.0, 0.0), end: const Offset(1, 0.0))
                .chain(CurveTween(curve: curve))),
        child: Container(
          width: 120,
          height: 60,
          color: color,
        ));
  }
}
