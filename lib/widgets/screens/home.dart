import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pp_20/services/storage/storage_service.dart';

import '../../helpers/constants.dart';
import '../../helpers/image/image_helper.dart';
import '../../services/navigation/route_names.dart';
import '../components/points_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var _points = 0;

  @override
  void initState() {
    final storageService = GetIt.instance<StorageService>();
    _points = storageService.getInt(StorageKeys.points) ?? 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: ListView(
              children: [
                Row(
                  children: [
                    Text('Welcome back!',
                        style: Theme.of(context).textTheme.labelLarge),
                    const Spacer(),
                    PointsWidget(points: _points),
                  ],
                ),
                const SizedBox(height: 20),
                const _PokerHistoryCard(),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Text('For you',
                        style: Theme.of(context).textTheme.labelMedium),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    for (int i = 0; i < titles.length; i++)
                      _ArticleCard(
                        title: titles[i],
                        image: articleImages[i % 3],
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            RouteNames.selectedArticle,
                            arguments: {'index': i},
                          );
                        },
                      ),
                    const SizedBox(height: 70),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ArticleCard extends StatelessWidget {
  const _ArticleCard(
      {super.key,
      required this.title,
      required this.image,
      required this.onTap});

  final String title;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 100,
          width: double.infinity,
          child: Row(
            children: [
              SizedBox(
                width: 177,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Article name',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.black54),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.bodyLarge,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                            height: 16,
                            width: 38,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE5E5E5).withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                'Guide',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            )),
                        const SizedBox(width: 10),
                        Text('With Test',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.black54)),
                        const SizedBox(width: 10),
                        Text('#History',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.black54)),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: ImageHelper.getImage(image).image,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PokerHistoryCard extends StatelessWidget {
  const _PokerHistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.width / 2,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: ImageHelper.getImage(ImageNames.pokerHistory).image)),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 186,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 7),
                  child: Text(
                    'History of poker:\nTake tests and get points!',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
