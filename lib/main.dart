import 'package:flutter/material.dart';
import 'package:new_kbc_app/page1.dart';
import 'package:new_kbc_app/page2.dart';
import 'lose_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: myQuiz(),
      routes: {
        '/': (context) => myQuiz(),
        '/lose': (context) => losePage(),
        '/page2': (context) => page2(),
      },
    ),
  );
}
