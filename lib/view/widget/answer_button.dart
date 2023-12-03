import 'package:flutter/material.dart';

import '../../model/library.dart' as model;

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answer,
    required this.onPressed,
    required this.buttonColor,
    required this.isAnswered,
  });

  final model.Answer answer;
  final VoidCallback onPressed;
  final Color buttonColor;
  final bool isAnswered;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: isAnswered
            ? () {
                print('missclick');
              }
            : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
        ),
        child: Text(answer.answer),
      ),
    );
  }
}
