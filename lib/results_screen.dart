import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_game/data/question.dart';
import 'package:quiz_game/summary/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.onRestart,
    required this.selectedAnswer,
  });
  final void Function() onRestart;
  final List<String> selectedAnswer;
  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswer.length; i++) {
      summary.add({
        'question-index': i,
        'question': questions[i].text,
        'correct-answer': questions[i].answers[0],
        'user-answer': selectedAnswer[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final totalQuestion = questions.length;
    final totalCorrectAnswer = getSummaryData().where(
      (data) {
        return data['correct-answer'] == data['user-answer'];
      },
    ).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bạn đã trả lời đúng $totalCorrectAnswer câu trong số $totalQuestion câu hỏi !',
              style: GoogleFonts.aBeeZee(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            QuestionSummary(getSummaryData()),
            const SizedBox(height: 40),
            OutlinedButton.icon(
              onPressed: onRestart,
              style: OutlinedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                side: const BorderSide(width: 2, color: Colors.lightBlue),
                foregroundColor: Colors.white,
                backgroundColor: Colors.deepPurple.shade400,
              ),
              icon: const Icon(Icons.restart_alt),
              label: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
