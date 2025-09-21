import 'package:flutter/material.dart';

class DColors {

  static const Color dark = Colors.black;
  static const Color black = Colors.black;
  static const Color light = Colors.white;
  static const Color white = Colors.white;
  static const Color emeraldGreen = Color(0xff047857);
  static const Color gold = Color(0xffd1ad38);

  static  Color darkGrey = Colors.grey.shade600;
  static  Color darkerGrey = Colors.grey.shade900;

  static const Color grey = Colors.grey;

//  app basic colors
  static Color secondary = Color(0xffd1ad38);
  static Color primary = Color(0xff047857);
  static Color accent = const Color(0xDDb0c7ff);

//  Gradient colors
  static const Gradient linerGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xffff9a9e),
        Color(0xfffad0c4),
        Color(0xfffad0c4),

      ]);

//  text color
  static const Color textPrimary = Colors.white30;
  static const Color textSecondary = Colors.white70;
  static const Color textWhite = Colors.white;

//  button color
  static const Color buttonPrimary = Color(0xff047857);
  static const Color buttonSecondary = Colors.white30;
  static const Color buttonDisabled = Colors.white70;

//  border colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

//  background container colors
  static const Color lightContainer = Color(0xFFf6F6F6);
  static  Color darkContainer = Colors.black45;

//  error colors
  static const Color error = Color(0xffd32f2f);
  static const Color success = Color(0xff388e3c);
  static const Color warning = Color(0xfff57c00);
  static const Color info = Color(0xff1976d2);

//sale tag
  static const Color saleTag = Colors.black;

//app background color
  static const Color appBackground = Colors.white70;

//  highlights
  static const Color highlightsGold = Color(0xffd1ad38);

//  navigation bar background color
  static const Color navBackground = Color(0xFA05412D);
  static const Color navIconTextColor = Color(0xF7008659);


}

