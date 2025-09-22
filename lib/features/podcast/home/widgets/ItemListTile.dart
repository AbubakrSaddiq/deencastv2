import 'package:deencastv2/features/podcast/home/widgets/rounded_image.dart';
import 'package:deencastv2/features/podcast/home/widgets/scholar_name_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/color.dart';

class ItemListTile extends StatelessWidget {
  const ItemListTile({
    super.key,
    required this.scholarImage,
    required this.scholarName,
    this.onTap,
  });

  final String scholarImage;
  final String scholarName;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 10,
      leading: RoundedImage(
        height: 50,
        border: Border.all(color: DColors.emeraldGreen),
        imageUrl: scholarImage,
      ),
      title: ScholarNameText(title: scholarName),
      trailing: Icon(Icons.arrow_right),
      onTap: onTap,
    );
  }
}
