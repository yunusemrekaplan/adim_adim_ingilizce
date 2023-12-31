import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

import '../../../view/widget/library.dart' as widgets;

class Screen extends StatelessWidget {
  Screen({super.key});

  final _controller = Get.put(ControllerQuestions(category: Get.arguments));

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _controller,
      builder: (_) => buildScaffold(context),
      id: 'questions',
      dispose: (_) => _controller.finish(),
    );
  }

  Scaffold buildScaffold(BuildContext context) {
    return Scaffold(
      appBar: widgets.MyAppBar.myAppBar(title: 'Questions', context: context),
      body: _controller.isAlive ? futureBuilder() : buildDeadScreen(),
    );
  }

  FutureBuilder<void> futureBuilder() {
    return FutureBuilder(
      future: _controller.init(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return buildBody();
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget buildBody() {
    print(_controller.isFinished);
    return Column(
      children: [
        SizedBox(height: Get.height * 0.016),
        Obx(
          () => _controller.isFinished
              ? const SizedBox()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Question: ${_controller.questionIndex + 1} / ${_controller.questions.length}',
                      style: const TextStyle(fontSize: 24),
                    ),
                    Text(
                      'Score: ${_controller.score}',
                      style: const TextStyle(fontSize: 24),
                    ),
                  ],
                ),
        ),
        SizedBox(height: Get.height * 0.016),
        Expanded(
          child: Obx(
            () => _controller.isFinished
                ? buildFinished()
                : buildQuestionAndAnswers(),
          ),
        ),
        Obx(
          () => _controller.isFinished ? buildResetButton() : buildNextButton(),
        ),
      ],
    );
  }

  Widget buildDeadScreen() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You have no lives left!',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }

  Widget buildQuestionAndAnswers() {
    return Column(
      children: [
        buildQuestion(),
        SizedBox(height: Get.height * 0.018),
        Expanded(child: buildAnswers()),
      ],
    );
  }

  Widget buildQuestion() {
    return Padding(
      padding: EdgeInsets.only(
        left: Get.width * 0.035,
        right: Get.width * 0.035,
      ),
      child: Container(
        width: double.infinity,
        height: Get.height * 0.28,
        decoration: BoxDecoration(
          color: Get.theme.colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: _controller.question.questionType == 'sound'
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () async {
                          await _controller.playSound(0);
                        },
                        icon: const Icon(Icons.record_voice_over),
                        iconSize: Get.size.width * 0.14,
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () async {
                          await _controller.playSound(1);
                        },
                        icon: const Icon(Icons.record_voice_over),
                        iconSize: Get.size.width * 0.18,
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () async {
                          await _controller.playSound(2);
                        },
                        icon: const Icon(Icons.record_voice_over),
                        iconSize: Get.size.width * 0.22,
                        color: Colors.white,
                      ),
                    ],
                  )
                : buildQuestionText(),
          ),
        ),
      ),
    );
  }

  Text buildQuestionText() {
    return Text(
      _controller.question.questionText!,
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
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ElevatedButton(
        onPressed: _controller.isAnswered ? _controller.nextQuestion : null,
        child: const Text(
          'Next',
          //style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget buildFinished() {
    return Center(
      child: _controller.isAlive
          ? Column(
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
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Finished!',
                  style: TextStyle(fontSize: 24),
                ),
                const Text(
                  'You have no lives left!',
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
        onPressed: _controller.isAlive ? _controller.reset : null,
        child: const Text('Reset'),
      ),
    );
  }
}
