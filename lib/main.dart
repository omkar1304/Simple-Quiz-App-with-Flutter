import 'package:flutter/material.dart';
import 'package:flutter_apps/quiz.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionndex = 0;
  var totalscore = 0;

  reset() {
    setState(() {
    questionndex = 0;
    });
  }

  click() {
    // totalscore += score;
    setState(() {
      questionndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var quiz = [
      {
        'question': "what's your favorite game?",
        'answer': ["COD", "BGMI", "FF", "COC"],
      },
      {
        'question': "what's your favorite gun?",
        'answer': [
          "M416",
          "M762",
          "AWM",
          "AKM",
        ],
      },
      {
        'question': "what's your favorite map?",
        'answer': [
          "Erangle",
          "Vikendi",
          "Miramar",
          "Sanohak",
        ]
      }
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Omkar Quiz App'),
          ),
          body: questionndex < quiz.length
              ? Quiz(
                  click: click,
                  questionndex: questionndex,
                  quiz: quiz,
                )
              : Result(reset)),
    );
  }
}
