import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.answers, required this.falses});
  final int answers;
  final int falses;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'The Correct Answers are $answers',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            'The incorrect Answers are $falses',
            style: TextStyle(fontSize: 24),
          )
        ],
      )),
    );
  }
}
