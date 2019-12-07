import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function stateHandler;
  final String answerText;
  Answer(this.stateHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: OutlineButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
        
        color: Colors.blue,
         borderSide: BorderSide(color: Colors.blue),
        textColor: Colors.lightBlue,
        child: Text(answerText, style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
        onPressed: stateHandler,
      ),
    );
  }
}
