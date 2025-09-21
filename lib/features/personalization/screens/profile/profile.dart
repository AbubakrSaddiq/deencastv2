import 'package:deencastv2/features/personalization/screens/profile/widgets/settings_menu_tile.dart';
import 'package:deencastv2/features/personalization/screens/profile/widgets/user_profile_card.dart';
import 'package:deencastv2/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../podcast/home/widgets/appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = DHelperFunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              DAppBar(
                usePadding: false,
                title: Text(
                  'Profile',
                  style: TextStyle(
                    color: darkMode ? DColors.light : DColors.dark,
                  ),
                ),
              ),

              ///User profile card
              UserProfileCard(onPressed: () { },),
              SizedBox(height: DSizes.spaceBtwItems),

              ///Body
              SettingsMenuTile(icon: Icons.history, title: 'History', trailing: Icon(Iconsax.arrow_right_3),),
              SizedBox(height: DSizes.spaceBtwItems / 5),
              SettingsMenuTile(icon: Iconsax.cards, title: 'Subscription', trailing: Icon(Iconsax.arrow_right_3),),
              SizedBox(height: DSizes.spaceBtwItems / 5),
              SettingsMenuTile(icon: Iconsax.setting, title: 'Settings', trailing: Icon(Iconsax.arrow_right_3),),
              SizedBox(height: DDeviceUtils.getScreenHeight()/3,),
              ///Logout
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.red),
                  child: Text('Logout', style: Theme.of(context).textTheme.titleMedium,),
                  onPressed: (){},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

