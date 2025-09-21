import 'package:deencastv2/features/authentication/screens/signup/widgets/termsCondition.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../../../utils/validators/validation.dart';
import '../../login/widget/login_social.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunction.isDarkMode(context);
    // final controller = Get.put(SignUpController());

    return Form(
      // key: controller.signupFormKey,
      child: Column(
        children: [
          ///first name and last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  // controller: controller.firstName,
                  validator: (value) =>
                      DValidator.validateEmptyText('First Name', value),
                  expands: false,
                  decoration: InputDecoration(
                      labelText: DTexts.firstName,
                      prefixIcon: const Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: DSizes.spaceBtwItems,
              ),
              Expanded(
                child: TextFormField(
                  validator: (value) =>
                      DValidator.validateEmptyText('Last Name', value),
                  // controller: controller.lastName,
                  expands: false,
                  decoration: InputDecoration(
                      labelText: DTexts.lastName,
                      prefixIcon: const Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: DSizes.spaceBtwItems,
          ),

          ///username
          TextFormField(
            validator: (value) =>
                DValidator.validateEmptyText('Username', value),
            // controller: controller.username,
            expands: false,
            decoration: InputDecoration(
                labelText: DTexts.username,
                prefixIcon: const Icon(Iconsax.user_edit)),
          ),
          const SizedBox(
            height: DSizes.spaceBtwItems,
          ),

          ///email
          TextFormField(
            validator: (value) => DValidator.validateEmail(value),
            // controller: controller.email,
            decoration: InputDecoration(
                labelText: DTexts.email,
                prefixIcon: const Icon(Iconsax.direct_inbox)),
          ),
          const SizedBox(
            height: DSizes.spaceBtwItems,
          ),

          ///phone number
          TextFormField(
            validator: (value) => DValidator.validatePhoneNumber(value),
            // controller: controller.phoneNumber,
            decoration: InputDecoration(
                labelText: DTexts.phoneNumber,
                prefixIcon: const Icon(Iconsax.call)),
          ),
          const SizedBox(
            height: DSizes.spaceBtwItems,
          ),

          ///password
          TextFormField(
              validator: (value) => DValidator.validatePassword(value),
              // controller: controller.password,
              // obscureText: controller.hideShowPassword.value,
              decoration: InputDecoration(
                  labelText: DTexts.password,
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                      onPressed: () {},
                      // onPressed: () => controller.hideShowPassword.value = !controller.hideShowPassword.value,
                      // icon: Icon(controller.hideShowPassword.value ? Iconsax.eye_slash : Iconsax.eye))),
                      icon: Icon(Iconsax.eye))),
            ),

          const SizedBox(
            height: DSizes.spaceBtwItems,
          ),

          ///terms&conditions checkbox
          TermsAndConditionCheckBox(),

          const SizedBox(
            height: DSizes.spaceBtwItems,
          ),
          ///signup button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  // onPressed: () => controller.signup(),
                  child: Text(DTexts.signUpBtn))),
          const SizedBox(
            height: DSizes.spaceBtwItems,
          ),

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
                DTexts.orSignUpWith,
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
          const SizedBox(
            height: DSizes.spaceBtwSections,
          ),

          ///footer
          ///social icon
          const socialButtons()
        ],
      ),
    );
  }
}
