import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';


class FirstScreen extends StatelessWidget {
  const FirstScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;
  static const pad = SizedBox(height: 50);
  @override
  Widget build(context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              scale: 2,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            pad,
            const StyledText("Learn flutter the fun way!", Colors.white, 30.0),
            pad,
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              label: const Text("Start quiz"),
              icon: const Icon(Icons.arrow_forward),
            )
          ],
        ),
      );
  }
}
