import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pp_20/services/storage/storage_service.dart';
import '../../helpers/image/image_helper.dart';
import '../../services/navigation/route_names.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final _storageService = GetIt.instance<StorageService>();
  @override
  void initState() {
    _init();
    super.initState();
  }

  var _currentStep = 0;

  final _images = [
    ImageHelper.getImage(ImageNames.onboarding_1).image,
    ImageHelper.getImage(ImageNames.onboarding_2).image,
  ];

  void _init() {
    _storageService.setBool(StorageKeys.seenOnboarding, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: InkWell(
        onTap: () {
          setState(() {
            if (_currentStep == 1) {
              Navigator.of(context).pushNamed(RouteNames.homeMenu);
              return;
            }
            _currentStep++;
          });
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: _images[_currentStep],
                ),
              ),
            ),
            (_currentStep == 0)
                ? Padding(
                    padding:
                        const EdgeInsets.only(top: 60, left: 50, right: 50),
                    child: Text('Become a\npro from the\nground up.',
                        style: Theme.of(context).textTheme.displayLarge),
                  )
                : Padding(
                    padding:
                        const EdgeInsets.only(top: 60, left: 50, right: 50),
                    child: Text(
                        'Increase your\nhorizons with\ninteresting articles!',
                        style: Theme.of(context).textTheme.displayMedium),
                  )
          ],
        ),
      ),
    );
  }
}
