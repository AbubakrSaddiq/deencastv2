import 'package:deencastv2/utils/constants/color.dart';
import 'package:flutter/material.dart';

import '../../../../utils/helpers/helper_functions.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,
    required this.title,
    required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final darkMode = DHelperFunction.isDarkMode(context);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: darkMode ? DColors.dark : DColors.light,
          borderRadius: BorderRadius.circular(12),
            border: Border.all(color: DColors.emeraldGreen)
        ),
        child: Text(title,
          textAlign: TextAlign.center,
          style: TextTheme.of(context).headlineSmall ),
      ),
    );
  }
}
