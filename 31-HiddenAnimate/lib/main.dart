import 'package:flutter/material.dart';
// import '03-AnimatedContainer.dart';
// import '04-AnimatedPadding.dart';
// import '05-AnimatedOpacity.dart';
// import '06-AnimatedPositioned.dart';
// import '07-AnimatedDefaultTextStyle.dart';
// import '08-AnimatedSwitcher.dart';
// import '09-AnimatedSwitcher transitionBuilder .dart';
import '10-AnimatedSwitcher-Same-Child.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}
