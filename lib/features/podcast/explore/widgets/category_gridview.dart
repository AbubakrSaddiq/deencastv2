import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

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
            return CategoryCard(title: category, onTap: () => controller.onCategoryTapped(category));
          },
        ),
      ),
    );
  }
}
