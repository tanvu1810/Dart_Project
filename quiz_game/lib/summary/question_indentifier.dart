// import 'package:flutter/material.dart';

// class QuestionIndentifier extends StatelessWidget {
//   const QuestionIndentifier({
//     super.key,
//     required this.isCorrectAnswer,
//     required this.questionIndex,
//   });
//   final bool isCorrectAnswer;
//   final int questionIndex;
//   @override
//   Widget build(BuildContext context) {
//     int questionNumber = questionIndex + 1;
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 10),
//       width: 30,
//       height: 30,
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//           color: isCorrectAnswer ? Colors.red : Colors.blue,
//           borderRadius: BorderRadius.circular(100)),
//       child: Text(
//         questionNumber.toString(),
//         style: const TextStyle(
//           color: Colors.white,
//           fontSize: 15,
//           fontWeight: FontWeight.w600,
//         ),
//         textAlign: TextAlign.center,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class QuestionIndentifier extends StatelessWidget {
  const QuestionIndentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });
  final bool isCorrectAnswer;
  final int questionIndex;
  @override
  Widget build(BuildContext context) {
    int questionNumber = questionIndex + 1;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isCorrectAnswer ? Colors.green : Colors.blue,
          borderRadius: BorderRadius.circular(100)),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
