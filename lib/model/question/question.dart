import '../answer.dart';
import '../category.dart';

class Question {
  late final int id;
  late final String? question;
  late final String? soundPath;
  late final Category category;
  late final List<Answer> answers;

  Question({
    this.question,
    //this.soundPath,
    required this.answers,
  });
}
