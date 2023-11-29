import 'package:adim_adim_turkce/model/library.dart';
import 'package:get/get.dart';

class ControllerQuestions extends GetxController {
  ControllerQuestions({required this.category});
  late final Category category;
  late final List<Question> _questions;
  final _questionIndex = 0.obs;
  final _correctAnswers = 0.obs;
  final _incorrectAnswers = 0.obs;
  final _isAnswered = false.obs;
  final _isCorrect = false.obs;
  final _isIncorrect = false.obs;
  final _isFinished = false.obs;

  Question get question => _questions[_questionIndex.value];
  int get questionIndex => _questionIndex.value;
  int get correctAnswers => _correctAnswers.value;
  int get incorrectAnswers => _incorrectAnswers.value;
  bool get isAnswered => _isAnswered.value;
  bool get isCorrect => _isCorrect.value;
  bool get isIncorrect => _isIncorrect.value;
  bool get isFinished => _isFinished.value;

  Future<void> fetchQuestions() async {
    _questions = category.questions;
  }

  void nextQuestion() {
    _questionIndex.value++;
    _isAnswered.value = false;
    _isCorrect.value = false;
    _isIncorrect.value = false;
  }

  void correctAnswer() {
    _correctAnswers.value++;
    _isCorrect.value = true;
    _isAnswered.value = true;
  }

  void incorrectAnswer() {
    _incorrectAnswers.value++;
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
    _isAnswered.value = false;
    _isCorrect.value = false;
    _isIncorrect.value = false;
    _isFinished.value = false;
  }
}
