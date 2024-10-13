// import 'package:flutter/material.dart';
// import 'package:quiz_game/summary/question_item.dart';

// class QuestionSummary extends StatelessWidget {
//   const QuestionSummary(this.summaryData, {super.key});
//   final List<Map<String, Object>> summaryData;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 500,
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             ...summaryData.map(
//               (data) {
//                 return QuestionItem(data);
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:quiz_game/summary/question_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...summaryData.map(
              (data) {
                return QuestionItem(data);
              },
            )
          ],
        ),
      ),
    );
  }
}
