import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.deepPurpleAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 300,
                  color: Colors.white,
                ),
                const SizedBox(height: 20),
                Text(
                  'Learn Flutter The Fun Way !',
                  style: GoogleFonts.aBeeZee(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_right_alt),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        40,
                      ),
                      side: const BorderSide(
                        width: 2,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  label: const Text('Start Quiz'),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
