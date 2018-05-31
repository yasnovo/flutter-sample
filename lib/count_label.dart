import 'package:flutter/material.dart';

class CountLabel extends StatefulWidget {
  final int favoriteCount;

  CountLabel({Key key, @required this.favoriteCount})
      : assert(favoriteCount >= 0),
        super(key: key);

  @override
  _CountLabelState createState() => new _CountLabelState();
}

class _CountLabelState extends State<CountLabel> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.favoriteCount.toString());
  }
}
