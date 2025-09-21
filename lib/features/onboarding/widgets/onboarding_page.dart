import 'package:deencastv2/features/onboarding/widgets/onboarding_next_button.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle, required this.child,
  });

  final String image, title, subTitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(DSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: DHelperFunction.screenWidth() * 0.8,
            height: DHelperFunction.screenHeight() * 0.6,
          ),
          Text(
            title,
            style: Theme
                .of(context)
                .textTheme
                .headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: DSizes.spaceBtwItems,
          ),
          Text(
            subTitle,
            style: Theme
                .of(context)
                .textTheme
                .bodyMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: DSizes.spaceBtwSections,),
          //Next button
          OnBoardingNextButton(child: child,)
        ],
      ),
    );
  }
}
