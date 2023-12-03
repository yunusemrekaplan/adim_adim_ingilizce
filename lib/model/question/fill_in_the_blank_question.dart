import '../answer.dart';
import 'question.dart';

class FillInTheBlankQuestion extends Question {
  FillInTheBlankQuestion({
    required String question,
    required List<Answer> answers,
  }) : super(question: question, answers: answers);

  /*
  factory FillInTheBlankQuestion.fromJson(Map<String, dynamic> json) {
    return FillInTheBlankQuestion(
      //question: json['question'],
      //answer: json['answer'],
    );
  }
  */
  static List<Question> questions = [
    FillInTheBlankQuestion(
      question: 'The capital of the United States is ________.',
      answers: [
        Answer(answer: 'Washington, D.C.', isCorrect: true, isSelected: false),
        Answer(answer: 'New York City', isCorrect: false, isSelected: false),
        Answer(answer: 'Los Angeles', isCorrect: false, isSelected: false),
        Answer(answer: 'Chicago', isCorrect: false, isSelected: false),
      ],
    )
  ];
}
