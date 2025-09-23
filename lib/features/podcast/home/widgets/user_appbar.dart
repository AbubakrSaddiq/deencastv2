import 'package:flutter/material.dart';
import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/text_strings.dart';
import 'appbar.dart';


class UserAppbar extends StatelessWidget {
  const UserAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DAppBar(
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
