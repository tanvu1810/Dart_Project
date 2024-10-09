import 'package:flutter/material.dart';
import 'package:quiz_game/data/question.dart';
import 'package:quiz_game/question_screen.dart';
import 'package:quiz_game/results_screen.dart';
import 'package:quiz_game/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer =
      []; // Tao danh sach de luu tru cau tra loi cua nguoi dung
  var activeScreen = 'start-screen'; // Luu tru bien man hinh
  // Ham thay doi man hinh bat dau thanh man hinh cau hoi
  void switchScreen() {
    setState(
      () {
        activeScreen = 'question-screen';
      },
    );
  }

  // Ham luu trữ câu trả lờivào danh sách và thay đổi màn hình khi trả lời hết số câu hỏi
  void chosenAnswers(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    // Biến nhận màn hình hiện tại
    Widget screenWidget = StartScreen(switchScreen);
    // Biểu thức điều kiện nếu thỏa mãn thì chuyển đổi màn hình khác
    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectedAnswer: chosenAnswers,
      );
    }
    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        onRestart: restartQuiz,
        selectedAnswer: selectedAnswer,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white24, Colors.indigo],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: screenWidget),
      ),
    );
  }
}
