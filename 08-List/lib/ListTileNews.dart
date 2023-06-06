import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      children: <Widget>[
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/1.png"),
          title: const Text("国铁集团:保障重点物资运输  新华述评  研讨会举行"),
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/1.png"),
          title: const Text("国铁集团:保障重点物资运输  新华述评  研讨会举行"),
        ),
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/2.png"),
          title: const Text('保监局50天开32罚单 “断供”违规资金为房市降温'),
          subtitle: const Text("中国天气网讯 保监局50天开32罚单 “断供”违规资金为房市降 温"),
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/4.png"),
          title: const Text('普京现身俄海军节阅兵：乘艇检阅军舰'),
        ),
        ListTile(
            leading:
                Image.network("https://www.itying.com/images/flutter/2.png"),
            title: const Text('保监局50天开32罚单 “断供”违规资金为房市降温'),
            subtitle: const Text("中国天气网讯 保监局50天开32罚单 “断供”违规资金为房市降 温"),
            trailing:
                Image.network("https://www.itying.com/images/flutter/4.png")),
        ListTile(
            title: const Text('保监局50天开32罚单 “断供”违规资金为房市降温'),
            subtitle: const Text("中国天气网讯 保监局50天开32罚单 “断供”违规资金为房市降 温"),
            trailing:
                Image.network("https://www.itying.com/images/flutter/5.png")),
      ],
    );
  }
}
