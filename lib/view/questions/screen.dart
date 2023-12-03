import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

import '../../view/widget/library.dart' as widgets;

class Screen extends StatelessWidget {
  Screen({super.key});

  final _controller = Get.put(ControllerQuestions(questions: Get.arguments));

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _controller,
      builder: (_) => buildScaffold(),
      initState: (_) => _controller.fetchQuestions(),
      id: 'questions',
    );
  }

  Scaffold buildScaffold() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questions'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: Get.height * 0.016),
          Obx(
            () => Text(
              'Score: ${_controller.score}',
              style: const TextStyle(fontSize: 24),
            ),
          ),
          SizedBox(height: Get.height * 0.016),
          Expanded(
            child: Obx(
              () => _controller.isFinished ? buildFinished() : buildQuestion(),
            ),
          ),
          Obx(
            () =>
                _controller.isFinished ? buildResetButton() : buildNextButton(),
          ),
        ],
      ),
    );
  }

  Widget buildQuestion() {
    return Column(
      children: [
        buildQuestionText(),
        SizedBox(height: Get.height * 0.04),
        Expanded(child: buildAnswers()),
      ],
    );
  }

  Widget buildQuestionText() {
    return Padding(
      padding: EdgeInsets.only(
        left: Get.width * 0.035,
        right: Get.width * 0.035,
      ),
      child: Container(
        width: double.infinity,
        height: Get.height * 0.28,
        decoration: BoxDecoration(
          color: Colors.blueGrey[800],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              _controller.question.question!,
              //'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              //style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAnswers() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 10.0),
          child: widgets.AnswerButton(
            answer: _controller.question.answers[0],
            buttonColor: _controller.getButtonColor(0),
            onPressed: () => _controller.onButtonPressed(0),
            isAnswered: _controller.isAnswered,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 10.0),
          child: widgets.AnswerButton(
            answer: _controller.question.answers[1],
            buttonColor: _controller.getButtonColor(1),
            onPressed: () => _controller.onButtonPressed(1),
            isAnswered: _controller.isAnswered,
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 10.0),
            child: widgets.AnswerButton(
              answer: _controller.question.answers[2],
              buttonColor: _controller.getButtonColor(2),
              onPressed: () => _controller.onButtonPressed(2),
              isAnswered: _controller.isAnswered,
            )),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 10.0),
          child: widgets.AnswerButton(
            answer: _controller.question.answers[3],
            buttonColor: _controller.getButtonColor(3),
            onPressed: () => _controller.onButtonPressed(3),
            isAnswered: _controller.isAnswered,
          ),
        ),
      ],
    );
  }

  Widget buildNextButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: _controller.isAnswered ? _controller.nextQuestion : null,
        child: const Text(
          'Next',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget buildFinished() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Finished!',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            'Score: ${_controller.score}',
            style: const TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }

  Widget buildResetButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: _controller.reset,
        child: const Text('Reset'),
      ),
    );
  }
}
