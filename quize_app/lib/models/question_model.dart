class QuestionModel {
  final String image;
  final String title;
  final String questionNumber;
  final List<String> options;
  String selectedAnswer = '';

  QuestionModel({
    required this.image,
    required this.title,
    required this.questionNumber,
    required this.options,
  });
}
