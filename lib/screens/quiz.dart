import 'package:flutter/material.dart';
import 'package:food_ordering/screens/quiz_brain.dart';
import 'package:food_ordering/screens/result.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  // List<String> question = [
  //   'We’ve made significant changes to flutter',
  //   'We have not made significant changes to flutter'
  //       'flutter was released in 2017'
  // ];
  // List<bool> answers = [true, false, true];
  List<Question> questions = [
    Question(q: 'We’ve made significant changes to flutter', a: true),
    Question(q: 'We have not made significant changes to flutter', a: false),
    Question(q: 'flutter was released in 2017', a: true)
  ];
  int questionindex = 0;
  int correctAnswers = 0;
  int incorrectAnswers = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff081c15),
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  questions[questionindex].questionName!,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 65,
                      margin: EdgeInsets.only(left: 22, right: 22),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                        onPressed: () {
                          final iscorrect =
                              questions[questionindex].questionAnswer;
                          setState(() {
                            if (questionindex < questions.length - 1) {
                              questionindex++;
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Result(
                                        answers: correctAnswers,
                                        falses: incorrectAnswers),
                                  ));
                            }
                          });
                          if (iscorrect == true) {
                            print('waa sax');
                            setState(() {
                              correctAnswers += 1;
                            });
                          } else {
                            print('waa qalad');
                            setState(() {
                              incorrectAnswers += 1;
                            });
                          }
                        },
                        child: Text(
                          'True,',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 65,
                      margin: EdgeInsets.only(left: 22, right: 22, bottom: 22),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        onPressed: () {
                          final isIncorrect =
                              questions[questionindex].questionAnswer;
                          setState(() {
                            if (questionindex < questions.length - 1) {
                              questionindex++;
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Result(
                                      answers: correctAnswers,
                                      falses: incorrectAnswers),
                                ),
                              );
                            }
                          });
                          if (isIncorrect == false) {
                            print('waa qalad');
                            setState(() {
                              incorrectAnswers += 1;
                            });
                          } else {
                            print('waa sax');
                            setState(() {
                              correctAnswers += 1;
                            });
                          }
                        },
                        child: Text(
                          'False',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
