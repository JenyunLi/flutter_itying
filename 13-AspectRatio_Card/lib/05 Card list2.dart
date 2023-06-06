import 'package:flutter/material.dart';
import "./res/listData.dart";

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listData.map((value) {
        return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 20,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(value["imageUrl"], fit: BoxFit.cover),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    value["imageUrl"],
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                title: Text(value["title"]),
                subtitle: Text(value["author"]),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
