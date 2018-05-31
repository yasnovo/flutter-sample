import 'package:flutter/material.dart';
import 'package:myapp/models/word.dart';

class FavoritePage extends StatelessWidget {
  final Word word;

  FavoritePage(this.word);

  static const routeName = "/favorite";

  @override
  Widget build(BuildContext context) {
    final tiles = word.items.map((item) {
      return new ListTile(title: new Text(item.name));
    });
    final divided =
        ListTile.divideTiles(tiles: tiles, context: context).toList();
    return new Scaffold(
      appBar: AppBar(title: Text('your favorite')),
      body: new ListView(
        children: divided,
      ),
    );
  }
}
