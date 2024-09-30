import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_game/data/question.dart';
import 'package:quiz_game/summary/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.onRestart,
    required this.chosenAnswers,
  });

  final void Function() onRestart; // Khai bao ham an danh de truyen vao button
  final List<String>
      chosenAnswers; // Khai bao thuoc tinh danh sach cac cau hoi do nguoi dung chon

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'Question_Index': i,
        'Question': questions[i].text,
        'Correct_Answer': questions[i].answers[0],
        'User_Answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final totalCorrectAnswers = getSummaryData()
        .where((data) => data['Correct_Answer'] == data['User_Answer'])
        .length;
    final sumQuestion = questions.length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ban da tra loi dung $totalCorrectAnswers trong tong so $sumQuestion',
              style: GoogleFonts.aBeeZee(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            QuestionSummary(summaryData: getSummaryData()),
            const SizedBox(height: 30),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                  side: const BorderSide(
                    width: 1,
                    color: Colors.white,
                  ),
                ),
              ),
              icon: const Icon(Icons.restart_alt),
              label: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
