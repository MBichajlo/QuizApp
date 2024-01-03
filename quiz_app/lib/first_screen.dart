import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  static const pad = SizedBox(height: 50);
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              scale: 2,
            ),
            pad,
            const StyledText("Learn flutter the fun way!", Colors.white, 30.0),
            pad,
            FilledButton(
              onPressed: () {},
              child: const StyledText("Start quiz", Colors.white, 25.0),
            )
          ],
        ),
      ),
    );
  }
}
