import 'package:flutter/material.dart';
import './quize.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var quesIndex = 0;
  var _totalScore=0;
  void _ans(int score) {
    setState(() {
      _totalScore=_totalScore+score;
      quesIndex = quesIndex + 1;
    });

    print('Ans is slected');
  }
  void _Reset() {
    setState(() {
      _totalScore=0;
      quesIndex = 0;
    });
 
  }

  @override
  Widget build(BuildContext context) {
    var qes = [
      {
        'questionText': 'what is your favorite colour?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'BLUE', 'score': 20},
          {'text': 'GREEN', 'score': 30},
          {'text': 'RED', 'score': 40}
        ]
      },
      {
        'questionText': 'what is your favorite Animal?',
        'answers': [
          {'text': 'COW', 'score': 10},
          {'text': 'DOG', 'score': 30},
          {'text': 'PIG', 'score': 20},
        ]
      },
      {
        'questionText': 'who is your favorite actor?',
        'answers': [
          {'text': 'DQ', 'score': 30},
          {'text': 'VIKRAM', 'score': 20},
          {'text': 'VJAY', 'score': 10},
        ]
      },
    ];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title:
                  quesIndex < qes.length ? Text('Quize') : Text('Completed!'),
            ),
            body: quesIndex < qes.length
                ? quize(
                    answers: _ans,
                    index: quesIndex,
                    qutions: qes,
                  )
                : Result(_totalScore,_Reset)));
  }
}
