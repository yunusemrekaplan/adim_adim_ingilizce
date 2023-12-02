import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

import '../../view/widget/library.dart' as widgets;

class Screen extends StatelessWidget {
  Screen({super.key});

  final _controller = Get.put(ControllerQuestions(category: Get.arguments));

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
          Obx(
            () => Text(
              'Score: ${_controller.score}',
              style: const TextStyle(fontSize: 24),
            ),
          ),
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
        buildAnswers(),
      ],
    );
  }

  Widget buildQuestionText() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: Get.height * 0.4,
        child: Center(
          child: Text(
            _controller.word.text,
            //style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }

  Widget buildAnswers() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 10.0),
              child: widgets.AnswerButton(
                answer: _controller.word.answers[0],
                buttonColor: _controller.getButtonColor(0),
                onPressed: () => _controller.onButtonPressed(0),
                isAnswered: _controller.isAnswered,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.0, bottom: 10.0),
              child: widgets.AnswerButton(
                answer: _controller.word.answers[1],
                buttonColor: _controller.getButtonColor(1),
                onPressed: () => _controller.onButtonPressed(1),
                isAnswered: _controller.isAnswered,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 25.0, bottom: 10.0),
                child: widgets.AnswerButton(
                  answer: _controller.word.answers[2],
                  buttonColor: _controller.getButtonColor(2),
                  onPressed: () => _controller.onButtonPressed(2),
                  isAnswered: _controller.isAnswered,
                )),
            Padding(
              padding: const EdgeInsets.only(right: 25.0, bottom: 10.0),
              child: widgets.AnswerButton(
                answer: _controller.word.answers[3],
                buttonColor: _controller.getButtonColor(3),
                onPressed: () => _controller.onButtonPressed(3),
                isAnswered: _controller.isAnswered,
              ),
            ),
          ],
        )
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
