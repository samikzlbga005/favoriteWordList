import 'package:english_words/english_words.dart';
import 'package:englishwords/components/word.dart';
import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<String> _words = [];
  List<String> get words => _words;
  List<String> getWords = all.toList();

  List<String> listWords() {
    return getWords;
  }

  void toggle(String word) {
    final isExist = _words.contains(word);
    if (isExist) {
      _words.remove(word);
    } else {
      _words.add(word);
    }
    notifyListeners();
  }

  List<String> myWords() {
    return _words;
  }

  bool isExist(String word) {
    final isExist = _words.contains(word);
    return isExist;
  }

  notifyListeners();
}
