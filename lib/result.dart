import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resethandler;
  Result(this.score,this.resethandler);
  String get resultPhase {
    String reText;
    if (score <= 30) {
      reText = 'You areGood';
    } else if (30 < score && score <= 60) {
      reText = 'You are Better';
    } else {
      reText = 'You are Exelent';
    }
    return reText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: ExactAssetImage('src/pop.png'),
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text('\n' + resultPhase,
            style: TextStyle(
                fontSize: 50,
                color: Colors.green,
                fontWeight: FontWeight.bold)),
        Text(
          '\nYour Score is:',
          style: TextStyle(
              fontSize: 40, color: Colors.red, fontWeight: FontWeight.bold),
        ),
        Text('$score',
            style: TextStyle(
                fontSize: 150,
                color: Colors.indigoAccent,
                fontWeight: FontWeight.bold)),
        RaisedButton(
          color: Colors.cyan,
          child: Text(
            'Start again',
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
            
          ),
          onPressed:resethandler,
        )
      ]),
    );
  }
}
