class SoundQuestion {
  late final String soundPath;
  late final String correctAnswer;

  SoundQuestion(this.soundPath, this.correctAnswer);

  bool checkAnswer(String userAnswer) {
    return userAnswer == correctAnswer;
  }
}
