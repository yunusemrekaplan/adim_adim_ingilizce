import 'package:adim_adim_ingilizce/controller/firebase/firestore/firestore_service.dart';
import 'package:adim_adim_ingilizce/model/category.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../health_controller.dart';
import '../../../model/library.dart';

import '../../../controller/firebase/library.dart' as firebase;

class ControllerQuestions extends GetxController {
  ControllerQuestions({required this.category}) {
    _isFinished.listen((p0) {
      if (p0) {
        updateScore();
      }
    });
  }

  final _firestoreService = firebase.FirestoreService();
  final _healthController = Get.find<ControllerHealth>();

  late final Category category;
  List<Question> questions = [];
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
  bool get isFinished => _isFinished.value;
  bool get isAlive => _healthController.lives.value > 0;
  Color getButtonColor(int index) => _buttonColors[index].value;

  Future<void> init() async {
    await fetchQuestions();
    questions.shuffle();
    answersShuffle();
  }

  Future<void> fetchQuestions() async {
    final questionMapList = await _firestoreService.getList(
      type: firebase.FirestoreServiceType.question,
    );
    questions.clear();

    if (category.name == 'random') {
      questions =
          questionMapList.map((element) => Question.fromMap(element!)).toList();
    } else {
      questions = questionMapList
          .where((element) => category.name == element!['category'])
          .map((e) => Question.fromMap(e!))
          .toList();
    }
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
    _healthController.decreaseLives();

    if (_healthController.lives.value == 0) {
      await finish();
    }
  }

  Future<void> finish() async {
    _isFinished.value = true;
    await updateScore();
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

  Future<void> updateScore() async {
    Student.student.totalPoints += score;
    await _firestoreService.set(
      type: FirestoreServiceType.user,
      uid: Student.student.uid,
      data: Student.student.toJson(),
    );
  }
}
