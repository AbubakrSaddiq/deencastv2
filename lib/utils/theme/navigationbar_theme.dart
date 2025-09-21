import 'package:flutter/material.dart';
import '../constants/color.dart';

class DNavigationBarTheme {
  DNavigationBarTheme._(); // private constructor

  /// Light Theme
  static final lightNavigationBarTheme = NavigationBarThemeData(
    backgroundColor: DColors.light,
    indicatorColor: DColors.emeraldGreen,
    elevation: 0,
    labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
      (states) => (states.contains(WidgetState.selected)
          ? TextStyle(color: DColors.light, fontWeight: FontWeight.bold)
          : const TextStyle(color: DColors.light, fontWeight: FontWeight.w400)),
    ),
    iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
      (states) => (states.contains(WidgetState.selected)
          ? IconThemeData(color: DColors.emeraldGreen)
          : const IconThemeData(color: DColors.light)),
    ),
  );

  /// Dark Theme
  static final darkNavigationBarTheme = NavigationBarThemeData(
    backgroundColor: DColors.dark,
    indicatorColor: DColors.light,
    elevation: 0,
    labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
      (states) => states.contains(WidgetState.selected)
          ? TextStyle(color: DColors.light, fontWeight: FontWeight.bold)
          : const TextStyle(color: DColors.light, fontWeight: FontWeight.w400),
    ),
    iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
      (states) => states.contains(WidgetState.selected)
          ? IconThemeData(color: DColors.emeraldGreen)
          : IconThemeData(color: DColors.light),
    ),
  );
}
