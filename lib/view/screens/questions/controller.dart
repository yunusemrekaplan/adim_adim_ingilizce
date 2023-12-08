import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/question/question.dart';

class ControllerQuestions extends GetxController {
  ControllerQuestions({required this.questions});
  late final List<Question> questions;
  final _questionIndex = 0.obs;
  final _correctAnswers = 0.obs;
  final _incorrectAnswers = 0.obs;
  final _score = 0.obs;
  final _isAnswered = false.obs;
  final _isCorrect = false.obs;
  final _isIncorrect = false.obs;
  final _isFinished = false.obs;
  final _buttonColors = List.generate(
    4,
    (_) => Get.theme.colorScheme.background.obs,
  );
  AudioPlayer _player = AudioPlayer();

  Question get question => questions[_questionIndex.value];
  int get questionIndex => _questionIndex.value;
  int get correctAnswers => _correctAnswers.value;
  int get incorrectAnswers => _incorrectAnswers.value;
  int get score => _score.value;
  bool get isAnswered => _isAnswered.value;
  bool get isCorrect => _isCorrect.value;
  bool get isIncorrect => _isIncorrect.value;
  bool get isFinished => _isFinished.value;
  Color getButtonColor(int index) => _buttonColors[index].value;

  void fetchQuestions() async {
    questions.shuffle();
    answersShuffle();
  }

  void answersShuffle() {
    for (var question in questions) {
      question.answers.shuffle();
    }
  }

  void onButtonPressed(int index) {
    if (question.answers[index].isCorrect) {
      correctAnswer();
      _buttonColors[index].value = Colors.green[900]!;
    } else {
      incorrectAnswer();
      _buttonColors[index].value = Colors.red[900]!;
    }
    for (int i = 0; i < 4; i++) {
      if (i != index && question.answers[i].isCorrect) {
        _buttonColors[i].value = Colors.green[900]!;
        break;
      }
    }
  }

  Future<void> playSound(int soundMode) async {
    AssetSource assetSource = AssetSource(question.soundPath!);
    double playbackRate = 1.0;
    if (soundMode == 0) {
      playbackRate = 0.75;
    } else if (soundMode == 2) {
      playbackRate = 1.25;
    }
    await _player.stop();
    _player.play(assetSource);
    _player.setPlaybackRate(playbackRate);
  }

  Future<void> nextQuestion() async {
    await resetPlayerAndButtonColors();
    _questionIndex.value++;
    _isFinished.value = _questionIndex.value == questions.length;
    _isAnswered.value = false;
    _isCorrect.value = false;
    _isIncorrect.value = false;
  }

  void correctAnswer() async {
    await resetPlayer();
    _correctAnswers.value++;
    _score.value += 5;
    _isCorrect.value = true;
    _isAnswered.value = true;
  }

  void incorrectAnswer() async {
    await resetPlayer();
    _incorrectAnswers.value++;
    _score.value -= 5;
    _isIncorrect.value = true;
    _isAnswered.value = true;
  }

  void finish() {
    _isFinished.value = true;
  }

  Future<void> reset() async {
    await resetPlayerAndButtonColors();
    questions.shuffle();
    answersShuffle();
    _questionIndex.value = 0;
    _correctAnswers.value = 0;
    _incorrectAnswers.value = 0;
    _score.value = 0;
    _isAnswered.value = false;
    _isCorrect.value = false;
    _isIncorrect.value = false;
    _isFinished.value = false;
  }

  Future<void> resetPlayerAndButtonColors() async {
    await resetPlayer();
    resetButtonColors();
  }

  void resetButtonColors() {
    for (var color in _buttonColors) {
      color.value = Get.theme.colorScheme.background;
    }
  }

  Future<void> resetPlayer() async {
    await _player.dispose();
    _player = AudioPlayer();
  }
}
