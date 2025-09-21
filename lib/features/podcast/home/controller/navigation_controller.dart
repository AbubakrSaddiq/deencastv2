import 'package:get/get.dart';
import '../../explore/explore.dart';
import '../home.dart';


/// class for monitoring change in menu screens
class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  ///screens
  final screens = [
    ///home screen
    const HomeScreen(),
    const ExploreScreen(),
    // const FavouriteScreen(),
    // const SettingsScreen()
  ];
}