import 'category.dart';
import 'question.dart';

class WordCategory extends Category {
  WordCategory({
    required super.name,
    required super.description,
    required super.questions,
  });
}

WordCategory colorCategory = WordCategory(
  name: 'Colors',
  description: 'Colors',
  questions: colorQuestions,
);

WordCategory animalCategory = WordCategory(
  name: 'Animals',
  description: 'Animals',
  questions: animalQuestions,
);

WordCategory weatherCategory = WordCategory(
  name: 'Weather',
  description: 'Weather',
  questions: weatherQuestions,
);
