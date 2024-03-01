import 'package:flutter/material.dart';

//import 'asslec4.dart';
//import 'asslec5.dart';
//import 'asslec6.dart';
//import 'QuizzApp.dart';
import 'QuizApp2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      //home: Asslec4(),
      //home: Asslec5(),
      //home: Asslec6(),
      // home: QuizApp(),
      home: QuizApp(),
    );
  }
}
