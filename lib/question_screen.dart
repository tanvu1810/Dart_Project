import 'package:flutter/material.dart';
import 'package:quiz_game/answer_button.dart';
import 'package:quiz_game/data/question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectedAnswer});
  // Hàm ẩn danh truyền vào câu trả lời khi nhấn button
  final void Function(String answer) onSelectedAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  // Biến lưu trữ chỉ số câu hỏi hiện tại
  int currentQuestionIndex = 0;
  // Hàm tăng chỉ số câu hỏi khi nhấn nút
  void answerQuestion(String answer) {
    widget.onSelectedAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Biến gán giá trị đối tượng questions
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(
          40,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            // Trả về số câu trả lời có trong map
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    answerQuestion(answer); // Khi bấm nút thì thực thi luôn
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
