import 'category.dart';

class Question {
  late final int id;
  late final Category category;
  late final String questionText;
  late final String answerText;
  late final List<String> wrongAnswers;

  Question({
    required this.questionText,
    required this.answerText,
    required this.wrongAnswers,
  });
}
