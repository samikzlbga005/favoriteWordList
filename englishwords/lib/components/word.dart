import 'package:english_words/english_words.dart';
import 'package:englishwords/proivder/search_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../proivder/favorite_provider.dart';

class Word extends StatelessWidget {
  const Word({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context, listen: false);
    final searchProvider = Provider.of<SearchProvider>(context, listen: false);
    var wordList = context.watch<FavoriteProvider>().getWords;
    var searchList = context.watch<SearchProvider>().resultList;
    List<String> words = provider.listWords();
    if (searchProvider.textController.text.isEmpty ||
        searchProvider.resultList.length == 0)
      words = wordList;
    else
      words = searchList;
    return ListView.builder(
      itemCount: searchList.isEmpty ? words.length : searchList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 25, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                words[index],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  provider.toggle(words[index]);
                },
                child: !provider.isExist(words[index])
                    ? Icon(
                        Icons.add_circle_outline,
                        size: 30,
                      )
                    : Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 30,
                      ),
              ),
            ],
          ),
        );
      },
    );
  }
}
