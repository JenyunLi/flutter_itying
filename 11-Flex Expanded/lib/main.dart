import 'package:flutter/material.dart';
// import './01padding .dart';
// import './02row.dart';
// import './03column.dart ';
// import './04flex.dart';
// import './05 Expanded.dart';
// import './06 LayoutDemo.dart';
import './07 LayoutDemo02.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
