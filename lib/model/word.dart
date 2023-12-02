import 'package:adim_adim_turkce/model/answer.dart';

import 'category.dart';

class Word {
  late final int id;
  late final Category category;
  late final String text;
  late final List<Answer> answers;

  Word({
    required this.text,
    required this.answers,
  });
}

List<Word> colorQuestions = <Word>[
  Word(
    text: 'Green',
    answers: [
      Answer(text: 'Kırmızı', isCorrect: false, isSelected: false),
      Answer(text: 'Sarı', isCorrect: false, isSelected: false),
      Answer(text: 'Yeşil', isCorrect: true, isSelected: false),
      Answer(text: 'Mavi', isCorrect: false, isSelected: false),
    ],
  ),
  Word(
    text: 'Purple',
    answers: [
      Answer(text: 'Turuncu', isCorrect: false, isSelected: false),
      Answer(text: 'Pembe', isCorrect: false, isSelected: false),
      Answer(text: 'Mor', isCorrect: true, isSelected: false),
      Answer(text: 'Gri', isCorrect: false, isSelected: false),
    ],
  ),
  Word(
    text: 'Yellow',
    answers: [
      Answer(text: 'Siyah', isCorrect: false, isSelected: false),
      Answer(text: 'Beyaz', isCorrect: false, isSelected: false),
      Answer(text: 'Sarı', isCorrect: true, isSelected: false),
      Answer(text: 'Kahverengi', isCorrect: false, isSelected: false),
    ],
  ),
  Word(
    text: 'Red',
    answers: [
      Answer(text: 'Mavi', isCorrect: false, isSelected: false),
      Answer(text: 'Yeşil', isCorrect: false, isSelected: false),
      Answer(text: 'Kırmızı', isCorrect: true, isSelected: false),
      Answer(text: 'Sarı', isCorrect: false, isSelected: false),
    ],
  ),
  Word(
    text: 'Black',
    answers: [
      Answer(text: 'Beyaz', isCorrect: false, isSelected: false),
      Answer(text: 'Siyah', isCorrect: true, isSelected: false),
      Answer(text: 'Gri', isCorrect: false, isSelected: false),
      Answer(text: 'Kahverengi', isCorrect: false, isSelected: false),
    ],
  ),
];

List<Word> animalQuestions = <Word>[
  Word(
    text: 'Cat',
    answers: [
      Answer(text: 'Köpek', isCorrect: false, isSelected: false),
      Answer(text: 'Kuş', isCorrect: false, isSelected: false),
      Answer(text: 'At', isCorrect: false, isSelected: false),
      Answer(text: 'Kedi', isCorrect: true, isSelected: false),
    ],
  ),
  Word(
    text: 'Dog',
    answers: [
      Answer(text: 'Kedi', isCorrect: false, isSelected: false),
      Answer(text: 'Köpek', isCorrect: true, isSelected: false),
      Answer(text: 'At', isCorrect: false, isSelected: false),
      Answer(text: 'Fare', isCorrect: false, isSelected: false),
    ],
  ),
  Word(
    text: 'Bird',
    answers: [
      Answer(text: 'Kedi', isCorrect: false, isSelected: false),
      Answer(text: 'Köpek', isCorrect: false, isSelected: false),
      Answer(text: 'At', isCorrect: false, isSelected: false),
      Answer(text: 'Kuş', isCorrect: true, isSelected: false),
    ],
  ),
];

List<Word> weatherQuestions = <Word>[
  Word(
    text: 'Cloudy',
    answers: [
      Answer(text: 'Bulutlu', isCorrect: true, isSelected: false),
      Answer(text: 'Güneşli', isCorrect: false, isSelected: false),
      Answer(text: 'Yağmurlu', isCorrect: false, isSelected: false),
      Answer(text: 'Karlı', isCorrect: false, isSelected: false),
    ],
  ),
  Word(
    text: 'Sunny',
    answers: [
      Answer(text: 'Güneşli', isCorrect: true, isSelected: false),
      Answer(text: 'Bulutlu', isCorrect: false, isSelected: false),
      Answer(text: 'Yağmurlu', isCorrect: false, isSelected: false),
      Answer(text: 'Karlı', isCorrect: false, isSelected: false),
    ],
  ),
  Word(
    text: 'Rainy',
    answers: [
      Answer(text: 'Yağmurlu', isCorrect: true, isSelected: false),
      Answer(text: 'Bulutlu', isCorrect: false, isSelected: false),
      Answer(text: 'Güneşli', isCorrect: false, isSelected: false),
      Answer(text: 'Karlı', isCorrect: false, isSelected: false),
    ],
  ),
  Word(
    text: 'Snowy',
    answers: [
      Answer(text: 'Karlı', isCorrect: true, isSelected: false),
      Answer(text: 'Bulutlu', isCorrect: false, isSelected: false),
      Answer(text: 'Güneşli', isCorrect: false, isSelected: false),
      Answer(text: 'Yağmurlu', isCorrect: false, isSelected: false),
    ],
  ),
];

List<Word> foodQuestions = <Word>[
  Word(
    text: 'Bread',
    answers: [
      Answer(text: 'Ekmek', isCorrect: true, isSelected: false),
      Answer(text: 'Peynir', isCorrect: false, isSelected: false),
      Answer(text: 'Makarna', isCorrect: false, isSelected: false),
      Answer(text: 'Pilav', isCorrect: false, isSelected: false),
    ],
  ),
  Word(
    text: 'Cheese',
    answers: [
      Answer(text: 'Peynir', isCorrect: true, isSelected: false),
      Answer(text: 'Ekmek', isCorrect: false, isSelected: false),
      Answer(text: 'Makarna', isCorrect: false, isSelected: false),
      Answer(text: 'Pilav', isCorrect: false, isSelected: false),
    ],
  ),
  Word(
    text: 'Pasta',
    answers: [
      Answer(text: 'Makarna', isCorrect: true, isSelected: false),
      Answer(text: 'Ekmek', isCorrect: false, isSelected: false),
      Answer(text: 'Peynir', isCorrect: false, isSelected: false),
      Answer(text: 'Pilav', isCorrect: false, isSelected: false),
    ],
  ),
  Word(
    text: 'Rice',
    answers: [
      Answer(text: 'Pilav', isCorrect: true, isSelected: false),
      Answer(text: 'Ekmek', isCorrect: false, isSelected: false),
      Answer(text: 'Peynir', isCorrect: false, isSelected: false),
      Answer(text: 'Makarna', isCorrect: false, isSelected: false),
    ],
  ),
];

List<Word> fruitQuestions = <Word>[
  Word(
    text: 'Apple',
    answers: [
      Answer(text: 'Elma', isCorrect: true, isSelected: false),
      Answer(text: 'Armut', isCorrect: false, isSelected: false),
      Answer(text: 'Portakal', isCorrect: false, isSelected: false),
      Answer(text: 'Muz', isCorrect: false, isSelected: false),
    ],
  ),
  Word(
    text: 'Pear',
    answers: [
      Answer(text: 'Armut', isCorrect: true, isSelected: false),
      Answer(text: 'Elma', isCorrect: false, isSelected: false),
      Answer(text: 'Portakal', isCorrect: false, isSelected: false),
      Answer(text: 'Muz', isCorrect: false, isSelected: false),
    ],
  ),
  Word(
    text: 'Orange',
    answers: [
      Answer(text: 'Portakal', isCorrect: true, isSelected: false),
      Answer(text: 'Elma', isCorrect: false, isSelected: false),
      Answer(text: 'Armut', isCorrect: false, isSelected: false),
      Answer(text: 'Muz', isCorrect: false, isSelected: false),
    ],
  ),
  Word(
    text: 'Banana',
    answers: [
      Answer(text: 'Muz', isCorrect: true, isSelected: false),
      Answer(text: 'Elma', isCorrect: false, isSelected: false),
      Answer(text: 'Armut', isCorrect: false, isSelected: false),
      Answer(text: 'Portakal', isCorrect: false, isSelected: false),
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