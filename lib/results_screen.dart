import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({required this.chosenAnswers, super.key});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index' : i,
        'question': questions[i],
        'correct_answer': questions[i].answers[0],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answerd!'),
            const SizedBox(
              height: 30,
            ),
            const Text('List of KAKA'),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: const Text('Restart!'))
          ],
        ),
      ),
    );
  }
}
