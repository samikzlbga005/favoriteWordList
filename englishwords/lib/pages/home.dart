import "package:english_words/english_words.dart";
import "package:englishwords/components/word.dart";
import "package:englishwords/pages/myList.dart";
import "package:englishwords/proivder/favorite_provider.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:string_extension/string_extension.dart";

import "../components/search_bar.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("English Words"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyList()));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.list),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBar(),
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Word(),
            ),
          ],
        ),
      ),
    );
  }
}
