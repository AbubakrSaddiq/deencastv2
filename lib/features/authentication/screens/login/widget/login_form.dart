import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../../podcast/home/widgets/navigation_menu.dart';
import '../../signup/signup.dart';
import 'login_social.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunction.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///logo
        Image(
          height: DHelperFunction.screenHeight() * 0.1,
          width: DHelperFunction.screenWidth() * 0.1,
          image: AssetImage(
            dark ? DImages.logoImageDarkMode : DImages.logoImageLightMode,
          ),
        ),
        Text(
          DTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: DSizes.sm,
        ),
        Text(
          DTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),

        ///  form
        Form(
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: DSizes.spaceBtwSections),
              child: Column(
                children: [
                  ///Email
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: DTexts.email,
                        prefixIcon: const Icon(Iconsax.direct_right)),
                  ),
                  const SizedBox(
                    height: DSizes.spaceBtwItems,
                  ),

                  ///Password
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: DTexts.password,
                        prefixIcon: const Icon(Iconsax.password_check),
                        suffixIcon: const Icon(Iconsax.eye_slash)),
                  ),
                  const SizedBox(
                    height: DSizes.spaceBtwItems / 2,
                  ),

                  ///Remember me and forget password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///Remember me
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          Text(DTexts.rememberMe),
                        ],
                      ),
                      ///forget password
                      TextButton(
                          onPressed: () {},
                          // onPressed: () => Get.to(() => const ForgetPassword()),
                          child: Text(DTexts.forgetPassword)),
                    ],
                  ),
                  const SizedBox(
                    height: DSizes.spaceBtwSections,
                  ),

                  ///sign in button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () => Get.to(() => const NavigationMenu()),
                          child: Text(DTexts.signIn))
                  ),


                  const SizedBox(
                    height: DSizes.spaceBtwItems,
                  ),

                  ///create account button
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () => Get.to(() => const SignupScreen()),
                      style: ButtonStyle(
                        backgroundColor:
                        WidgetStateProperty.all(Colors.white70),

                      ),
                      child: Text(
                        DTexts.createAccount,
                        style: const TextStyle(color: DColors.emeraldGreen),
                      ),
                    ),
                  ),

                ],
              ),
            )),

        ///divider
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Divider(
                color: dark ? DColors.darkGrey : DColors.grey,
                thickness: 0.5,
                indent: 60,
                endIndent: 5,
              ),
            ),
            Text(
              DTexts.orSignInWith,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Flexible(
              child: Divider(
                color: dark ? DColors.darkGrey : DColors.grey,
                thickness: 0.5,
                indent: 5,
                endIndent: 60,
              ),
            ),
          ],
        ),
        const SizedBox(height: DSizes.spaceBtwSections,),
        ///footer
        ///google icon
        const socialButtons()
      ],
    );
  }
}

