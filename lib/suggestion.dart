import 'dart:collection';

import 'package:english_words/english_words.dart';

final Suggestion suggestion = Suggestion();

class Suggestion {
  final List<WordPair> _suggestedWords = <WordPair>[];

  Suggestion();

  Suggestion.clone(Suggestion suggestion) {
    _suggestedWords.addAll(suggestion._suggestedWords);
  }
  int get suggestionCount => _suggestedWords.length;

  UnmodifiableListView<WordPair> get suggestedWords =>
      UnmodifiableListView(_suggestedWords);

  void add(WordPair wordPair) {
    _updateCount(wordPair);
  }

  void addMulti(List<WordPair> wordPairs) {
    for (WordPair w in wordPairs) {
      _updateCount(w);
    }
  }

  void _updateCount(WordPair w) {
    _suggestedWords.add(w);
  }
}
