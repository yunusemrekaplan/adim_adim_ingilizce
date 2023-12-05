import '../question/question.dart';

abstract class Category {
  late final int id;
  late final String guid;
  late final String name;
  late final String description;
  late final String image;
  late final List<Question> questions;

  Category({
    required this.name,
    required this.description,
    required this.image,
    required this.questions,
  });
}
