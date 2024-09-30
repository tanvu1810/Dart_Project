import 'package:flutter/material.dart';
import 'package:quiz_game/summary/question_indentifier.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({
    super.key,
    required this.itemData,
  });
  final Map<String, Object> itemData;
  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['Correct_Answer'] == itemData['User_Answer'];
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIndentifier(
            correctAnswer: isCorrectAnswer,
            indexQuestion: itemData['Question_Index'] as int,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['Question'] as String,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  itemData['Correct_Answer'] as String,
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                ),
                Text(
                  itemData['User_Answer'] as String,
                  style: const TextStyle(
                    color: Colors.red,
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
