import 'package:english_words/english_words.dart';
import 'package:englishwords/components/word.dart';
import 'package:flutter/material.dart';

class SearchProvider extends ChangeNotifier {
  String _SearchString = "";
  List<String> resultList = [];
  var textController = TextEditingController();

  void search(String val) {
    _SearchString = val;
    resultList = [];
    all.toList().forEach((element) {
      if (element.startsWith(_SearchString)) {
        resultList.add(element);
      }
    });
    notifyListeners();
  }

  notifyListeners();
}
