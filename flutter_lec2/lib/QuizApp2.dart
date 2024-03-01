import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State<QuizApp> createState() => _QuizApp();
}

class _QuizApp extends State<QuizApp> {
  List<Map> allQuestions = [
    {
      "Question": "Who is the Founder of Microsoft?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerno": 2,
    },
    {
      "Question": "Who is the Founder of Apple?",
      "options": [
        "Steve Jobs",
        "Jeff Bezos",
        "Elon Musk",
        "Bill Gates",
      ],
      "answerno": 0,
    },
    {
      "Question": "Who is the Founder of Amazon?",
      "options": ["Jeff Bezos", "Bill Gates", "Elon Musk", "Steve Jobs"],
      "answerno": 0,
    },
    {
      "Question": "Who is the Founder of SpaceX?",
      "options": ["Steve Jobs", "Bill Gates", "Elon Musk", "Jeff Bezos"],
      "answerno": 2,
    },
    {
      "Question": "Who is the Founder of Google?",
      "options": ["Steve Jobs", "Larry Page", "Bill Gates", "Elon Musk"],
      "answerno": 1,
    },
  ];

  bool isQuestionScreenb = true;
  int questionIndex = 0;
  int noOfCorrectIndex = 0;
  int selectedAnswerIndex = -1;

  MaterialStatePropertyAll<Color?> checkAnswer(int buttonIndex) {
    if (selectedAnswerIndex != -1) {
      if (buttonIndex == allQuestions[questionIndex]["answerno"]) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (buttonIndex == selectedAnswerIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  void vaildateCurrentPage() {
    if (selectedAnswerIndex == -1) {
      return;
    }

    if (selectedAnswerIndex == allQuestions[questionIndex]["answerno"]) {
      noOfCorrectIndex += 1;
    }

    if (selectedAnswerIndex != -1) {
      if (questionIndex == allQuestions.length - 1) {
        setState(() {
          isQuestionScreenb = false;
        });
      }
      selectedAnswerIndex = -1;
      setState(() {
        questionIndex += 1;
      });
    }
  }

  Scaffold isQuestionScreen() {
    if (isQuestionScreenb == true) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 197, 163, 203),
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: const Text(
            "Quiz APP",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w800, color: Colors.white),
          ),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Question:",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text("${questionIndex + 1}/${allQuestions.length}",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 400,
              height: 60,
              child: Text(
                allQuestions[questionIndex]["Question"],
                style:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (selectedAnswerIndex == -1) {
                  setState(() {
                    selectedAnswerIndex = 0;
                  });
                }
              },
              style: ButtonStyle(backgroundColor: checkAnswer(0)),
              child: Text(
                "A.${allQuestions[questionIndex]["options"][0]}",
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (selectedAnswerIndex == -1) {
                  setState(() {
                    selectedAnswerIndex = 1;
                  });
                }
              },
              style: ButtonStyle(backgroundColor: checkAnswer(1)),
              child: Text(
                "B.${allQuestions[questionIndex]["options"][1]}",
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (selectedAnswerIndex == -1) {
                  setState(() {
                    selectedAnswerIndex = 2;
                  });
                }
              },
              style: ButtonStyle(backgroundColor: checkAnswer(2)),
              child: Text(
                "C.${allQuestions[questionIndex]["options"][2]}",
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (selectedAnswerIndex == -1) {
                  setState(() {
                    selectedAnswerIndex = 3;
                  });
                }
              },
              style: ButtonStyle(backgroundColor: checkAnswer(3)),
              child: Text(
                "D.${allQuestions[questionIndex]["options"][3]}",
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            vaildateCurrentPage();
          },
          backgroundColor: Colors.purple,
          child: const Icon(Icons.forward, color: Colors.yellow),
        ),
      );
    } else {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: const Text("QuizApp",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                )),
          ),
          body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 30,
            ),
            Image.network(
              "https://www.google.com/imgres?imgurl=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F35%2F37%2F19%2F3537199ac5bfab8116eacdd2c69cc9c4.png&tbnid=IHIUMTBilYWQpM&vet=12ahUKEwiQnrn62LyEAxVvnmMGHZWBBQkQMygFegQIARBY..i&imgrefurl=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F850969292089915573%2F&docid=-59nIOfJeIcC8M&w=394&h=326&q=sudarshan%20chakra%20indina%20flag&ved=2ahUKEwiQnrn62LyEAxVvnmMGHZWBBQkQMygFegQIARBY",
              height: 400,
              width: 300,
            ),
            const Text("Congratulation!!!",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                )),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "You Have Completed The Quiz",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 15),
            Text("$noOfCorrectIndex/${allQuestions.length}"),
            ElevatedButton(
              onPressed: () {
                noOfCorrectIndex = 0;
                selectedAnswerIndex = -1;
                questionIndex = 0;
                isQuestionScreenb = true;
                setState(() {});
              },
              child: const Text("Reset",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white)),
            )
          ]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
