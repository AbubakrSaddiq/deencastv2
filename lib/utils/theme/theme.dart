import 'package:deencastv2/utils/theme/navigationbar_theme.dart';
import 'package:flutter/material.dart';
import 'appbar_theme.dart';
import 'elevated_button_theme.dart';
import 'text_themes.dart';
import 'checkbox_theme.dart';
import 'bottom_sheet_theme.dart';
import 'text_field_theme.dart';
import 'outlined_button.dart';
import 'chip_theme.dart';

class DAppTheme{
  DAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Color(0xff047857),
      scaffoldBackgroundColor: Colors.white,
      textTheme: DTextTheme.lightTextTheme,
      elevatedButtonTheme: DElevatedButtonTheme.lightElevatedButtonTheme,
      appBarTheme: DAppBarTheme.lightAppBarTheme,
      checkboxTheme: DCheckboxTheme.lightCheckboxTheme,
      bottomSheetTheme: DBottomSheetTheme.lightBottomSheetTheme,
      inputDecorationTheme: DTextFormFieldTheme.lightInputDecorationTheme,
      outlinedButtonTheme: DOutlinedButtonTheme.lightOutlineButtonTheme,
      chipTheme: DChipTheme.lightChipTheme,
      navigationBarTheme: DNavigationBarTheme.lightNavigationBarTheme
  );

  ///dark mode
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Color(0xff047857),
      scaffoldBackgroundColor: Colors.black,
      textTheme: DTextTheme.darkTextTheme,
      elevatedButtonTheme: DElevatedButtonTheme.darkElevatedButtonTheme,
      appBarTheme: DAppBarTheme.lightAppBarTheme,
      checkboxTheme: DCheckboxTheme.lightCheckboxTheme,
      bottomSheetTheme: DBottomSheetTheme.lightBottomSheetTheme,
      inputDecorationTheme: DTextFormFieldTheme.lightInputDecorationTheme,
      outlinedButtonTheme: DOutlinedButtonTheme.lightOutlineButtonTheme,
      chipTheme: DChipTheme.lightChipTheme,
      navigationBarTheme: DNavigationBarTheme.darkNavigationBarTheme

  );
}