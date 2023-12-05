import '../answer.dart';
import 'question.dart';

class SoundQuestion extends Question {
  SoundQuestion({
    required String soundPath,
    required List<Answer> answers,
  }) : super(soundPath: soundPath, answers: answers);

  /*
  factory SoundQuestion.fromJson(Map<String, dynamic> json) {
    return SoundQuestion(
      //question: json['question'],
      //answer: json['answer'],
    );
  }
  */
  static List<Question> questions = [
    SoundQuestion(
      soundPath: 'sounds/france_capital.mp3',
      answers: [
        Answer(answer: 'Paris', isCorrect: true, isSelected: false),
        Answer(answer: 'London', isCorrect: false, isSelected: false),
        Answer(answer: 'Berlin', isCorrect: false, isSelected: false),
        Answer(answer: 'Rome', isCorrect: false, isSelected: false),
      ],
    ),
    SoundQuestion(
      soundPath: 'sounds/solar_system_planet.mp3',
      answers: [
        Answer(answer: 'Mars', isCorrect: false, isSelected: false),
        Answer(answer: 'Venus', isCorrect: false, isSelected: false),
        Answer(answer: 'Jupiter', isCorrect: true, isSelected: false),
        Answer(answer: 'Saturn', isCorrect: false, isSelected: false),
      ],
    ),
  ];
}
