import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  ElevatedButton.icon(
        onPressed: this.selectHandler,
        label: Text(this.answerText),
        icon: Text(''),
        style: ElevatedButton.styleFrom(primary: Colors.deepOrangeAccent),
      ),
    );
  }
}
