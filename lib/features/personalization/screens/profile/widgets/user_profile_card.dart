import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: DColors.emeraldGreen,
        borderRadius: BorderRadius.circular(DSizes.cardRadiusLg),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(DImages.logoImageLightMode),
        ),
        title: Text(
          'Abubakar Saddiq',
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.apply(color: DColors.white),
        ),
        subtitle: Text(
          'abubakrsaddiq@gmail.com',
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.apply(color: DColors.white),
        ),
        trailing: IconButton(
          onPressed: onPressed,
          icon: Icon(Iconsax.edit, color: DColors.white),
        ),
      ),
    );
  }
}
