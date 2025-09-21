import 'package:get/get.dart';

class ExploreController extends GetxController {
  //search text
  final RxString searchText = ''.obs;

  //  categories (can fetch through API)
  final List<String> categories = [
    'Seerah',
    'Tafseer',
    'Fiqh',
    'UsululTafseer',
    'Sahihul Bukhari',
    'Muwadda Malik'
        'Muhadara',
    'Sharhus Sunnah',
  ];

  //filtered categories based on search text
  List<String> get filteredCategories {
    if (searchText.value.isEmpty) return categories;
    return categories
        .where((c) => c.toLowerCase().contains(searchText.value.toLowerCase()))
        .toList();
  }

  void onSearchChanged(String value) {
    searchText.value = value;
  }

  void onFilteredTapped() {
    //handle filter
  }

  void onCategoryTapped(String category) {
    //  handle category
  }
}
