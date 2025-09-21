import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class LibraryItemCard extends StatelessWidget {
  const LibraryItemCard({
    super.key,
    required this.leadingIcon,
    this.trailingIcon = Iconsax.arrow_right_3,
    required this.text,
  });

  final IconData leadingIcon;
  final IconData trailingIcon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final darkMode = DHelperFunction.isDarkMode(context);

    return Container(
      width: DDeviceUtils.getScreenWidth(context),
      height: 60,
      padding: EdgeInsets.all(DSizes.sm),
      margin: EdgeInsetsGeometry.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: darkMode ? DColors.dark : DColors.light,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: DColors.emeraldGreen),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ///Leading icon
              Icon(leadingIcon),
              SizedBox(width: DSizes.spaceBtwItems),

              ///text
              Text(text, style: Theme.of(context).textTheme.headlineSmall),
            ],
          ),
          Row(
            children: [
              ///Trailing icon
              Icon(trailingIcon),
            ],
          ),
        ],
      ),
    );
  }
}
