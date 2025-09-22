import 'package:deencastv2/features/podcast/home/widgets/scholar_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import 'ItemListTile.dart';
import 'date_posted_text.dart';
import 'episode_category_text.dart';
import 'episode_duration_text.dart';
import 'episode_name_text.dart';

class EpisodeCard extends StatelessWidget {
  const EpisodeCard({
    super.key,
    required this.date,
    required this.title,
    this.category,
    required this.duration,
    this.scholarName,
    this.scholarImage,
  });

  final String date;
  final String title;
  final String? category;
  final String duration;
  final String? scholarName;
  final String? scholarImage;

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
                    if (category != null)
                      EpisodeCategoryText(category: category!),
                  ],
                ),

                ///Play button
                Column(
                  children: [
                    ///more
                    IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz_outlined)),
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

            SizedBox(height: DSizes.lg,),
            ///scholar detail
            if (scholarName != null && scholarImage != null)
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(DSizes.borderRadiusLg),
                  color: DColors.emeraldGreen
                ),
                child: ItemListTile(
                  scholarImage: scholarImage!,
                  scholarName: scholarName!,
                  onTap: () => Get.to(() => const ScholarProfileScreen()),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
