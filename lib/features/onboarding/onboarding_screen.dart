import 'package:deencastv2/features/onboarding/widgets/onboarding_indicator.dart';
import 'package:deencastv2/features/onboarding/widgets/onboarding_page.dart';
import 'package:deencastv2/features/onboarding/widgets/onboarding_skip_button.dart';
import 'package:deencastv2/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/text_strings.dart';
import 'controller/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          ///horizontal scrollable page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              //page 1
              OnBoardingPage(
                title: DTexts.welcomeDeenCast,
                subTitle: DTexts.discoverLectureRecitation,
                image: DImages.onboardingImage1,
                child: Text('Get Started'),
              ),
              //page 2
              OnBoardingPage(
                title: DTexts.learnFromScholars,
                subTitle: DTexts.exploreScholarsLectures,
                image: DImages.onboardingImage2,
                child: Text('Next'),
              ),
              //page 3
              OnBoardingPage(
                title: DTexts.saveListenAnytime,
                subTitle: DTexts.bookmarkFavorites,
                image: DImages.onboardingImage3,
                child: Text('Start Listening'),
              ),
            ],
          ),

          ///skip button
          const OnBoardingSkipBtn(),

          ///dot navigation smoothPageIndicator
          const OnBoardingDotNavigation(),

          ///next circular button
          // const OnBoardingNextButton()
        ],
      ),
    );
  }
}

