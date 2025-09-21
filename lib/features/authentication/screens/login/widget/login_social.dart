import 'package:flutter/material.dart';
import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class socialButtons extends StatelessWidget {
  const socialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ///google icon
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: DColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: DSizes.iconMd,
              height: DSizes.iconMd,
              image: AssetImage(DImages.googleLogo),
            ),
          ),
        ),
        const SizedBox(width: DSizes.spaceBtwSections,),
        ///facebook icon
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: DColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: DSizes.iconMd,
              height: DSizes.iconMd,
              image: AssetImage(DImages.facebookLogo),
            ),
          ),
        ),
      ],
    );
  }
}
