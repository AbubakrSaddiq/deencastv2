import 'package:flutter/material.dart';


class EpisodeCategoryText extends StatelessWidget {
  const EpisodeCategoryText({
    super.key, required this.category,
  });

  final String category;
  @override
  Widget build(BuildContext context) {
    return Text(
        category,
        style: TextTheme.of(context).bodySmall
    );
  }
}