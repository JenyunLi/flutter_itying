import 'package:flutter/material.dart';
// import './ListRes.dart';
//  import './CustList.dart';
import './07-ListView.container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter List")),
        body: const MyHomePage(),
      ),
    );
  }
}
