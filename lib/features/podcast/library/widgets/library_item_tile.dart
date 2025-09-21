import 'package:deencastv2/utils/constants/color.dart';
import 'package:deencastv2/utils/constants/sizes.dart';
import 'package:flutter/material.dart';



class LibraryItemTile extends StatelessWidget {
  const LibraryItemTile({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: DColors.emeraldGreen)
      ),
      child: ListTile(
        leading: Icon(
          icon,
          size: DSizes.iconMd,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),

        trailing: trailing,
        onTap: onTap,
      ),
    );
  }
}
