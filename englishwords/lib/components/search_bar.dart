import "package:english_words/english_words.dart";
import "package:englishwords/proivder/search_provider.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "../proivder/favorite_provider.dart";

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    final searchProvider = Provider.of<SearchProvider>(context, listen: false);
    final provider = Provider.of<FavoriteProvider>(context, listen: false);
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Container(
        padding: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
            color: Colors.grey[350], borderRadius: BorderRadius.circular(20)),
        child: TextField(
            controller: searchProvider.textController,
            onChanged: (value) {
              searchProvider.search(searchProvider.textController.text);
            },
            cursorColor: Colors.black,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              labelText: 'Search',
              labelStyle: TextStyle(
                color: Colors.black,
              ),
              border: InputBorder.none,
            )),
      ),
    );
  }
}
