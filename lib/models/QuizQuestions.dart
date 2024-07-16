class QuizQuestions {
  const QuizQuestions(this.text, this.answers, this.correctAns);

  final String text; //to hold the questions
  final List<String> answers; //to hold the corres list of answers
  final String correctAns;

  List<String> shuffledAnswer() {
    List<String> shuffled = List.of(answers);
    shuffled.shuffle();
    return shuffled;
  }
}
