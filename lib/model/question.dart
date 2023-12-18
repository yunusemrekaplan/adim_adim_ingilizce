import 'answer.dart';

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

/*

List<WordQuestion> colorQuestions = <WordQuestion>[
  WordQuestion(
    question: 'Green',
    answers: [
      Answer(answer: 'Kırmızı', isCorrect: false, isSelected: false),
      Answer(answer: 'Sarı', isCorrect: false, isSelected: false),
      Answer(answer: 'Yeşil', isCorrect: true, isSelected: false),
      Answer(answer: 'Mavi', isCorrect: false, isSelected: false),
    ],
  ),
  WordQuestion(
    question: 'Purple',
    answers: [
      Answer(answer: 'Turuncu', isCorrect: false, isSelected: false),
      Answer(answer: 'Pembe', isCorrect: false, isSelected: false),
      Answer(answer: 'Mor', isCorrect: true, isSelected: false),
      Answer(answer: 'Gri', isCorrect: false, isSelected: false),
    ],
  ),
  WordQuestion(
    question: 'Yellow',
    answers: [
      Answer(answer: 'Siyah', isCorrect: false, isSelected: false),
      Answer(answer: 'Beyaz', isCorrect: false, isSelected: false),
      Answer(answer: 'Sarı', isCorrect: true, isSelected: false),
      Answer(answer: 'Kahverengi', isCorrect: false, isSelected: false),
    ],
  ),
  WordQuestion(
    question: 'Red',
    answers: [
      Answer(answer: 'Mavi', isCorrect: false, isSelected: false),
      Answer(answer: 'Yeşil', isCorrect: false, isSelected: false),
      Answer(answer: 'Kırmızı', isCorrect: true, isSelected: false),
      Answer(answer: 'Sarı', isCorrect: false, isSelected: false),
    ],
  ),
  WordQuestion(
    question: 'Black',
    answers: [
      Answer(answer: 'Beyaz', isCorrect: false, isSelected: false),
      Answer(answer: 'Siyah', isCorrect: true, isSelected: false),
      Answer(answer: 'Gri', isCorrect: false, isSelected: false),
      Answer(answer: 'Kahverengi', isCorrect: false, isSelected: false),
    ],
  ),
];

List<WordQuestion> animalQuestions = <WordQuestion>[
  WordQuestion(
    question: 'Cat',
    answers: [
      Answer(answer: 'Köpek', isCorrect: false, isSelected: false),
      Answer(answer: 'Kuş', isCorrect: false, isSelected: false),
      Answer(answer: 'At', isCorrect: false, isSelected: false),
      Answer(answer: 'Kedi', isCorrect: true, isSelected: false),
    ],
  ),
  WordQuestion(
    question: 'Dog',
    answers: [
      Answer(answer: 'Kedi', isCorrect: false, isSelected: false),
      Answer(answer: 'Köpek', isCorrect: true, isSelected: false),
      Answer(answer: 'At', isCorrect: false, isSelected: false),
      Answer(answer: 'Fare', isCorrect: false, isSelected: false),
    ],
  ),
  WordQuestion(
    question: 'Bird',
    answers: [
      Answer(answer: 'Kedi', isCorrect: false, isSelected: false),
      Answer(answer: 'Köpek', isCorrect: false, isSelected: false),
      Answer(answer: 'At', isCorrect: false, isSelected: false),
      Answer(answer: 'Kuş', isCorrect: true, isSelected: false),
    ],
  ),
];

List<WordQuestion> weatherQuestions = <WordQuestion>[
  WordQuestion(
    question: 'Cloudy',
    answers: [
      Answer(answer: 'Bulutlu', isCorrect: true, isSelected: false),
      Answer(answer: 'Güneşli', isCorrect: false, isSelected: false),
      Answer(answer: 'Yağmurlu', isCorrect: false, isSelected: false),
      Answer(answer: 'Karlı', isCorrect: false, isSelected: false),
    ],
  ),
  WordQuestion(
    question: 'Sunny',
    answers: [
      Answer(answer: 'Güneşli', isCorrect: true, isSelected: false),
      Answer(answer: 'Bulutlu', isCorrect: false, isSelected: false),
      Answer(answer: 'Yağmurlu', isCorrect: false, isSelected: false),
      Answer(answer: 'Karlı', isCorrect: false, isSelected: false),
    ],
  ),
  WordQuestion(
    question: 'Rainy',
    answers: [
      Answer(answer: 'Yağmurlu', isCorrect: true, isSelected: false),
      Answer(answer: 'Bulutlu', isCorrect: false, isSelected: false),
      Answer(answer: 'Güneşli', isCorrect: false, isSelected: false),
      Answer(answer: 'Karlı', isCorrect: false, isSelected: false),
    ],
  ),
  WordQuestion(
    question: 'Snowy',
    answers: [
      Answer(answer: 'Karlı', isCorrect: true, isSelected: false),
      Answer(answer: 'Bulutlu', isCorrect: false, isSelected: false),
      Answer(answer: 'Güneşli', isCorrect: false, isSelected: false),
      Answer(answer: 'Yağmurlu', isCorrect: false, isSelected: false),
    ],
  ),
];

List<WordQuestion> foodQuestions = <WordQuestion>[
  WordQuestion(
    question: 'Bread',
    answers: [
      Answer(answer: 'Ekmek', isCorrect: true, isSelected: false),
      Answer(answer: 'Peynir', isCorrect: false, isSelected: false),
      Answer(answer: 'Makarna', isCorrect: false, isSelected: false),
      Answer(answer: 'Pilav', isCorrect: false, isSelected: false),
    ],
  ),
  WordQuestion(
    question: 'Cheese',
    answers: [
      Answer(answer: 'Peynir', isCorrect: true, isSelected: false),
      Answer(answer: 'Ekmek', isCorrect: false, isSelected: false),
      Answer(answer: 'Makarna', isCorrect: false, isSelected: false),
      Answer(answer: 'Pilav', isCorrect: false, isSelected: false),
    ],
  ),
  WordQuestion(
    question: 'Pasta',
    answers: [
      Answer(answer: 'Makarna', isCorrect: true, isSelected: false),
      Answer(answer: 'Ekmek', isCorrect: false, isSelected: false),
      Answer(answer: 'Peynir', isCorrect: false, isSelected: false),
      Answer(answer: 'Pilav', isCorrect: false, isSelected: false),
    ],
  ),
  WordQuestion(
    question: 'Rice',
    answers: [
      Answer(answer: 'Pilav', isCorrect: true, isSelected: false),
      Answer(answer: 'Ekmek', isCorrect: false, isSelected: false),
      Answer(answer: 'Peynir', isCorrect: false, isSelected: false),
      Answer(answer: 'Makarna', isCorrect: false, isSelected: false),
    ],
  ),
];

List<WordQuestion> fruitQuestions = <WordQuestion>[
  WordQuestion(
    question: 'Apple',
    answers: [
      Answer(answer: 'Elma', isCorrect: true, isSelected: false),
      Answer(answer: 'Armut', isCorrect: false, isSelected: false),
      Answer(answer: 'Portakal', isCorrect: false, isSelected: false),
      Answer(answer: 'Muz', isCorrect: false, isSelected: false),
    ],
  ),
  WordQuestion(
    question: 'Pear',
    answers: [
      Answer(answer: 'Armut', isCorrect: true, isSelected: false),
      Answer(answer: 'Elma', isCorrect: false, isSelected: false),
      Answer(answer: 'Portakal', isCorrect: false, isSelected: false),
      Answer(answer: 'Muz', isCorrect: false, isSelected: false),
    ],
  ),
  WordQuestion(
    question: 'Orange',
    answers: [
      Answer(answer: 'Portakal', isCorrect: true, isSelected: false),
      Answer(answer: 'Elma', isCorrect: false, isSelected: false),
      Answer(answer: 'Armut', isCorrect: false, isSelected: false),
      Answer(answer: 'Muz', isCorrect: false, isSelected: false),
    ],
  ),
  WordQuestion(
    question: 'Banana',
    answers: [
      Answer(answer: 'Muz', isCorrect: true, isSelected: false),
      Answer(answer: 'Elma', isCorrect: false, isSelected: false),
      Answer(answer: 'Armut', isCorrect: false, isSelected: false),
      Answer(answer: 'Portakal', isCorrect: false, isSelected: false),
    ],
  ),
];


/*

  Question(
    questionText: 'Pink',
    answer: 'Pembe',
    answers: ['Turuncu', 'Pembe', 'Mor', 'Sarı'],
  ),
  Question(
    questionText: 'Brown',
    answer: 'Kahverengi',
    answers: ['Mavi', 'Siyah', 'Kahverengi', 'Yeşil'],
  ),
  Question(
    questionText: 'Gray',
    answer: 'Gri',
    answers: ['Beyaz', 'Gri', 'Pembe', 'Kırmızı'],
  ),
  Question(
    questionText: 'Blue',
    answer: 'Mavi',
    answers: ['Sarı', 'Mavi', 'Yeşil', 'Siyah'],
  ),
  Question(
    questionText: 'Orange',
    answer: 'Turuncu',
    answers: ['Mor', 'Turuncu', 'Pembe', 'Kırmızı'],
  ),
  Question(
    questionText: 'White',
    answer: 'Beyaz',
    answers: ['Gri', 'Beyaz', 'Sarı', 'Kahverengi'],
  ),
  Question(
    questionText: 'Turquoise',
    answer: 'Turkuaz',
    answers: ['Turuncu', 'Pembe', 'Mor', 'Turkuaz'],
  ),
  Question(
    questionText: 'Gold',
    answer: 'Altın',
    answers: ['Gümüş', 'Altın', 'Sarı', 'Yeşil'],
  ),
  Question(
    questionText: 'Silver',
    answer: 'Gümüş',
    answers: ['Altın', 'Gümüş', 'Beyaz', 'Gri'],
  ),
  Question(
    questionText: 'Indigo',
    answer: 'Çivit Mavisi',
    answers: ['Mor', 'Çivit Mavisi', 'Yeşil', 'Turuncu'],
  ),
  Question(
    questionText: 'Cyan',
    answer: 'Camgöbeği',
    answers: ['Sarı', 'Camgöbeği', 'Pembe', 'Yeşil'],
  ),
  Question(
    questionText: 'Maroon',
    answer: 'Kestane Rengi',
    answers: ['Kestane Rengi', 'Siyah', 'Kahverengi', 'Beyaz'],
  ),
  Question(
    questionText: 'Lavender',
    answer: 'Lavanta',
    answers: ['Lavanta', 'Turuncu', 'Pembe', 'Yeşil'],
  ),
  Question(
    questionText: 'Beige',
    answer: 'Bej',
    answers: ['Beyaz', 'Sarı', 'Bej', 'Gri'],
  ),
  Question(
    questionText: 'Olive',
    answer: 'Zeytin Yeşili',
    answers: ['Zeytin Yeşili', 'Turuncu', 'Kahverengi', 'Siyah'],
  ),
  Question(
    questionText: 'Violet',
    answer: 'Menekşe Rengi',
    answers: ['Menekşe Rengi', 'Turuncu', 'Pembe', 'Yeşil'],
  ),
  Question(
    questionText: 'Teal',
    answer: 'Deniz Mavisi',
    answers: ['Turuncu', 'Kahverengi', 'Deniz Mavisi', 'Kırmızı'],
  ),
  Question(
    questionText: 'Charcoal',
    answer: 'Kömür Rengi',
    answers: ['Kömür Rengi', 'Beyaz', 'Siyah', 'Pembe'],
  ),
  Question(
    questionText: 'Magenta',
    answer: 'Mor',
    answers: ['Sarı', 'Siyah', 'Mor', 'Yeşil'],
  ),
  Question(
    questionText: 'Crimson',
    answer: 'Kırmızı',
    answers: ['Mor', 'Gri', 'Kahverengi', 'Kırmızı'],
  ),
  Question(
    questionText: 'Salmon',
    answer: 'Somon Rengi',
    answers: ['Somon Rengi', 'Kömür Rengi', 'Sarı', 'Magenta'],
  ),
  Question(
    questionText: 'Burgundy',
    answer: 'Bordo',
    answers: ['Turuncu', 'Burgonya', 'Gri', 'Bordo'],
  ),
  Question(
    questionText: 'Chartreuse',
    answer: 'Açık Yeşil',
    answers: ['Sarı', 'Turuncu', 'Açık Yeşil', 'Kahverengi'],
  ),
  Question(
    questionText: 'Sepia',
    answer: 'Sepya',
    answers: ['Siyah', 'Mor', 'Gri', 'Sepya'],
  ),
  Question(
    questionText: 'Turmeric',
    answer: 'Sarı',
    answers: ['Sarı', 'Kırmızı', 'Yeşil', 'Mavi'],
  ),
  Question(
    questionText: 'Coral',
    answer: 'Turuncu',
    answers: ['Turuncu', 'Mavi', 'Mor', 'Kahverengi'],
  ),
  Question(
    questionText: 'Amber',
    answer: 'Turuncu',
    answers: ['Yeşil', 'Amber', 'Turuncu', 'Pembe'],
  ),
  Question(
    questionText: 'Auburn',
    answer: 'Kahverengi',
    answers: ['Kahverengi', 'Mor', 'Sarı', 'Kırmızı'],
  ),
  Question(
    questionText: 'Pearl',
    answer: 'İnci',
    answers: ['İnci', 'Gri', 'Mavi', 'Sarı'],
  ),
  Question(
    questionText: 'Mint',
    answer: 'Yeşil',
    answers: ['Yeşil', 'Turuncu', 'Mor', 'Kahverengi'],
  ),
  Question(
    questionText: 'Slate',
    answer: 'Gri',
    answers: ['Gri', 'Sarı', 'Turuncu', 'Mavi'],
  ),
*/
*/