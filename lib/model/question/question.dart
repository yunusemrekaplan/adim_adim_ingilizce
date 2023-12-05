import '../answer.dart';
import '../category/category.dart';

class Question {
  late final int id;
  late final String? questionText;
  late final String? soundPath;
  late final Category category;
  late final List<Answer> answers;

  Question({
    this.questionText,
    this.soundPath,
    required this.answers,
  });
}
