import 'package:flutter/material.dart';
import 'package:myapp/word_item.dart';
import 'package:myapp/word_provider.dart';

class BlocFavoritePage extends StatelessWidget {
  BlocFavoritePage();

  static const routeName = 'favorite';

  @override
  Widget build(BuildContext context) {
    final word = WordProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('your favorite'),
      ),
      body: StreamBuilder<List<WordItem>>(
        stream: word.items,
        builder: (context, snapshot) {
          if (snapshot.data == null || snapshot.data.isEmpty) {
            return Center(
              child: Text('empty'),
            );
          }

          final tiles = snapshot.data.map((item) {
            return new ListTile(
              title: new Text(item.name),
            );
          });

          final divided =
              ListTile.divideTiles(tiles: tiles, context: context).toList();

          return new ListView(
            children: divided,
          );
        },
      ),
    );
  }
}
