import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});
  final void Function() onTap;
  final String answerText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        child: ElevatedButton(
          onPressed: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 8,
            ),
            child: Text(
              answerText,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
