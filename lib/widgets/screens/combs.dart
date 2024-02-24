import 'package:flutter/material.dart';
import 'package:pp_20/helpers/constants.dart';

import '../../helpers/image/image_helper.dart';
import '../../services/navigation/route_names.dart';

class CombsView extends StatelessWidget {
  const CombsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ListView(
              children: [
                const SizedBox(height: 30),
                Center(
                    child: Text('Combinations of poker',
                        style: Theme.of(context).textTheme.displaySmall)),
                const SizedBox(height: 50),
                Column(
                  children: [
                    for (int i = 0; i < combNames.length; i++)
                      _CombCard(
                        name: combNames[i],
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            RouteNames.selectedComb,
                            arguments: {'index': i},
                          );
                        },
                        image: combImages[i],
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

class _CombCard extends StatelessWidget {
  const _CombCard(
      {super.key,
      required this.name,
      required this.onTap,
      required this.image});

  final String name;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 90,
          width: double.infinity,
          child: Row(
            children: [
              SizedBox(
                width: 177,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: Theme.of(context).textTheme.bodyLarge),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                          height: 16,
                          width: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE5E5E5).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Read more',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: SizedBox(child: ImageHelper.getImage(image)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
