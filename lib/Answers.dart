import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Answer(this.answerText, this.callback, {super.key});
  final String answerText;
  final Function(String) callback;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => callback(answerText),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
      ),
      child: Text(answerText),
    );
  }
}
