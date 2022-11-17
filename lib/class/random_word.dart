import 'package:flutter/material.dart';
import 'package:gdg_first_app/widgets/widgets.dart';

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:const Color(0xFFe5e5e5),
      appBar: AppBar(
        title:const Text('Startup Name Generator'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() => ListName();
}


