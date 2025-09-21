import 'package:deencastv2/features/authentication/screens/login/widget/login_form.dart';
import 'package:flutter/material.dart';

import '../../../../common/styles/spacing_style.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: DSpacingStyle.paddingWithAppBarHeight,

          ///logo, title, sub title, login form
          child: LoginForm(),
        ),
      ),
    );
  }
}

