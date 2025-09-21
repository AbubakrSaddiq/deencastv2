import 'package:flutter/material.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../home/widgets/date_posted_text.dart';
import '../../home/widgets/rounded_image.dart';
import '../../home/widgets/scholar_name_text.dart';
import 'no_new_episode_text.dart';

class ScholarCardVertical extends StatelessWidget {
  const ScholarCardVertical({
    super.key,
    required this.scholarName,
    required this.scholarImage,
    required this.datePosted,
    required this.noNewEpisode,
  });

  final String scholarName;
  final String scholarImage;
  final String datePosted;
  final String noNewEpisode;

  @override
  Widget build(BuildContext context) {
    final darkMode = DHelperFunction.isDarkMode(context);

    return Container(
      width: DDeviceUtils.getScreenWidth(context) / 2,
      margin: EdgeInsets.symmetric(horizontal: DSizes.sm),
      padding: EdgeInsets.all(DSizes.sm),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: DColors.emeraldGreen),
        color: darkMode ? DColors.dark : DColors.light,
      ),
      child: Column(
        children: [
          ///image
          RoundedImage(imageUrl: scholarImage, height: 100),
          SizedBox(height: DSizes.sm,),
          ///name
          ScholarNameText(title: scholarName),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///time added
              DatePostedText(date: '$datePosted Ago'),

              ///number of new episodes
              NoOfNewEpisodeText(text: '$noNewEpisode new'),
            ],
          ),
        ],
      ),
    );
  }
}
