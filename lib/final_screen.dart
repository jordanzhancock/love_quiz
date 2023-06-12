import 'package:flutter/material.dart';

class FinalScreen extends StatelessWidget {
  const FinalScreen({super.key});
  static route() => MaterialPageRoute(
        builder: (context) => const FinalScreen(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/heart.gif'),
            Text(
              'Will you be my girlfriend?',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 28,
                  color: Colors.pink[400]),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text(
                      "You're my girlfriend now",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: 'Arial'),
                    ),
                    backgroundColor: Colors.pink,
                  ));
                },
                child: const Text(
                  'Yes',
                  style: TextStyle(
                      fontFamily: 'Arial', fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
