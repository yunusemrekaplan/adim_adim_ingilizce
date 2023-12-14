class Answer {
  final String answer;
  final bool isCorrect;
  bool isSelected = false;

  Answer({
    required this.answer,
    required this.isCorrect,
    required this.isSelected,
  });

  factory Answer.fromJson(Map<String, dynamic> json) {
    return Answer(
      answer: json['answer'],
      isCorrect: json['isCorrect'],
      isSelected: json['isSelected'],
    );
  }
}
