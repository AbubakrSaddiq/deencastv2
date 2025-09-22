import 'package:deencastv2/features/podcast/explore/widgets/filter_heading.dart';
import 'package:deencastv2/features/podcast/home/widgets/appbar.dart';
import 'package:deencastv2/features/podcast/home/widgets/rounded_image.dart';
import 'package:deencastv2/features/podcast/home/widgets/scholar_name_text.dart';
import 'package:deencastv2/utils/constants/color.dart';
import 'package:deencastv2/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import 'episode_card.dart';

class ScholarProfileScreen extends StatelessWidget {
  const ScholarProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = DHelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: DAppBar(showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              Center(
                ///Thumbnail image
                child: Column(
                  children: [
                    RoundedImage(
                      width: 200,
                      height: 200,
                      fit: BoxFit.contain,
                      imageUrl: DImages.isaAliPantami,
                    ),
                    SizedBox(height: DSizes.lg),

                    ///Scholar name
                    ScholarNameText(
                      title: 'Prof Isa Ali Pantami',
                      textStyle: Theme.of(context).textTheme.headlineMedium
                          ?.apply(
                            color: darkMode ? DColors.light : DColors.dark,
                          ),
                    ),
                  ],
                ),
              ),
              Divider(height: 10, thickness: 1),

              ///Dropdown list of categories by scholar
              FilterHeading(
                text: 'Ramadan Tafseer 2024',
                icon: Icons.arrow_drop_down_circle_outlined,
              ),
              SizedBox(height: DSizes.sm),

              ///Episode card
              EpisodeCard(
                date: '2min',
                title: 'Ramadan Tafseer 2024 12',
                duration: '1h 10min',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
