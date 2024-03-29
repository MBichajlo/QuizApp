import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.chosenAnswers, {super.key});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index':i,
        'question':questions[i].text,
        'correct_answer':questions[i].answers[0],
        'user_answer':chosenAnswers[i]
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
            Text("You answered question correctly!"),
            SizedBox(
              height: 30,
            ),
            //list
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: Text("dummy text"),
            ),
          ],
        ),
      ),
    );
  }
}
