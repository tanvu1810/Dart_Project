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
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chosenAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    selectedAnswers = [];
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget widgetScreen = StartScreen(switchScreen);
    if (activeScreen == 'question-screen') {
      widgetScreen = QuestionScreen(
        onChoosen: chosenAnswer,
      );
    }
    if (activeScreen == 'results-screen') {
      widgetScreen = ResultsScreen(
        onRestart: restartQuiz,
        chosenAnswers: selectedAnswers,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.deepPurpleAccent,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: widgetScreen,
        ),
      ),
    );
  }
}
