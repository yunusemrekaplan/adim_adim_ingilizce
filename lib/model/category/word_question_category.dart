import 'category.dart';
import '../question/word_question.dart';

class WordQuestionCategory extends Category {
  WordQuestionCategory({
    required super.name,
    required super.description,
    required super.imagePath,
  });
}
/*

Category colorCategory = WordQuestionCategory(
  name: 'Colors',
  description: 'Colors',
  image: 'categoryImages/colorCategoryImage.jpg',
  questions: colorQuestions,
);

Category animalCategory = WordQuestionCategory(
  name: 'Animals',
  description: 'Animals',
  image: 'categoryImages/animalCategoryImage.jpg',
  questions: animalQuestions,
);

Category weatherCategory = WordQuestionCategory(
  name: 'Weather',
  description: 'Weather',
  image: 'categoryImages/weatherCategoryImage.jpg',
  questions: weatherQuestions,
);

Category foodCategory = WordQuestionCategory(
  name: 'Food',
  description: 'Food',
  image: 'categoryImages/foodCategoryImage.jpg',
  questions: foodQuestions,
);

Category fruitCategory = WordQuestionCategory(
  name: 'Fruit',
  description: 'Fruit',
  image: 'categoryImages/fruitCategoryImage.jpg',
  questions: fruitQuestions,
);

*/