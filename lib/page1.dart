import 'package:flutter/material.dart';
import 'package:new_kbc_app/quesionBank.dart';

class myQuiz extends StatefulWidget {
  const myQuiz({Key? key}) : super(key: key);

  @override
  State<myQuiz> createState() => _myQuizState();
}

class _myQuizState extends State<myQuiz> {
  int queIndex = 0;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: (queIndex < quesBank.length)
            ? IndexedStack(
                index: queIndex,
                children: quesBank.map((e) {
                  return displayQus(data: e, width: _width);
                }).toList(),
              )
            : Container(
                color: const Color(0xff000000),
                height: double.infinity,
                width: double.infinity,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          "asset/images/fire-cracker.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Congratulation",
                        style: TextStyle(
                          color: Color(0xff5b5f62),
                          fontSize: 20,
                        ),
                      ),
                      const Center(
                        child: SizedBox(
                          height: 20,
                        ),
                      ),
                      const Text(
                        "Game Over",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xffffffff)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          /* Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => myQuiz()),
                          );*/
                          Navigator.of(context).pushNamed('/');
                        },
                        style: ElevatedButton.styleFrom(
//padding: EdgeInsets.symmetric(horizontal: 38, vertical: 20),
                          primary: Color(0xff1e1f23),
                          onPrimary: Color(0xffA8A8A9),
                          fixedSize: Size(190, 50),
                        ),
                        child: const Text(
                          "Restart",
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ),
              ));
  }

  Widget displayQus({required Map data, required double width}) {
    TextStyle myStyle = const TextStyle(
      fontSize: 18,
    );
    return Column(children: [
      Expanded(
        child: Container(
          padding: const EdgeInsets.only(right: 10, left: 10),
          color: data['color'],
          width: width,
          child: Center(
              child: Text(
            """${data['qus']}""",
            style: const TextStyle(
              fontSize: 21,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )),
        ),
      ),
      Expanded(
          child: Container(
        color: const Color(0xff000000),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    /* if (queIndex < quesBank.length - 1) {
                      queIndex++;
                    }*/
                    setState(() {});
                    if (data['A'] == data['trueAns']) {
                      Navigator.of(context).pushReplacementNamed('/page2',
                          arguments: data['price']);
                      // queIndex++;
                    } else {
                      Navigator.of(context).pushReplacementNamed('/lose');
                      //queIndex - 1;
                    }
                    if (data['A'] == data['trueAns']) {
                      if (queIndex < quesBank.length) {
                        queIndex++;
                      }
                    }
                    if (data['A'] != data['trueAns']) {
                      queIndex -= 1;
                    }
                  },
                  style: ElevatedButton.styleFrom(
//padding: EdgeInsets.symmetric(horizontal: 38, vertical: 20),
                      primary: Color(0xff1e1f23),
                      onPrimary: Color(0xffA8A8A9),
                      fixedSize: Size(180, 60)),
                  child: Text(
                    '''${data['A']}''',
                    style: myStyle,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (data['B'] == data['trueAns']) {
                      Navigator.of(context).pushReplacementNamed('/page2',
                          arguments: data['price']);
                      // queIndex++;
                    } else {
                      Navigator.of(context).pushReplacementNamed('/lose');
                      // queIndex - 1;
                    }
                    /*setState(() {});*/
                    if (data['B'] == data['trueAns']) {
                      if (queIndex < quesBank.length) {
                        queIndex++;
                      }
                    }

                    if (data['B'] != data['trueAns']) {
                      queIndex -= 1;
                    }
                  },
                  style: ElevatedButton.styleFrom(
//padding: EdgeInsets.symmetric(horizontal: 38, vertical: 20),
                    primary: const Color(0xff1e1f23),
                    onPrimary: const Color(0xffA8A8A9),
                    fixedSize: const Size(180, 60),
                  ),
                  child: Text(
                    '''${data['B']}''',
                    style: myStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (data['C'] == data['trueAns']) {
                      Navigator.of(context).pushReplacementNamed('/page2',
                          arguments: data['price']);
                      // queIndex++;
                    } else {
                      Navigator.of(context).pushReplacementNamed('/lose');
                      //queIndex - 1;
                    }
                    // setState(() {});
                    if (data['C'] != data['trueAns']) {
                      queIndex -= 1;
                    }
                    if (data['C'] == data['trueAns']) {
                      if (queIndex < quesBank.length) {
                        queIndex++;
                      }
                    }
                  },
                  style: ElevatedButton.styleFrom(
//padding: EdgeInsets.symmetric(horizontal: 38, vertical: 20),
                    primary: const Color(0xff1e1f23),
                    onPrimary: const Color(0xffA8A8A9),
                    fixedSize: const Size(180, 60),
                  ),
                  child: Text(
                    '''${data['C']}''',
                    style: myStyle,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (data['D'] == data['trueAns']) {
                      Navigator.of(context).pushReplacementNamed('/page2',
                          arguments: data['price']);
                      queIndex++;
                    } else {
                      Navigator.of(context).pushReplacementNamed('/lose');
                      queIndex - 1;
                    }
                    setState(() {
                      if (data['D'] == data['trueAns']) {
                        if (queIndex < quesBank.length) {
                          queIndex++;
                        }
                      }
                    });
                    if (data['D'] != data['trueAns']) {
                      queIndex -= 1;
                    }
                  },
                  style: ElevatedButton.styleFrom(
// padding: EdgeInsets.symmetric(horizontal: 38, vertical: 20),
                    primary: const Color(0xff1e1f23),
                    onPrimary: const Color(0xffA8A8A9),
                    fixedSize: const Size(180, 60),
                  ),
                  child: Text(
                    '''${data['D']}''',
                    style: myStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ))
    ]);
  }
}
