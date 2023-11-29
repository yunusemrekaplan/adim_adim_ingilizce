import 'category.dart';

class Question {
  late final int id;
  late final Category category;
  late final String questionText;
  late final String answerText;
  late final List<String> answers;

  Question({
    required this.questionText,
    required this.answerText,
    required this.answers,
  });
}

List<Question> colorQuestions = <Question>[
  Question(
    questionText: 'Green',
    answerText: 'Yeşil',
    answers: ['Kırmızı', 'Sarı', 'Yeşil', 'Mavi'],
  ),
  Question(
    questionText: 'Purple',
    answerText: 'Mor',
    answers: ['Turuncu', 'Pembe', 'Mor', 'Gri'],
  ),
  Question(
    questionText: 'Yellow',
    answerText: 'Sarı',
    answers: ['Siyah', 'Beyaz', 'Sarı', 'Kahverengi'],
  ),
  Question(
    questionText: 'Red',
    answerText: 'Kırmızı',
    answers: ['Mavi', 'Yeşil', 'Kırmızı', 'Sarı'],
  ),
  Question(
    questionText: 'Black',
    answerText: 'Siyah',
    answers: ['Beyaz', 'Siyah', 'Gri', 'Kahverengi'],
  ),
  Question(
    questionText: 'Pink',
    answerText: 'Pembe',
    answers: ['Turuncu', 'Pembe', 'Mor', 'Sarı'],
  ),
  Question(
    questionText: 'Brown',
    answerText: 'Kahverengi',
    answers: ['Mavi', 'Siyah', 'Kahverengi', 'Yeşil'],
  ),
  Question(
    questionText: 'Gray',
    answerText: 'Gri',
    answers: ['Beyaz', 'Gri', 'Pembe', 'Kırmızı'],
  ),
  Question(
    questionText: 'Blue',
    answerText: 'Mavi',
    answers: ['Sarı', 'Mavi', 'Yeşil', 'Siyah'],
  ),
  Question(
    questionText: 'Orange',
    answerText: 'Turuncu',
    answers: ['Mor', 'Turuncu', 'Pembe', 'Kırmızı'],
  ),
  Question(
    questionText: 'White',
    answerText: 'Beyaz',
    answers: ['Gri', 'Beyaz', 'Sarı', 'Kahverengi'],
  ),
  Question(
    questionText: 'Turquoise',
    answerText: 'Turkuaz',
    answers: ['Turuncu', 'Pembe', 'Mor', 'Turkuaz'],
  ),
  Question(
    questionText: 'Gold',
    answerText: 'Altın',
    answers: ['Gümüş', 'Altın', 'Sarı', 'Yeşil'],
  ),
  Question(
    questionText: 'Silver',
    answerText: 'Gümüş',
    answers: ['Altın', 'Gümüş', 'Beyaz', 'Gri'],
  ),
  Question(
    questionText: 'Indigo',
    answerText: 'Çivit Mavisi',
    answers: ['Mor', 'Çivit Mavisi', 'Yeşil', 'Turuncu'],
  ),
  Question(
    questionText: 'Cyan',
    answerText: 'Camgöbeği',
    answers: ['Sarı', 'Camgöbeği', 'Pembe', 'Yeşil'],
  ),
  Question(
    questionText: 'Maroon',
    answerText: 'Kestane Rengi',
    answers: ['Kestane Rengi', 'Siyah', 'Kahverengi', 'Beyaz'],
  ),
  Question(
    questionText: 'Lavender',
    answerText: 'Lavanta',
    answers: ['Lavanta', 'Turuncu', 'Pembe', 'Yeşil'],
  ),
  Question(
    questionText: 'Beige',
    answerText: 'Bej',
    answers: ['Beyaz', 'Sarı', 'Bej', 'Gri'],
  ),
  Question(
    questionText: 'Olive',
    answerText: 'Zeytin Yeşili',
    answers: ['Zeytin Yeşili', 'Turuncu', 'Kahverengi', 'Siyah'],
  ),
  Question(
    questionText: 'Violet',
    answerText: 'Menekşe Rengi',
    answers: ['Menekşe Rengi', 'Turuncu', 'Pembe', 'Yeşil'],
  ),
  Question(
    questionText: 'Teal',
    answerText: 'Deniz Mavisi',
    answers: ['Turuncu', 'Kahverengi', 'Deniz Mavisi', 'Kırmızı'],
  ),
  Question(
    questionText: 'Charcoal',
    answerText: 'Kömür Rengi',
    answers: ['Kömür Rengi', 'Beyaz', 'Siyah', 'Pembe'],
  ),
  Question(
    questionText: 'Magenta',
    answerText: 'Mor',
    answers: ['Sarı', 'Siyah', 'Mor', 'Yeşil'],
  ),
  Question(
    questionText: 'Crimson',
    answerText: 'Kırmızı',
    answers: ['Mor', 'Gri', 'Kahverengi', 'Kırmızı'],
  ),
  Question(
    questionText: 'Salmon',
    answerText: 'Somon Rengi',
    answers: ['Somon Rengi', 'Kömür Rengi', 'Sarı', 'Magenta'],
  ),
  Question(
    questionText: 'Burgundy',
    answerText: 'Bordo',
    answers: ['Turuncu', 'Burgonya', 'Gri', 'Bordo'],
  ),
  Question(
    questionText: 'Chartreuse',
    answerText: 'Açık Yeşil',
    answers: ['Sarı', 'Turuncu', 'Açık Yeşil', 'Kahverengi'],
  ),
  Question(
    questionText: 'Sepia',
    answerText: 'Sepya',
    answers: ['Siyah', 'Mor', 'Gri', 'Sepya'],
  ),
  Question(
    questionText: 'Turmeric',
    answerText: 'Sarı',
    answers: ['Sarı', 'Kırmızı', 'Yeşil', 'Mavi'],
  ),
  Question(
    questionText: 'Coral',
    answerText: 'Turuncu',
    answers: ['Turuncu', 'Mavi', 'Mor', 'Kahverengi'],
  ),
  Question(
    questionText: 'Amber',
    answerText: 'Turuncu',
    answers: ['Yeşil', 'Amber', 'Turuncu', 'Pembe'],
  ),
  Question(
    questionText: 'Auburn',
    answerText: 'Kahverengi',
    answers: ['Kahverengi', 'Mor', 'Sarı', 'Kırmızı'],
  ),
  Question(
    questionText: 'Pearl',
    answerText: 'İnci',
    answers: ['İnci', 'Gri', 'Mavi', 'Sarı'],
  ),
  Question(
    questionText: 'Mint',
    answerText: 'Yeşil',
    answers: ['Yeşil', 'Turuncu', 'Mor', 'Kahverengi'],
  ),
  Question(
    questionText: 'Slate',
    answerText: 'Gri',
    answers: ['Gri', 'Sarı', 'Turuncu', 'Mavi'],
  ),
];

List<Question> animalQuestions = <Question>[
  Question(
    questionText: 'Cat',
    answerText: 'Kedi',
    answers: ['Köpek', 'Kuş', 'At'],
  ),
  Question(
    questionText: 'Dog',
    answerText: 'Köpek',
    answers: ['Kedi', 'Kuş', 'At'],
  ),
  Question(
    questionText: 'Bird',
    answerText: 'Kuş',
    answers: ['Kedi', 'Köpek', 'At'],
  ),
  Question(
    questionText: 'Horse',
    answerText: 'At',
    answers: ['Kedi', 'Köpek', 'Kuş'],
  ),
];

List<Question> weatherQuestions = <Question>[
  Question(
    questionText: 'Cloudy',
    answerText: 'Bulutlu',
    answers: ['Güneşli', 'Yağmurlu', 'Karlı'],
  ),
  Question(
    questionText: 'Sunny',
    answerText: 'Güneşli',
    answers: ['Bulutlu', 'Yağmurlu', 'Karlı'],
  ),
  Question(
    questionText: 'Rainy',
    answerText: 'Yağmurlu',
    answers: ['Bulutlu', 'Güneşli', 'Karlı'],
  ),
  Question(
    questionText: 'Snowy',
    answerText: 'Karlı',
    answers: ['Bulutlu', 'Güneşli', 'Yağmurlu'],
  ),
];

List<Question> foodQuestions = <Question>[
  Question(
    questionText: 'Bread',
    answerText: 'Ekmek',
    answers: ['Peynir', 'Makarna', 'Pilav'],
  ),
  Question(
    questionText: 'Cheese',
    answerText: 'Peynir',
    answers: ['Ekmek', 'Makarna', 'Pilav'],
  ),
  Question(
    questionText: 'Pasta',
    answerText: 'Makarna',
    answers: ['Ekmek', 'Peynir', 'Pilav'],
  ),
  Question(
    questionText: 'Rice',
    answerText: 'Pilav',
    answers: ['Ekmek', 'Peynir', 'Makarna'],
  ),
];

List<Question> fruitQuestions = <Question>[
  Question(
    questionText: 'Apple',
    answerText: 'Elma',
    answers: ['Armut', 'Portakal', 'Muz'],
  ),
  Question(
    questionText: 'Pear',
    answerText: 'Armut',
    answers: ['Elma', 'Portakal', 'Muz'],
  ),
  Question(
    questionText: 'Orange',
    answerText: 'Portakal',
    answers: ['Elma', 'Armut', 'Muz'],
  ),
  Question(
    questionText: 'Banana',
    answerText: 'Muz',
    answers: ['Elma', 'Armut', 'Portakal'],
  ),
];
