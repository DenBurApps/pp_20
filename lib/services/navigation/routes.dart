import 'package:flutter/cupertino.dart';
import 'package:pp_20/widgets/screens/combs.dart';
import 'package:pp_20/widgets/screens/home_menu.dart';
import 'package:pp_20/widgets/screens/privacy.dart';
import 'package:pp_20/widgets/screens/selected_comb.dart';
import 'package:pp_20/widgets/screens/selected_quiz_description.dart';
import '../../widgets/screens/quiz.dart';
import '../../widgets/screens/selected_article.dart';
import '../../widgets/screens/home.dart';
import '../../widgets/screens/onboarding.dart';
import '../../widgets/screens/quiz_carousel.dart';
import '../../widgets/screens/settings.dart';
import '../../widgets/screens/splash.dart';
import '../../widgets/screens/terms.dart';
import 'route_names.dart';

typedef ScreenBuilding = Widget Function(BuildContext context);

class Routes {
  static Map<String, ScreenBuilding> get(BuildContext context) {
    return {
      RouteNames.splash: (context) => const SplashView(),
      RouteNames.onboarding: (context) => const OnboardingView(),
      RouteNames.home: (context) => HomeView(),
      RouteNames.settings: (context) => SettingsView(),
      RouteNames.privacy: (context) => const PrivacyView(),
      RouteNames.terms: (context) => const TermsView(),
      RouteNames.category: (context) => const SelectedArticleView(),
      RouteNames.quizCarousel: (context) => const QuizCarouselView(),
      RouteNames.homeMenu: (context) => const HomeMenuView(),
      RouteNames.combs: (context) => const CombsView(),
      RouteNames.selectedQuiz: (context) => SelectedQuizDescriptionView(),
      RouteNames.selectedArticle: (context) => const SelectedArticleView(),
      RouteNames.selectedComb: (context) => const SelectedCombView(),
      RouteNames.quiz: (context) => QuizView(),
    };
  }
}
