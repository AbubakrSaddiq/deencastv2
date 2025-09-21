import 'package:deencastv2/utils/constants/color.dart';
import 'package:deencastv2/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../utils/helpers/helper_functions.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.title, required this.subTitle
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    final darkMode = DHelperFunction.isDarkMode(context);
    return Container(
      width: 170,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: DColors.emeraldGreen)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, maxLines: 1,style: Theme.of(context).textTheme.labelMedium!.apply(color: darkMode ? DColors.white : DColors.emeraldGreen,),),
          SizedBox(height: DSizes.spaceBtwItems,),
          Text(subTitle, maxLines: 1 ,style: Theme.of(context).textTheme.headlineSmall!.apply(color: darkMode ? DColors.white : DColors.emeraldGreen),),

        ],
      ),
    );
  }
}
