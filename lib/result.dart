import 'package:flutter/material.dart';
import 'package:quiz_copy/final_screen.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetQuiz;
  const Result(this.score, this.resetQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    bool failed = score <= 3;

    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: failed
                  ? Column(
                      children: [
                        TextButton(
                            onPressed: resetQuiz,
                            child: const Text(
                              'Retake the quiz',
                              style: TextStyle(color: Colors.white),
                            )),
                        const SizedBox(
                          height: 25.0,
                        ),
                        Image.asset('assets/hell-no-steve-harvey.gif'),
                      ],
                    )
                  : Image.asset(
                      "assets/us.JPG",
                      height: 500,
                      width: 400,
                      fit: BoxFit.cover,
                    ),
            ),
            //const SizedBox(height: 16),
            Text(
              failed
                  ? 'Oh hell naww!'
                  : 'You can be mine if you push this button',
              style: TextStyle(fontSize: failed ? 24 : 22),
            ),
            TextButton(
              onPressed: () {
                if (failed == true) {
                  resetQuiz();
                } else {
                  Navigator.push(context, FinalScreen.route());
                }
              },
              child:
                  failed ? const Text('You failed') : const Text('Click here'),
            ),
            Text(
              'Score: $score',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
