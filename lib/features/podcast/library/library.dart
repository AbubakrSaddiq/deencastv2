import 'package:deencastv2/features/podcast/home/widgets/appbar.dart';
import 'package:deencastv2/features/podcast/library/widgets/library_item_screen.dart';
import 'package:deencastv2/features/podcast/library/widgets/library_item_tile.dart';
import 'package:deencastv2/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/helpers/helper_functions.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = DHelperFunction.isDarkMode(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(DSizes.defaultSpace),
        child: Column(
          children: [
            ///header
            DAppBar(
              title: Text(
                'Library',
                style: TextStyle(
                  color: darkMode ? DColors.light : DColors.dark,
                ),
              ),
            ),

            ///Saved
            LibraryItemTile(
              icon: Iconsax.save_2,
              title: 'Saved',
              trailing: Icon(Iconsax.arrow_right_3),
              onTap: () => Get.to(() => LibraryItemScreen()),
            ),
            SizedBox(height: DSizes.spaceBtwItems / 5),

            ///Downloaded
            LibraryItemTile(
              icon: Icons.save_alt,
              title: 'Downloaded',
              trailing: Icon(Iconsax.arrow_right_3),
              onTap: () => Get.to(() => LibraryItemScreen()),
            ),
            SizedBox(height: DSizes.spaceBtwItems / 5),

            ///Favorites
            LibraryItemTile(
              icon: Iconsax.heart,
              title: 'Favorite',
              trailing: Icon(Iconsax.arrow_right_3),
              onTap: () => Get.to(() => LibraryItemScreen()),
            ),
            SizedBox(height: DSizes.spaceBtwItems / 5),

            ///Recent Episodes
            LibraryItemTile(
              icon: Iconsax.clock,
              title: 'Recent Episodes',
              trailing: Icon(Iconsax.arrow_right_3),
              onTap: () => Get.to(() => LibraryItemScreen()),
            ),

            ///Divider
            // Divider(height: 10, thickness: 1),

            ///recently added header
            // SectionHeading(title: 'Recently Updated'),

            ///Recent Scholars
            // Flexible(
            //   child: GridView.builder(
            //     itemCount: 5,
            //     // physics: NeverScrollableScrollPhysics(),
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2,
            //       mainAxisSpacing: 12,
            //       // crossAxisSpacing: 12,
            //       // childAspectRatio: 3 / 1.2,
            //     ),
            //     itemBuilder: (context, index) => ScholarCardVertical(
            //       scholarName: 'Malam Ahmad Tijjani Gurutum',
            //       scholarImage: DImages.logoImageLightMode,
            //       datePosted: '2days',
            //       noNewEpisode: '4',
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
