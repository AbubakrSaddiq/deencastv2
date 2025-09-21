import 'package:deencastv2/features/player/audio_player_mini.dart';
import 'package:deencastv2/features/podcast/explore/widgets/category_gridview.dart';
import 'package:deencastv2/features/podcast/explore/widgets/filter_heading.dart';
import 'package:deencastv2/features/podcast/home/widgets/appbar.dart';
import 'package:deencastv2/utils/constants/color.dart';
import 'package:deencastv2/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../home/widgets/search_bar_container.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = DHelperFunction.isDarkMode(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(DSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DAppBar(
              usePadding: false,
              title: Text(
                'Explore',
                style: TextStyle(
                  color: darkMode ? DColors.light : DColors.dark,
                ),
              ),
            ),

            ///Search bar
            SearchBarContainer(
              text: "Search",
              padding: EdgeInsets.symmetric(horizontal: 0),
            ),
            SizedBox(height: DSizes.spaceBtwItems),

            ///Filter
            FilterHeading(usePadding: false),

            ///List of Categories
            CategoryGridView(),


          ],
        ),
      ),
    );
  }
}
