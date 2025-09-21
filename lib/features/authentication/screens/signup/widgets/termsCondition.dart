import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TermsAndConditionCheckBox extends StatelessWidget {
  const TermsAndConditionCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunction.isDarkMode(context);
    // final controller = SignUpController.instance;

    return Row(
      children: [
        // SizedBox(
        //     width: 24,
        //     height: DSizes.spaceBtwSections * 1.5,
        //     child: Obx(() => Checkbox(
        //         // value: controller.privacyPolicy.value,
        //         onChanged: (value) => controller.privacyPolicy.value =
        //         !controller.privacyPolicy.value))
        // ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: DTexts.iAgreeTo,
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: DTexts.privacyPolicy,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? DColors.light : DColors.dark,
                  decoration: TextDecoration.underline,
                  decorationColor:
                  dark ? DColors.light : DColors.primary)),
          TextSpan(
              text: DTexts.and,
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: DTexts.termsOfUse,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? DColors.light : DColors.dark,
                  decoration: TextDecoration.underline,
                  decorationColor:
                  dark ? DColors.light : DColors.primary)),
        ])),
      ],
    );
  }
}
