import 'package:deencastv2/features/podcast/home/widgets/rounded_image.dart';
import 'package:deencastv2/features/podcast/home/widgets/scholar_name_text.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import 'date_posted_text.dart';
import 'episode_category_text.dart';
import 'episode_duration_text.dart';
import 'episode_name_text.dart';

class EpisodeCard extends StatelessWidget {
  const EpisodeCard({
    super.key,
    required this.date,
    required this.title,
    required this.category,
    required this.duration,
    required this.scholarName,
    required this.scholarImage,
  });

  final String date;
  final String title;
  final String category;
  final String duration;
  final String scholarName;
  final String scholarImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DDeviceUtils.getScreenWidth(context) - 20,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: DColors.emeraldGreen, width: 0.5),
      ),
      child: Padding(
        padding: EdgeInsets.all(DSizes.sm),
        child: Column(
          children: [
            //Top half
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///date posted
                    DatePostedText(date: date),
                    SizedBox(height: DSizes.sm),

                    ///Episode name
                    EpisodeNameText(title: title),
                    SizedBox(height: DSizes.sm),

                    ///category
                    EpisodeCategoryText(category: category),
                  ],
                ),

                ///Play button
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_circle_fill,
                        color: DColors.emeraldGreen,
                        size: 32,
                      ),
                    ),

                    ///duration
                    EpisodeDurationText(title: duration),
                  ],
                ),
              ],
            ),
            // Divider
            Divider(thickness: 1, color: Colors.grey, height: 20),

            ///scholar detail
            Row(
              children: [
                RoundedImage(
                  height: 50,
                  border: Border.all(color: DColors.emeraldGreen),
                  imageUrl: scholarImage,
                ),
                const SizedBox(width: 12),
                //scholar name
                ScholarNameText(title: scholarName),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
