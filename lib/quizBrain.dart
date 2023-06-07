import 'package:quiz_app_gsg/question.dart';

import 'package:flutter/material.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(
        questionText: 'You can lead a cow down stairs but not up stairs',
        questionsAnswers: false),
    Question(
        questionText:
            'Approximately one quarter of human bones are in the feet.',
        questionsAnswers: true),
    Question(questionText: 'A slug\'s blood is green.', questionsAnswers: true)
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionsAnswers() {
    return _questionBank[_questionNumber].questionsAnswers;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

/*
  void showQuizFinishedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Quiz Finished'),
          content: const Text(
            'Congratulations! You have completed the quiz.',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
*/

  void reset() {
    _questionNumber = 0;
  }
}
