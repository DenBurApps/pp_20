import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pp_20/widgets/screens/combs.dart';
import '/widgets/screens/home.dart';
import '/widgets/screens/quiz_carousel.dart';
import '/widgets/screens/settings.dart';
import '../../helpers/image/image_helper.dart';
import '../../services/event_bus.dart';

class HomeMenuView extends StatefulWidget {
  const HomeMenuView({Key? key}) : super(key: key);

  @override
  State<HomeMenuView> createState() => _HomeMenuViewState();
}

class _HomeMenuViewState extends State<HomeMenuView> {
  int bottomSelectedIndex = 0;
  late StreamSubscription<Event> sub;
  final eventBus = GetIt.instance<EventBus>();

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  void initState() {
    sub = eventBus.stream<Event>().listen((event) {
      if (event is Quiz) {
        bottomTapped(1);
      } else if (event is Combs) {
        bottomTapped(2);
      } else if (event is Settings) {
        bottomTapped(3);
      }
    });
    super.initState();
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  Widget buildPageView() {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        HomeView(),
        QuizCarouselView(),
        CombsView(),
        SettingsView(),
      ],
    );
  }

  Widget bottomNavigationBar() {
    return Container(
      height: 65,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 0, blurRadius: 10),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          selectedLabelStyle:
              TextStyle(color: Theme.of(context).colorScheme.onSurface),
          currentIndex: bottomSelectedIndex,
          onTap: (index) {
            bottomTapped(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageHelper.getSvg(SvgNames.homeIcon, color: Colors.grey),
              activeIcon: ImageHelper.getSvg(SvgNames.homeIcon),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageHelper.getSvg(SvgNames.guideIcon, color: Colors.grey),
              activeIcon: ImageHelper.getSvg(SvgNames.guideIcon),
              label: 'Quiz',
            ),
            BottomNavigationBarItem(
              icon: ImageHelper.getSvg(SvgNames.combsIcon, color: Colors.grey),
              activeIcon: ImageHelper.getSvg(SvgNames.combsIcon),
              label: 'Combs',
            ),
            BottomNavigationBarItem(
              icon:
                  ImageHelper.getSvg(SvgNames.settingsIcon, color: Colors.grey),
              activeIcon: ImageHelper.getSvg(SvgNames.settingsIcon),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildPageView(),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: bottomNavigationBar(),
          )
        ],
      ),
    );
  }
}
