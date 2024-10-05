import 'package:flutter/material.dart';
import 'package:quiz_game/summary/question_indentifier.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem(
    this.data, {
    super.key,
  });
  final Map<String, Object> data;
  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = data['correct-answer'] == data['user-answer'];
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIndentifier(
              isCorrectAnswer: isCorrectAnswer,
              questionIndex: data['question-index'] as int),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['question'] as String,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  data['correct-answer'] as String,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  data['user-answer'] as String,
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
