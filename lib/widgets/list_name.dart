import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListName extends StatelessWidget {
  ListName({super.key});

  final _suggestions = <WordPair>[];
  final _biggerFont =
      const TextStyle(fontSize: 18, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Click');
      },

      child: ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, i) {
        if (i.isOdd) {
          return const Divider();
        }
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    ));
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
        title: Text(
          pair.asPascalCase,
          style: _biggerFont,
        ),
        trailing:const FaIcon(
          FontAwesomeIcons.heart,
          color: Colors.red,
        ));
  }
}
