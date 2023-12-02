import 'category.dart';
import 'word.dart';

class WordCategory extends Category {
  WordCategory({
    required super.name,
    required super.description,
    required super.image,
    required super.words,
  });
}

Category colorCategory = WordCategory(
  name: 'Colors',
  description: 'Colors',
  image: 'https://manolobrides.com/images/2012/11/ColorWheel_OL.jpg',
  words: colorQuestions,
);

Category animalCategory = WordCategory(
  name: 'Animals',
  description: 'Animals',
  image:
      'https://upload.wikimedia.org/wikipedia/commons/6/6f/Animal_diversity_b.png',
  words: animalQuestions,
);

Category weatherCategory = WordCategory(
  name: 'Weather',
  description: 'Weather',
  image:
      'https://www.theschoolrun.com/sites/theschoolrun.com/files/weather_.jpg',
  words: weatherQuestions,
);

Category foodCategory = WordCategory(
  name: 'Food',
  description: 'Food',
  image:
      'https://honehealth.com/wp-content/uploads/2023/06/high-protein-fast-food-1.webp',
  words: foodQuestions,
);

Category fruitCategory = WordCategory(
  name: 'Fruit',
  description: 'Fruit',
  image: 'https://promova.com/content/list_of_fruits_6f8aa72869.png',
  words: fruitQuestions,
);
