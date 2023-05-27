import 'package:flutter/material.dart';
import 'package:new_kbc_app/quesionBank.dart';

//import 'package:project_quiz_app/questionBnak.dart';

/*class page2 extends StatelessWidget {
  // const page2({super.key, required this.doIt});

// const page2({Key? key}) : super(key: key);

  final int doIt = ModalRoute.of(context)!.settings.arguments as ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: const Color(0xff000000),
              height: 100,
              width: 100,
              child: Image.asset(
                "asset/images/fire-cracker.png",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Your Answer is Correct",
              style: TextStyle(
                color: Colors.red,
                fontSize: 18,
              ),
            ),
            const Center(
              child: SizedBox(
                height: 30,
              ),
            ),
            Text(
              "You Won\nRs $doIt",
              style: const TextStyle(fontSize: 18, color: Colors.amber),
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
                "Next",
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}*/
class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    int doIt = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: const Color(0xff000000),
              height: 100,
              width: 100,
              child: Image.asset(
                "assets/images/fire-cracker.png",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Your Answer is Correct",
              style: TextStyle(
                color: Colors.red,
                fontSize: 18,
              ),
            ),
            const Center(
              child: SizedBox(
                height: 30,
              ),
            ),
            Text(
              "You Won\nRs $doIt",
              style: const TextStyle(fontSize: 18, color: Colors.amber),
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
                "Next",
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
