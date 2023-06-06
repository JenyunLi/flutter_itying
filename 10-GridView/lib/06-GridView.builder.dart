import 'package:flutter/material.dart';
import './res/listData.dart';
 
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget _initGridViewData(context, index) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
      child: Column(
        children: [
          Image.network(listData[index]["imageUrl"]),
          const SizedBox(height: 10),
          Text(listData[index]["title"], style: const TextStyle(fontSize: 18))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount:listData.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          crossAxisSpacing: 10, //水平子Widget之间间 距
          mainAxisSpacing: 10, //垂直子Widget之间间 距
          maxCrossAxisExtent: 150, // 子元素为固定最大长度
          childAspectRatio: 0.8, //宽高比          
          ),
        // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisSpacing: 10, //水平子Widget之间间 距
        //   mainAxisSpacing: 10, //垂直子Widget之间间 距
        //   crossAxisCount: 2, //一行显示多少个元素
        //   childAspectRatio: 1, //宽高比
        // ),
        itemBuilder: _initGridViewData);
  }
}
