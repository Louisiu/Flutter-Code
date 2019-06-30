// dart 面向对象
// Widget 小部件
// 所有的部件分为两大类：有状态 Stateful ; 无状态 Stateless
// build 渲染（将小部件渲染到界面）
// 抽取部件

import 'package:flutter/material.dart';

import 'model/car.dart';

void main() {
  runApp(Center(
    child: App(),
  ));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
    );
  }
}

class Cell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}

class Home extends StatelessWidget {

  Widget _cellForRow(BuildContext context, int index) {

    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Text(datas[index].name),
          Container(height: 15,),
          Image.network(datas[index].imageUrl),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FlutterDemo'),
      ),
      body: ListView.builder(
        itemCount: datas.length,// flutter 没有组，只有行；组要自己写
        itemBuilder: _cellForRow,
      ),
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
