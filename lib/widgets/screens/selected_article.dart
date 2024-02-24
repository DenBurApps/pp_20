import 'package:flutter/material.dart';

import '../../helpers/constants.dart';
import '../../helpers/image/image_helper.dart';

class SelectedArticleView extends StatelessWidget {
  const SelectedArticleView({super.key});

  @override
  Widget build(BuildContext context) {
    final index =
    ModalRoute.of(context)!.settings.arguments as Map<String, int>;
    final i = index['index'];
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                ImageHelper.getImage(ImageNames.tablePoker).image,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: 26,
                          width: 79,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: SizedBox(
                                    child: Icon(
                                  Icons.arrow_back,
                                  size: 18,
                                )),
                              ),
                              Text(
                                'back',
                                style: Theme.of(context).textTheme.bodySmall,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width / 2),
                      child: _ArticleCard(title: titles[i!], text: articles[i],),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ArticleCard extends StatelessWidget {
  const _ArticleCard({super.key, required this.title, required this.text});

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 16,
              width: 39,
              decoration: BoxDecoration(
                color: const Color(0xFFE5E5E5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                  child: Text(
                'Guide',
                style: Theme.of(context).textTheme.bodySmall,
              )),
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 10),
            Text(text, style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black54),),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
