import 'package:flutter/material.dart';

class Ques extends StatelessWidget {
  final String questionText;
  Ques(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10.2),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ));
  }
}
