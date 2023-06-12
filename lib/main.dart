import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_copy/quiz.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.pink),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white)),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Be mine?',
            style: TextStyle(fontSize: 40.0, fontFamily: 'Pacifico'),
          ),
        ),
        body: Quiz(),
      ),
    );
  }
}
