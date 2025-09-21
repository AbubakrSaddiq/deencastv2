import 'package:flutter/material.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../utils/constants/color.dart';
import '../controller/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key, required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunction.isDarkMode(context);
    return  SizedBox(width: 200,
          child: ElevatedButton(
            onPressed: () => OnBoardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                backgroundColor: dark ? DColors.dark : DColors.emeraldGreen ,

                side: const BorderSide(color: DColors.emeraldGreen)
            ),
            child: child,
          ),
        );
  }
}
