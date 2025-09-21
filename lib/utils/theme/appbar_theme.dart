import 'package:deencastv2/utils/constants/color.dart';
import 'package:flutter/material.dart';
import '../constants/sizes.dart';

///app bar theme
class DAppBarTheme{
  DAppBarTheme._();

  ///light
  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color:DColors.black, size: DSizes.iconMd),
    actionsIconTheme: IconThemeData(color:DColors.black, size: DSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600,color: DColors.black),
  );

  ///dark
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color:DColors.black, size: 24),
    actionsIconTheme: IconThemeData(color: DColors.white, size: 24),
    titleTextStyle: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600,color: DColors.white),
  );
}