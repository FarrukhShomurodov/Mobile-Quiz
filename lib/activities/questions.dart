import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:async';

class QuizScreen extends StatefulWidget {
  final List<Map<String, dynamic>> quiz;

  QuizScreen({required this.quiz});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _questionIndex = 0;
  int i = 1;
  int _score = 0;
  int _remainingTime = 150;
  late Timer _timer;
  bool _quizCompleted = false; // Add this variable

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingTime > 0 && !_quizCompleted) {
          _remainingTime--;
          _checkTimer(); // Check if the timer has reached 0 and the quiz is completed
        } else {
          timer.cancel();
        }
      });
    });
  }

  void _checkTimer() {
    if (_remainingTime <= 0 || _quizCompleted) {
      _timer.cancel();
      showResultDialog();
    }
  }

  void _answerQuestion(int selectedOptionIndex) {
    setState(() {
      if (selectedOptionIndex == widget.quiz[_questionIndex]['answer_index']) {
        _score += 10; // For each correct answer, give 10 points
      }

      if (_questionIndex < widget.quiz.length - 1) {
        _questionIndex++;
        i++;
      } else {
        // Quiz is finished
        _quizCompleted = true;
        _checkTimer(); // Check if the timer is done
      }
    });
  }

  String subjectKey = 'math';

  void showResultDialog() async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Quiz Results'),
          content: Text('You scored $_score points.'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(
                    0xFF270840), // Change this color to the one you want
              ),
              child: Text('Close'),
            ),
          ],
        );
      },
    );
    final prefs = await SharedPreferences.getInstance();
    if (widget.quiz[0]['question'] ==
        "What is the result of 5 multiplied by 7?") {
      subjectKey = 'math';
    } else if (widget.quiz[0]['question'] ==
        "Who was the first President of the United States?") {
      subjectKey = 'history';
    } else if (widget.quiz[0]['question'] ==
        "What does UI stand for in UX design?") {
      subjectKey = 'computer';
    }

    int previousScore = prefs.getInt(subjectKey) ?? 0;

    if (_score > previousScore) {
      prefs.setInt(subjectKey, _score);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF270840),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${subjectKey.toUpperCase()} QUIZ',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '${_remainingTime ~/ 60}:${(_remainingTime % 60).toString().padLeft(2, '0')}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "${i.toString()}/10",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '${widget.quiz[_questionIndex]['question']}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )),
          Column(
            children: (widget.quiz[_questionIndex]['options'] as List<String>)
                .map((option) {
              return ElevatedButton(
                onPressed: () => _answerQuestion(
                  widget.quiz[_questionIndex]['options'].indexOf(option),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF270840),
                  fixedSize: const Size(300, 40),
                ),
                child: Text(
                  option,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              );
            }).toList(),
          ),
          Text(
            'Score: $_score',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
