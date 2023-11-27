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

List<Question> colorQuestions = <Question>[
  Question(
    questionText: 'Orange',
    answerText: 'Turuncu',
    wrongAnswers: ['Sarı', 'Kırmızı', 'Mavi'],
  ),
  Question(
    questionText: 'Blue',
    answerText: 'Mavi',
    wrongAnswers: ['Yeşil', 'Kırmızı', 'Turuncu'],
  ),
  Question(
    questionText: 'Red',
    answerText: 'Kırmızı',
    wrongAnswers: ['Sarı', 'Mavi', 'Turuncu'],
  ),
  Question(
    questionText: 'Yellow',
    answerText: 'Sarı',
    wrongAnswers: ['Kırmızı', 'Mavi', 'Yeşil'],
  ),
  Question(
    questionText: 'Green',
    answerText: 'Yeşil',
    wrongAnswers: ['Sarı', 'Mavi', 'Turuncu'],
  ),
  Question(
    questionText: 'Purple',
    answerText: 'Mor',
    wrongAnswers: ['Mavi', 'Kırmızı', 'Yeşil'],
  ),
  Question(
    questionText: 'White',
    answerText: 'Beyaz',
    wrongAnswers: ['Sarı', 'Kırmızı', 'Turuncu'],
  ),
  Question(
    questionText: 'Black',
    answerText: 'Siyah',
    wrongAnswers: ['Beyaz', 'Mavi', 'Kırmızı'],
  ),
];

List<Question> animalQuestions = <Question>[
  Question(
    questionText: 'Cat',
    answerText: 'Kedi',
    wrongAnswers: ['Köpek', 'Kuş', 'At'],
  ),
  Question(
    questionText: 'Dog',
    answerText: 'Köpek',
    wrongAnswers: ['Kedi', 'Kuş', 'At'],
  ),
  Question(
    questionText: 'Bird',
    answerText: 'Kuş',
    wrongAnswers: ['Kedi', 'Köpek', 'At'],
  ),
  Question(
    questionText: 'Horse',
    answerText: 'At',
    wrongAnswers: ['Kedi', 'Köpek', 'Kuş'],
  ),
];

List<Question> weatherQuestions = <Question>[
  Question(
    questionText: 'Cloudy',
    answerText: 'Bulutlu',
    wrongAnswers: ['Güneşli', 'Yağmurlu', 'Karlı'],
  ),
  Question(
    questionText: 'Sunny',
    answerText: 'Güneşli',
    wrongAnswers: ['Bulutlu', 'Yağmurlu', 'Karlı'],
  ),
  Question(
    questionText: 'Rainy',
    answerText: 'Yağmurlu',
    wrongAnswers: ['Bulutlu', 'Güneşli', 'Karlı'],
  ),
  Question(
    questionText: 'Snowy',
    answerText: 'Karlı',
    wrongAnswers: ['Bulutlu', 'Güneşli', 'Yağmurlu'],
  ),
];

List<Question> foodQuestions = <Question>[
  Question(
    questionText: 'Bread',
    answerText: 'Ekmek',
    wrongAnswers: ['Peynir', 'Makarna', 'Pilav'],
  ),
  Question(
    questionText: 'Cheese',
    answerText: 'Peynir',
    wrongAnswers: ['Ekmek', 'Makarna', 'Pilav'],
  ),
  Question(
    questionText: 'Pasta',
    answerText: 'Makarna',
    wrongAnswers: ['Ekmek', 'Peynir', 'Pilav'],
  ),
  Question(
    questionText: 'Rice',
    answerText: 'Pilav',
    wrongAnswers: ['Ekmek', 'Peynir', 'Makarna'],
  ),
];

List<Question> fruitQuestions = <Question>[
  Question(
    questionText: 'Apple',
    answerText: 'Elma',
    wrongAnswers: ['Armut', 'Portakal', 'Muz'],
  ),
  Question(
    questionText: 'Pear',
    answerText: 'Armut',
    wrongAnswers: ['Elma', 'Portakal', 'Muz'],
  ),
  Question(
    questionText: 'Orange',
    answerText: 'Portakal',
    wrongAnswers: ['Elma', 'Armut', 'Muz'],
  ),
  Question(
    questionText: 'Banana',
    answerText: 'Muz',
    wrongAnswers: ['Elma', 'Armut', 'Portakal'],
  ),
];
