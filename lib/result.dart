import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Result extends StatelessWidget {
  final VoidCallback reset;
  Result(this.reset);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Center(
        child: Column(
          children: [
            const Text(
              'You did it!!',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              child: TextButton(
                child: Text('Reset Quiz'),
                onPressed: reset,
              ),
              margin: EdgeInsets.all(10),
            ),
            Container(
              child: TextButton(
                child: Text('Quit Quiz'),
                onPressed: () {
                  exit(0);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
