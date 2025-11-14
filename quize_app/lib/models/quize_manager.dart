import 'package:quize_app/assets.dart';
import 'package:quize_app/models/question_model.dart';

class QuizeManager {
  final List<QuestionModel> _quetions = [
    QuestionModel(
      image: Assets.question1,
      title: 'what is the capital of Egypt',
      questionNumber: '1',
      options: ['cairo', 'alex', 'berlin', 'london'],
    ),

    QuestionModel(
      image: Assets.question2,
      title: 'what is the capital of Egypt',
      questionNumber: '2',
      options: ['cairo', 'alex', 'berlin', 'london'],
    ),

    QuestionModel(
      image: Assets.question3,
      title: 'what is the capital of Egypt',
      questionNumber: '3',
      options: ['cairo', 'alex', 'berlin', 'london'],
    ),

    QuestionModel(
      image: Assets.question4,
      title: 'what is the capital of Egypt',
      questionNumber: '4',
      options: ['cairo', 'alex', 'berlin', 'london'],
    ),
  ];

  List<QuestionModel> get questions => _quetions;

  void updateSelectedAnswer(QuestionModel question, String answer) {
    question.selectedAnswer = answer;
  }
}
