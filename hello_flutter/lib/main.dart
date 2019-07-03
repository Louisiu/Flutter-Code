// dart 面向对象
// Widget 小部件
// 所有的部件分为两大类：有状态 Stateful ; 无状态 Stateless
// build 渲染（将小部件渲染到界面）
// 抽取部件

import 'package:flutter/material.dart';

import 'model/car.dart';
import 'model/listview_demo_dart.dart';

void main() {
  runApp(Center(
    child: App(),
  ));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(//
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FlutterDemo'),
      ),
      body: ListViewDemo(),
    );
  }
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
