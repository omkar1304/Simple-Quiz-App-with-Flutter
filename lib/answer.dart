import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selecthandler;
  final String answer;
  Answer(this.selecthandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextButton(
        child: Text(
          answer,
        ),
        onPressed: selecthandler,
      ),
    );
  }
}
