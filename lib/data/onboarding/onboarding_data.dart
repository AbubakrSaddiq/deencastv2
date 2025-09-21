import 'package:deencastv2/utils/constants/text_strings.dart';

///Onboarding data contents
class OnboardingContent {
  final String title;
  final String subtitle;
  final String image;

  OnboardingContent({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

final List<OnboardingContent> onboardingData = [
  OnboardingContent(
    title: DTexts.welcomeDeenCast,
    subtitle: DTexts.discoverLectureRecitation,
    image: "assets/images/onboarding1.png",
  ),
  OnboardingContent(
    title: DTexts.learnFromScholars,
    subtitle: DTexts.exploreScholarsLectures,
    image: "assets/images/onboarding2.png",
  ),
  OnboardingContent(
    title: DTexts.saveListenAnytime,
    subtitle: DTexts.bookmarkFavorites,
    image: "assets/images/onboarding3.png",
  ),
];
