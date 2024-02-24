import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import '../../helpers/constants.dart';
import '../../helpers/image/image_helper.dart';
import '../../services/navigation/route_names.dart';
import '../../services/storage/storage_service.dart';
import '../components/points_widget.dart';

class QuizView extends StatefulWidget {
  const QuizView({super.key});

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  final _storageService = GetIt.instance<StorageService>();
  final _quizBox = Hive.box('appBox');

  late int index;

  var _points = 0;

  int trying = 0;

  int correctAnswers = 0;

  int incorrectAnswers = 0;

  bool canShowResult = false;

  int? _yourAnswer;

  var _questions = [];

  @override
  void initState() {
    final storageService = GetIt.instance<StorageService>();
    _points = storageService.getInt(StorageKeys.points) ?? 0;
    super.initState();
    _quizBox.put('chance', 10);
    index = 0;
  }

  void validate(choice) async {
    setState(() {
      _yourAnswer = choice;
    });

    if (choice == _questions[index]["answer"]) {
      setState(() {
        correctAnswers++;
        trying++;
      });
    } else {
      setState(() {
        incorrectAnswers++;
        trying++;
        _quizBox.put('chance', _quizBox.get('chance') - 1);
      });
    }

    if (trying == _questions.length ||
        _quizBox.get('chance') == 0 ||
        index == _questions.length - 1) {
      Timer(const Duration(seconds: 1), () => canShowResult = true);
    }
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      _yourAnswer = null;
    });
    if (index >= _questions.length - 1) return;
    index++;
  }

  final _resultImages = [
    ImageNames.win,
    ImageNames.lose,
  ];

  @override
  Widget build(BuildContext context) {
    final indexOfQuestions =
        ModalRoute.of(context)!.settings.arguments as Map<String, int>;
    final i = indexOfQuestions['index'];
    var questions = allQuestions[i!];
    _questions = questions;
    final question = questions[index] as Map<String, dynamic>;
    final options = question['options'] as List<String>;
    if (canShowResult == true) {
      setState(() {
        if (correctAnswers == 5) {
          _points = _points + 100;
          _storageService.setInt(StorageKeys.points, _points);
        }
      });

      return QuizResultView(
        totalAnswers: 5,
        correctAnswers: correctAnswers,
        onPressed: () {
          setState(() {
            canShowResult = false;
            index = 0;
            trying = 0;
            correctAnswers = 0;
            incorrectAnswers = 0;
            canShowResult = false;
            Navigator.of(context).pushNamed(RouteNames.quiz);
          });
        },
        resultImage:
            (correctAnswers == 5) ? _resultImages.first : _resultImages.last,
        points: (correctAnswers == 5) ? 100 : 0,
        title: (correctAnswers == 5) ? 'Good result, king!' : 'Bad score...Try again!',
      );
    } else {
      return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Text(titles[i], style: Theme.of(context).textTheme.displaySmall),
                const SizedBox(height: 10),
                LinearProgressIndicator(
                  value: index / 5,
                ),
                const Spacer(),
                QuizQuestionCard(
                  question: question["question"],
                  step: index + 1,
                ),
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: QuizAnswerCard(
                        answer: options[0],
                        isCorrectAnswer: questions[index]['answer'] == 0,
                        isYourAnswer: _yourAnswer == 0,
                        isProcessing: _yourAnswer != null,
                        onPressed: () {
                          validate(0);
                        },
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: QuizAnswerCard(
                        answer: options[1],
                        onPressed: () {
                          validate(1);
                        },
                        isYourAnswer: _yourAnswer == 1,
                        isProcessing: _yourAnswer != null,
                        isCorrectAnswer: questions[index]['answer'] == 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: QuizAnswerCard(
                        answer: options[2],
                        onPressed: () {
                          validate(2);
                        },
                        isYourAnswer: _yourAnswer == 2,
                        isProcessing: _yourAnswer != null,
                        isCorrectAnswer: questions[index]['answer'] == 2,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: QuizAnswerCard(
                        answer: options[3],
                        onPressed: () {
                          validate(3);
                        },
                        isYourAnswer: _yourAnswer == 3,
                        isProcessing: _yourAnswer != null,
                        isCorrectAnswer: questions[index]['answer'] == 3,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      );
    }
  }
}

class QuizAnswerCard extends StatelessWidget {
  const QuizAnswerCard({
    super.key,
    required this.answer,
    required this.onPressed,
    required this.isCorrectAnswer,
    required this.isYourAnswer,
    required this.isProcessing,
  });

  final String answer;
  final VoidCallback onPressed;
  final bool isCorrectAnswer;
  final bool isYourAnswer;
  final bool isProcessing;

  Color _getColor() {
    if (!isProcessing) return Colors.white;
    if (isYourAnswer && !isCorrectAnswer) return const Color(0xFFFF9696);
    if (isCorrectAnswer) return const Color(0xFFABFF96);
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: SizedBox(
        height: 130,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all(_getColor()),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  side: const BorderSide(
                      color: Colors.black12, width: 1),
                  borderRadius: BorderRadius.circular(10)))),
          child: Center(
              child: Text(answer,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: Theme.of(context).colorScheme.primary))),
        ),
      )
    );
  }
}

class QuizQuestionCard extends StatelessWidget {
  const QuizQuestionCard(
      {super.key, required this.question, required this.step});

  final String question;
  final int step;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Text(
            question,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.black,
                ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class QuizResultView extends StatelessWidget {
  QuizResultView(
      {super.key,
      required this.totalAnswers,
      required this.correctAnswers,
      required this.onPressed,
      required this.resultImage, required this.points, required this.title});

  final int totalAnswers;
  final int correctAnswers;
  final VoidCallback onPressed;
  final String resultImage;
  final int points;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              ImageHelper.getImage(resultImage,
                  width: MediaQuery.of(context).size.width / 1.5),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Colors.black),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'you earned:',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: Colors.black),
                  ),
                  const SizedBox(width: 20),
                  PointsWidget(points: points),
                ],
              ),
              const Spacer(),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(RouteNames.homeMenu);
                  },
                  child: Text('Back',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white))),
            ],
          ),
        ),
      ),
    );
  }
}
