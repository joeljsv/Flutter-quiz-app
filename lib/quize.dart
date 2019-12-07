import 'package:flutter/material.dart';
import './qest.dart';
import './ans.dart';

class quize extends StatelessWidget {
  final List<Map<String, Object>> qutions;
  final Function answers;
  final int index;
  quize({this.qutions, this.answers, this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Ques(qutions[index]['questionText']),
        ...(qutions[index]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(()=>answers(answer['score']), answer['text']);
        }).toList()
      ],
    ));
  }
}
