import 'package:deencastv2/features/player/audio_player_mini.dart';
import 'package:deencastv2/features/podcast/home/widgets/episode_card.dart';
import 'package:deencastv2/features/podcast/home/widgets/horizontal_scroll_section.dart';
import 'package:deencastv2/features/podcast/home/widgets/primary_header_container.dart';
import 'package:deencastv2/features/podcast/home/widgets/section_heading.dart';
import 'package:deencastv2/features/podcast/home/widgets/todays_date.dart';
import 'package:deencastv2/features/podcast/home/widgets/user_appbar.dart';
import 'package:deencastv2/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/color.dart';
import '../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  ///user avatar and user name
                  const UserAppbar(),

                  SizedBox(height: DSizes.defaultSpace),
                ],
              ),
            ),

            ///Today's date hijiri and gregorian
            TodaysDate(),

            ///dowry, zakkat, diyyah info card
            HorizontalScrollSection(),
            SizedBox(height: DSizes.spaceBtwItems),

            ///recent episodes
            Padding(
              padding: EdgeInsets.only(left: DSizes.defaultSpace),
              child: Column(
                children: [
                  SectionHeading(
                    title: 'Recent Episodes',
                    showActionButton: true,
                    textColor: DColors.emeraldGreen,
                  ),
                ],
              ),
            ),
            SizedBox(height: DSizes.spaceBtwItems),

            ///episode list
            Padding(
              padding: EdgeInsets.all(DSizes.sm),
              child: Column(
                children: [
                  EpisodeCard(
                    date: '20min Ago',
                    title: 'Sahihul Bukhari 34',
                    category: 'Hadith',
                    duration: '1h 20min',
                    scholarName: 'Dr Sani Rijiyar Lemo',
                    scholarImage: DImages.umarRLemo,
                  ),
                  EpisodeCard(
                    date: '30min Ago',
                    title: 'Usulul Tafseer 12',
                    category: 'Tafseer',
                    duration: '40min',
                    scholarName: 'Late Sh Jaafar Adam',
                    scholarImage: DImages.jaafarAdam,
                  ),
                  EpisodeCard(
                    date: '1D Ago',
                    title: 'Sahihul Bukhari 11',
                    category: 'Hadith',
                    duration: '1h 0min',
                    scholarName: 'Late Auwal ALbani Zaria',
                    scholarImage: DImages.umarRLemo,
                  ),
                  EpisodeCard(
                    date: '2D Ago',
                    title: 'Hisnul Muslim',
                    category: 'Dua',
                    duration: '50min',
                    scholarName: 'Prof Isa Ali Pantami',
                    scholarImage: DImages.isaAliPantami,
                  ),
                ],
              ),
            ),

            ///mini audio player
            AudioPlayerMini(isActive: true,)
          ],
        ),
      ),
    );
  }
}
