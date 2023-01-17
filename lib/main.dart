import 'package:flutter/material.dart';
import 'package:food_ordering/screens/home.dart';
import 'package:food_ordering/screens/quiz.dart';
import 'package:food_ordering/screens/screen_two.dart';

void main() {
  runApp(Food_ordering());
}

class Food_ordering extends StatelessWidget {
  const Food_ordering({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizApp(),
      
    );
  }
}
