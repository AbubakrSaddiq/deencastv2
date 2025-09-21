import 'package:deencastv2/utils/constants/color.dart';
import 'package:flutter/material.dart';

import '../../../../utils/helpers/helper_functions.dart';

class ScholarNameText extends StatelessWidget {
  const ScholarNameText({
    super.key,
    required this.title,
    this.smallSize = false,
    this.maxLine = 2,
    this.textAlign = TextAlign.left,
  });

  final String title;
  final bool smallSize;
  final int maxLine;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final darkMode = DHelperFunction.isDarkMode(context);

    return Text(
      title,
      style: Theme.of(context).textTheme.bodyMedium?.apply(
        color: darkMode ? DColors.light : DColors.dark,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
      textAlign: textAlign,
    );
  }
}
