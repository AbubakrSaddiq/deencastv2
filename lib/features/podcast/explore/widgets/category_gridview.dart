import 'package:deencastv2/features/podcast/explore/widgets/category_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/explore_controller.dart';
import 'category_card.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ExploreController());

    return Flexible(
      child: Obx(
            () => GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 3/1.2
          ),
          itemCount: controller.filteredCategories.length,
          itemBuilder: (context, index){
            final category = controller.filteredCategories[index];
            return CategoryCard(title: category, onTap: () => Get.to(() => CategoryScreen()));
          },
        ),
      ),
    );
  }
}
