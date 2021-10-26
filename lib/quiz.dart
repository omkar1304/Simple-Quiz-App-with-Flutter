import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final VoidCallback click;
  final List<Map<String, Object>> quiz;
  final int questionndex;
  Quiz({
      required this.click, 
      required this.quiz, 
      required this.questionndex
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          quiz[questionndex]['question'].toString(),
        ),
        ...(quiz[questionndex]['answer'] as List<String>)
            .map((answer) {
          return Answer(click, answer);
        }).toList()
      ],
    );
  }
}
