class Answer {
  final String text;
  final bool isCorrect;
  bool isSelected = false;

  Answer({
    required this.text,
    required this.isCorrect,
    required this.isSelected,
  });

  factory Answer.fromJson(Map<String, dynamic> json) {
    return Answer(
      text: json['text'],
      isCorrect: json['isCorrect'],
      isSelected: json['isSelected'],
    );
  }
}
