import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../helpers/constants.dart';
import '../../helpers/image/image_helper.dart';
import '../../services/navigation/route_names.dart';
import '../../services/storage/storage_service.dart';
import '../components/points_widget.dart';

class QuizCarouselView extends StatefulWidget {
  const QuizCarouselView({super.key});

  @override
  State<QuizCarouselView> createState() => _QuizCarouselViewState();
}

class _QuizCarouselViewState extends State<QuizCarouselView> {
  final _storageService = GetIt.instance<StorageService>();
  var _points = 0;
  late final _completedLessons;

  @override
  void initState() {
    final storageService = GetIt.instance<StorageService>();
    _points = storageService.getInt(StorageKeys.points) ?? 0;
    _completedLessons =
        (_storageService.getStringList(StorageKeys.completedLessons) ??
                <String>[])
            .toSet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 10, height: 10),
                        const Spacer(),
                        PointsWidget(points: _points),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text('Shall we do a Quizz?',
                        style: Theme.of(context).textTheme.labelLarge),
                    const SizedBox(height: 10),
                    Text('Take the quizzes and get points!',
                        style: Theme.of(context).textTheme.bodyLarge),
                    SizedBox(height: MediaQuery.of(context).size.width / 6),
                  ],
                ),
              ),
              CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 16 / 13,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [
                    for (int i = 0; i < titles.length; i++)
                      _QuizCarouselCard(
                        title: titles[i],
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            RouteNames.selectedQuiz,
                            arguments: {'index': i},
                          );
                        },
                        isCompleted: _completedLessons.contains(i.toString()),
                      ),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}

class _QuizCarouselCard extends StatelessWidget {
  const _QuizCarouselCard(
      {super.key,
      required this.title,
      required this.onTap,
      required this.isCompleted});

  final String title;
  final VoidCallback onTap;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(2, 2)),
            ],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: ImageHelper.getImage(ImageNames.quizCard).image,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Text(title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: Colors.white)),
                    ),
                    const Spacer(),
                    const PointsWidget(points: 100),
                  ],
                ),
              ),
              const Spacer(),
              (isCompleted)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Start',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        const SizedBox(width: 10),
                        const Icon(Icons.done_all_rounded)
                      ],
                    )
                  : Center(
                      child: Text(
                        'Start',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
