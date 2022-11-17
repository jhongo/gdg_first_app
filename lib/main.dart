import 'package:flutter/material.dart';
import 'package:gdg_first_app/class/class.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      title: 'Welcome Flutter',
      debugShowCheckedModeBanner: false,
      home: RandomWords()
    );
  }
}



