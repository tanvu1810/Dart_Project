import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Text('question'),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: const Text('answers'),
            )
          ],
        ),
      ),
    );
  }
}
