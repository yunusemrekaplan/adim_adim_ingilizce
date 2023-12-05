import 'category.dart';
import '../question/word_question.dart';

class WordQuestionCategory extends Category {
  WordQuestionCategory({
    required super.name,
    required super.description,
    required super.image,
    required super.questions,
  });
}

Category colorCategory = WordQuestionCategory(
  name: 'Colors',
  description: 'Colors',
  image: 'https://manolobrides.com/images/2012/11/ColorWheel_OL.jpg',
  questions: colorQuestions,
);

Category animalCategory = WordQuestionCategory(
  name: 'Animals',
  description: 'Animals',
  image:
      'https://upload.wikimedia.org/wikipedia/commons/6/6f/Animal_diversity_b.png',
  questions: animalQuestions,
);

Category weatherCategory = WordQuestionCategory(
  name: 'Weather',
  description: 'Weather',
  image:
      'https://www.theschoolrun.com/sites/theschoolrun.com/files/weather_.jpg',
  questions: weatherQuestions,
);

Category foodCategory = WordQuestionCategory(
  name: 'Food',
  description: 'Food',
  image:
      'https://honehealth.com/wp-content/uploads/2023/06/high-protein-fast-food-1.webp',
  questions: foodQuestions,
);

Category fruitCategory = WordQuestionCategory(
  name: 'Fruit',
  description: 'Fruit',
  image: 'https://promova.com/content/list_of_fruits_6f8aa72869.png',
  questions: fruitQuestions,
);
