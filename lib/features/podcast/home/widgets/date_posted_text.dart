import 'package:flutter/material.dart';

import '../../../../utils/constants/color.dart';

class DatePostedText extends StatelessWidget {
  const DatePostedText({
    super.key,
    required this.date,
  });

  final String date;
  @override
  Widget build(BuildContext context) {
    return Text(
        date,
        style: TextTheme.of(context).labelSmall!.apply(color: DColors.grey)
    );
  }
}