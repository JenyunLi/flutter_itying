import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(      
      children: [
        Expanded(
          flex: 1,
          child: IconContainer(Icons.home),  //这个元素设置宽度是没有效果的
        ),
        IconContainer(
            Icons.ac_unit_sharp,
            color: Colors.orange,
        )
      ],
    );
  }
}

//自定义IconContainer
class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;
  IconContainer(this.icon, {Key? key, this.color = Colors.red})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      width: 80,
      color: color,
      child: Icon(icon, color: Colors.white, size: 28),
    );
  }
}
