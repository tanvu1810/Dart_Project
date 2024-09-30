import 'package:flutter/material.dart';

class QuestionIndentifier extends StatelessWidget {
  const QuestionIndentifier({
    super.key,
    required this.correctAnswer,
    required this.indexQuestion,
  });
  final bool correctAnswer;
  final int indexQuestion;
  @override
  Widget build(BuildContext context) {
    final numberQuestion = indexQuestion + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: correctAnswer ? Colors.blue : Colors.red,
        borderRadius: BorderRadius.circular(
          100,
        ),
      ),
      child: Text(
        numberQuestion.toString(),
        style: const TextStyle(
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
