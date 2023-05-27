import 'package:flutter/material.dart';
//import 'package:project_quiz_app/questionBnak.dart';

class losePage extends StatelessWidget {
  const losePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int queIndex = 0;
    return Scaffold(
      body: Container(
        color: const Color(0xff000000),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 120,
              width: 120,
              child: Image.asset(
                "assets/images/lose.png",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "oops!",
              style: TextStyle(
                color: Color(0xffd4d4ff),
                fontSize: 20,
              ),
            ),
            const Center(
              child: SizedBox(
                height: 30,
              ),
            ),
            const Text(
              "Sorry You are\nthe lose the \ngame",
              style: TextStyle(fontSize: 20, color: Color(0xffd4d4ff)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
//padding: EdgeInsets.symmetric(horizontal: 38, vertical: 20),
                primary: const Color(0xff1e1f23),
                onPrimary: const Color(0xffA8A8A9),
                fixedSize: const Size(190, 50),
              ),
              child: const Text(
                "Try again",
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
