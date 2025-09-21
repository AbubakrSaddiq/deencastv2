import 'package:deencastv2/features/personalization/screens/profile/profile.dart';
import 'package:deencastv2/features/podcast/explore/explore.dart';
import 'package:deencastv2/features/podcast/library/library.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/color.dart';
import '../home.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    // final darkMode = DHelperFunction.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
            () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: DColors.emeraldGreen,
          indicatorColor: DColors.light,
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home, ), label: 'Home',),
            NavigationDestination(icon: Icon(Iconsax.global, ), label: 'Explore'),
            NavigationDestination(icon: Icon(Iconsax.folder_2,  ), label: 'Library'),
            NavigationDestination(icon: Icon(Iconsax.user,  ), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

/// class for monitoring change in menu screens
class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  ///screens
  final screens = [
    ///home screen
    const HomeScreen(),
    const ExploreScreen(),
    const LibraryScreen(),
    const ProfileScreen()
  ];
}
