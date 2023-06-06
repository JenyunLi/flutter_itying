import 'package:flutter/material.dart';
import "./res/listData.dart";

class MyHomePage extends StatelessWidget { 
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (context,i){
        return ListTile(
          leading: Image.network(listData[i]["imageUrl"]),
          title: Text(listData[i]["title"]),
          subtitle:Text(listData[i]["author"]) ,
        );
      }
    );
  }
}
