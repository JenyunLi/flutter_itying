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
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        // 让程序和手机的刷新頻率統一
        vsync: this,
        duration: const Duration(seconds: 1),
        lowerBound: 0.5,
        upperBound: 1,
        );
    _controller.addListener(() {
      print(_controller.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () {
            _controller.repeat();

          }),
      appBar: AppBar(
        title: const Text('RotationTransition'),
      ),
      body: Center(
          child: Column(
        children: [
          FadeTransition(
            opacity: _controller,
            child: const FlutterLogo(
              size: 120,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 40),
              ElevatedButton(
                  onPressed: () {
                    _controller.forward();
                  },
                  child: const Text("forward")),
              ElevatedButton(
                  onPressed: () {
                    _controller.reverse();
                  },
                  child: const Text("reverse")),
              ElevatedButton(
                  onPressed: () {
                    _controller.stop();
                  },
                  child: const Text("stop")),
              ElevatedButton(
                  onPressed: () {
                    _controller.reset();
                  },
                  child: const Text("reset")),
            ],
          )
        ],
      )),
    );
  }
}
