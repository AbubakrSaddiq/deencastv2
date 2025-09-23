import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/text_strings.dart';
import 'appbar.dart';


class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DAppBar(
      leadingIcon: Iconsax.user,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(DTexts.greetings, style: Theme.of(context).textTheme.labelMedium!.apply(color: DColors.white),),
          Text(DTexts.fullName, style: Theme.of(context).textTheme.headlineSmall!.apply(color: DColors.white),),
        ],
      ),

    );
  }
}
