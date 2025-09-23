import 'package:deencastv2/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:deencastv2/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../podcast/home/widgets/appbar.dart';
import '../../../../podcast/home/widgets/section_heading.dart';
import 'circular_image.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DAppBar(title: Text('Profile'), showBackArrow: true,),
      ///body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              ///profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    CircularImage(image: DImages.logoImageLightMode, width: 80, height: 80,),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture'))
                  ],
                ),
              ),
              const SizedBox(height: DSizes.spaceBtwItems / 2,),
              const Divider(),
              const SizedBox(height: DSizes.spaceBtwItems,),
              ///details
              ///profile info details
              const SectionHeading(title: 'Profile Info', showActionButton: false,),
              const SizedBox(height: DSizes.spaceBtwItems,),
              ProfileMenu(onPressed: () {  }, title: 'Name', value: 'Abubakar Saddiq',),
              ProfileMenu(onPressed: () {  }, title: 'Username', value: 'Abubakarsaddiq',),
              const Divider(),
              const SizedBox(height: DSizes.spaceBtwItems / 2,),
              ///personal info
              const SectionHeading(title: 'Personal Info', showActionButton: false,),
              const SizedBox(height: DSizes.spaceBtwItems / 2,),
              ProfileMenu(onPressed: () {  }, title: 'User ID', value: '43325',),
              ProfileMenu(onPressed: () {  }, title: 'E-mail', value: 'Aizensoske@yahoo.com',),
              ProfileMenu(onPressed: () {  }, title: 'Phone Number', value: '+234 708 097 7653',),
              ProfileMenu(onPressed: () {  }, title: 'Gender', value: 'Male',),
              ProfileMenu(onPressed: () {  }, title: 'Date of Birth', value: '11 Jun, 1980',),
              const Divider(),
              const SizedBox(height: DSizes.spaceBtwItems,),
              Center(
                child: TextButton(
                  onPressed: () {  },
                  child: const Text('Close Account', style: TextStyle(color: Colors.red),),
                ),
              )

            ],
          ),
        ),
      ),
    );

  }
}
