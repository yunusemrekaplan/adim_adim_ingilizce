import '../answer.dart';

class Question {
  late final String uid;
  late final String? questionText;
  late final String? soundPath;
  late final String? category;
  late final String questionType;
  late final List<Answer> answers;

  Question({
    this.questionText,
    this.soundPath,
    required this.answers,
  });

  Question.fromMap(Map<String, dynamic> map) {
    uid = map['uid'];
    questionText = map['questionText'] ?? '';
    soundPath = map['soundPath'] ?? '';
    category = map['category'] ?? '';
    questionType = map['questionType'];
    answers = map['answers'].map<Answer>((e) => Answer.fromJson(e)).toList();
  }
}
