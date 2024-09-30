import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});
  final void Function() onTap;
  final String answerText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 2,
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 160, 91, 172),
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 10,
            )),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 17),
        ),
      ),
    );
  }
}
