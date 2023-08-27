import 'package:flutter/material.dart';
import 'package:chapter_five/home_screen.dart';

void main() {
  runApp(const Subhan());
}

class Subhan extends StatelessWidget {
  const Subhan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomeScreen(),
    );
  }
}
