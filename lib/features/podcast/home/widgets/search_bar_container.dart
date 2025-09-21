import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SearchBarContainer extends StatelessWidget {
  const SearchBarContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: DSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunction.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: DHelperFunction.screenWidth(),
          padding: const EdgeInsets.all(DSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                ? DColors.dark
                : DColors.white
                : Colors.transparent,
            borderRadius: BorderRadius.circular(DSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: DColors.emeraldGreen) : null,
          ),
          child: Row(
            children: [
              Icon(icon),
              const SizedBox(
                width: DSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
