import 'package:english_words/english_words.dart';
import 'package:englishwords/proivder/search_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../proivder/favorite_provider.dart';

class MyWordsList extends StatelessWidget {
  const MyWordsList({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context, listen: false);
    List<String> words = provider.myWords();
    return ListView.builder(
      itemCount: words.length != 0 ? words.length : 0,
      itemBuilder: (context, index) {
        words = context.watch<FavoriteProvider>().words;
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
                onTap: () {},
                child: Icon(
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
