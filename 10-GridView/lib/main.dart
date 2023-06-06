import 'package:flutter/material.dart';
// import './01-count-icons.dart';
// import './02-extent.dart';
// import './03-crossAxisCount.dart';
// import './04-maxCrossAxisExtent.dart';
// import './05-listData.dart';
import './06-GridView.builder.dart';
// import './07-images.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter App")),
        body: const HomePage(),
      ),
    );
  }
}
