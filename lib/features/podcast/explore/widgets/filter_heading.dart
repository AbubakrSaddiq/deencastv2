import 'package:deencastv2/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/color.dart';
import '../../../../utils/device/device_utility.dart';
import '../controller/explore_controller.dart';

class FilterHeading extends StatelessWidget {
  const FilterHeading({
    super.key,
    this.usePadding = true,
    this.padding = DSizes.defaultSpace,
    required this.text,
    required this.icon,
  });

  final bool usePadding;
  final padding;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ExploreController());

    return Padding(
      padding: usePadding
          ? EdgeInsets.symmetric(horizontal: padding)
          : EdgeInsets.symmetric(horizontal: 0),
      child: InkWell(
        onTap: () => controller.onFilteredTapped,
        borderRadius: BorderRadius.circular(DSizes.borderRadiusLg),
        child: Container(
          padding: const EdgeInsets.all(DSizes.sm),
          width: DDeviceUtils.getScreenWidth(context) - 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: DColors.emeraldGreen),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Icon(icon),
            ],
          ),
        ),
      ),
    );
  }
}
