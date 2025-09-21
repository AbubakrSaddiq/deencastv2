import 'package:deencastv2/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/color.dart';
import '../controller/explore_controller.dart';

class FilterHeading extends StatelessWidget {
  const FilterHeading({super.key,
    this.usePadding = true,
    this.padding = DSizes.defaultSpace
  });

  final bool usePadding;
  final padding;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ExploreController());

    return Padding(
      padding: usePadding ? EdgeInsets.symmetric(horizontal: padding) : EdgeInsets.symmetric(horizontal: 0),
      child: InkWell(
        onTap: () => controller.onFilteredTapped,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(DSizes.sm),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: DColors.emeraldGreen),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Filter',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Icon(Iconsax.filter),
            ],
          ),
        ),
      ),
    );
  }
}
