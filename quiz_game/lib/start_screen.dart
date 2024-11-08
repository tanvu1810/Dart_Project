import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.onStart, {super.key});
  final void Function() onStart;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 400,
            color: Colors.deepPurple,
          ),
          const SizedBox(height: 40),
          Text(
            'Learn Flutter The Fun Way !',
            style: GoogleFonts.aBeeZee(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 40),
          TextButton.icon(
            onPressed: onStart,
            style: TextButton.styleFrom(
              backgroundColor: Colors.purple.shade300,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  40,
                ),
              ),
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
            ),
            label: const Text(
              'Start Quiz',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
