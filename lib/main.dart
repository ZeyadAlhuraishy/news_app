import 'package:flutter/material.dart';
import 'package:quiz_in_news/pages/home_page.dart';

void main() {
  runApp(QuizNews());
}

class QuizNews extends StatelessWidget {
  const QuizNews({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
