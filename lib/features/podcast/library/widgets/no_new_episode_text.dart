import 'package:flutter/material.dart';

import '../../../../utils/constants/color.dart';

class NoOfNewEpisodeText extends StatelessWidget {
  const NoOfNewEpisodeText({
    super.key, required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: TextTheme.of(context).labelSmall!.apply(color: DColors.grey)
    );
  }
}
