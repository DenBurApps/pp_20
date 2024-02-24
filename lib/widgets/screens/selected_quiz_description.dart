import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pp_20/widgets/components/points_widget.dart';

import '../../helpers/constants.dart';
import '../../helpers/image/image_helper.dart';
import '../../services/navigation/route_names.dart';
import '../../services/storage/storage_service.dart';

class SelectedQuizDescriptionView extends StatefulWidget {
   SelectedQuizDescriptionView({super.key});

  @override
  State<SelectedQuizDescriptionView> createState() => _SelectedQuizDescriptionViewState();
}

class _SelectedQuizDescriptionViewState extends State<SelectedQuizDescriptionView> {
   final _storageService = GetIt.instance<StorageService>();

   var _completedLessons = <String>{};

   @override
   void initState() {
     super.initState();
     _completedLessons = (_storageService.getStringList(StorageKeys.completedLessons) ?? <String>[]).toSet();
   }

  @override
  Widget build(BuildContext context) {
    final index =
        ModalRoute.of(context)!.settings.arguments as Map<String, int>;
    final i = index['index'];
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: SafeArea(
          child: ListView(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.chevron_left_rounded)),
                    const Spacer(),
                    Container(
                        height: 32,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Quiz',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    _PoinsCard(),
                    const SizedBox(height: 15),
                    Text(titles[i!],
                        style: Theme.of(context).textTheme.displayLarge),
                    const SizedBox(height: 10),
                    Text(articles[i],
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: Colors.black54)),
                    const SizedBox(height: 15),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _completedLessons.add(i.toString());
                            _storageService.setStringList(StorageKeys.completedLessons, _completedLessons.toList());
                          });
                          Navigator.of(context).pushNamed(
                            RouteNames.quiz,
                            arguments: {'index': i},
                          );
                        },
                        child: Text(
                          'Start',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Colors.white),
                        )),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PoinsCard extends StatelessWidget {
  const _PoinsCard({super.key});

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
                  image: ImageHelper.getImage(ImageNames.tablePoker).image)),
          child: const Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: PointsWidget(points: 100),
            ),
          ),
        ),
      ],
    );
  }
}
