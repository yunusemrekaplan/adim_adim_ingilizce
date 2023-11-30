import 'package:adim_adim_turkce/model/library.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerQuestions extends GetxController {
  ControllerQuestions({required this.category});
  late final Category category;
  late final List<Question> _questions;
  final _questionIndex = 0.obs;
  final _correctAnswers = 0.obs;
  final _incorrectAnswers = 0.obs;
  final _score = 0.obs;
  final _isAnswered = false.obs;
  final _isCorrect = false.obs;
  final _isIncorrect = false.obs;
  final _isFinished = false.obs;
  final _buttonColors = List.generate(4, (_) => Colors.blueGrey.obs);

  Question get question => _questions[_questionIndex.value];
  int get questionIndex => _questionIndex.value;
  int get correctAnswers => _correctAnswers.value;
  int get incorrectAnswers => _incorrectAnswers.value;
  int get score => _score.value;
  bool get isAnswered => _isAnswered.value;
  bool get isCorrect => _isCorrect.value;
  bool get isIncorrect => _isIncorrect.value;
  bool get isFinished => _isFinished.value;
  Color getButtonColor(int index) => _buttonColors[index].value;

  Future<void> fetchQuestions() async {
    _questions = category.questions;
    _questions.shuffle();
  }

  void onButtonPressed(int index) {
    if (question.answers[index].isCorrect) {
      correctAnswer();
      _buttonColors[index].value = Colors.green;
    } else {
      incorrectAnswer();
      _buttonColors[index].value = Colors.red;
    }
    for (int i = 0; i < 4; i++) {
      if (i != index && question.answers[i].isCorrect) {
        _buttonColors[i].value = Colors.green;
      }
    }
  }

  void nextQuestion() {
    _questionIndex.value++;
    _isFinished.value = _questionIndex.value == _questions.length;
    resetButtonColors();
    _isAnswered.value = false;
    _isCorrect.value = false;
    _isIncorrect.value = false;
  }

  void correctAnswer() {
    _correctAnswers.value++;
    _score.value += question.points;
    _isCorrect.value = true;
    _isAnswered.value = true;
  }

  void incorrectAnswer() {
    _incorrectAnswers.value++;
    _score.value -= question.points;
    _isIncorrect.value = true;
    _isAnswered.value = true;
  }

  void finish() {
    _isFinished.value = true;
  }

  void reset() {
    _questionIndex.value = 0;
    _correctAnswers.value = 0;
    _incorrectAnswers.value = 0;
    _score.value = 0;
    _isAnswered.value = false;
    _isCorrect.value = false;
    _isIncorrect.value = false;
    _isFinished.value = false;
    _questions.shuffle();
    resetButtonColors();
  }

  void resetButtonColors() {
    for (var color in _buttonColors) {
      color.value = Colors.blueGrey;
    }
  }
}
