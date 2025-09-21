import 'package:deencastv2/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'features/onboarding/onboarding_screen.dart';

///Use this to setup themes, initial bindings, animations etc
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: DAppTheme.lightTheme,
      darkTheme: DAppTheme.darkTheme,
      home: OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}