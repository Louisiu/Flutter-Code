import 'package:flutter/material.dart';

import 'car.dart';

class ListViewDemo extends StatelessWidget {
  Widget _cellForRow(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Text(
            datas[index].name,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 18.0,
              fontStyle: FontStyle.values[1],
            ),
          ),
          Container(
            height: 15,
          ),
          Image.network(datas[index].imageUrl),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: datas.length, // flutter 没有组，只有行；组要自己写
      itemBuilder: _cellForRow,
    );
  }
}
