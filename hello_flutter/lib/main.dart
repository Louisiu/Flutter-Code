// dart 面向对象
// Widget 小部件
// 所有的部件分为两大类：有状态 Stateful ; 无状态 Stateless
// build 渲染（将小部件渲染到界面）

import 'package:flutter/material.dart';

void main() {
  runApp(Center(
    child: MyWidget(),
  ));
}

// 一个 Widget 就是一个类
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _textStyle = TextStyle(
      color: Colors.red,
      fontSize: 40.0,
      fontWeight: FontWeight.bold,
    );

    // TODO: implement build
    return Center(
      child: Text(
        'hello flutter',
        textDirection: TextDirection.ltr,
        style: _textStyle,
      ),
    );
  }
}
