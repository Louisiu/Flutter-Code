import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _title = '赞美模块';
  final String _subtitle = '善良';

  @override
  Widget build(BuildContext context) {
    return Text(
      '<$_title:$_subtitle>你的身上有一种独特的美丽，看不见、摸不着，它需要我们用心来感受，不以善 小而不为，不以恶小而为之。你拥有一颗广博的心，没有任何私心杂念，从来不 知道设防别人。你不会炫耀，不会卖弄，不随意的抬高自己。你做过的事，说过 的话，动人之处都会存在心里，点点滴滴积累起来，慢慢地令你周身透出可亲、 动人和美丽的光芒，充满迷人的魅力。',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: '赞美模块',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
            children: <TextSpan>[
          TextSpan(
            text: '善良',
            style: TextStyle(
              fontSize: 16,
              color: Colors.green,
            ),
          ),
        ]));
  }
}
