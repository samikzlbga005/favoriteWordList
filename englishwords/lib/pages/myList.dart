import 'package:flutter/material.dart';

import '../components/my_words_list.dart';
import '../components/search_bar.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY WORDS"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.9,
          width: MediaQuery.of(context).size.width * 0.9,
          child: MyWordsList(),
        ),
      ),
    );
  }
}
