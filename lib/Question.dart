import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  Question(this.question);
  final String question;
  @override
  Widget build(BuildContext context) {
    return Text(
      question,
      style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
    );
  }
}
