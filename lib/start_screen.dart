import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.quizStart, {super.key});
  final void Function() quizStart;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Colors.white,
          ),
          const SizedBox(height: 30),
          Text(
            'Learn Flutter The Fun Way !',
            style: GoogleFonts.aBeeZee(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          TextButton.icon(
            onPressed: quizStart,
            icon: const Icon(Icons.arrow_right_alt),
            style: TextButton.styleFrom(
              backgroundColor: Colors.deepPurple.shade600,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  40,
                ),
                side: const BorderSide(
                  width: 2,
                  color: Colors.purpleAccent,
                ),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
            ),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
