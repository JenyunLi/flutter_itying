import 'package:flutter/material.dart';
// import './01Stack.dart';
// import './02StackAlign.dart';
// import './03ListRow.dart';
// import './04ListContainer.dart';
// import '05Align.dart';
import './07ColumnSizedBox.dart';

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
