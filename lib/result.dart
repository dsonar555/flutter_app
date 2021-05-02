import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final Function resetHandler;

  Result(this.totalScore,this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it';
    if(totalScore <= 8) {
      resultText = "You are awesome and innocent like Divya!";
    } else if (totalScore <= 14) {
      resultText = "You are little lazy like pooja!";
    } else if (totalScore <= 18) {
      resultText = "You have no time for your friends like maitri!";
    } else{
      resultText = "You are too lazy and kaamchor like motu and bad like kevin!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center (
        child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style:TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,),
          TextButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz'),
            style: TextButton.styleFrom(
              primary:Colors.black,
            ),
          )
        ])
    );
  }
}


