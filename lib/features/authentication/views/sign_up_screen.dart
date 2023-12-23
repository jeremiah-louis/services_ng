import 'package:flutter/material.dart';
import 'package:services_ng/common/widgets/login-widget/green_button.dart';
import 'package:services_ng/common/widgets/login-widget/password_field_input.dart';
import 'package:services_ng/utils/constants/consts.dart';
import 'package:services_ng/utils/constants/text_strings.dart';
import '../../../common/widgets/login-widget/check_box.dart';
import '../../../common/widgets/login-widget/form_field_input.dart';
import '../../../utils/size_config/size_config.dart';
import 'package:iconsax/iconsax.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(23),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Iconsax.arrow_left_2,
                        size: getProportionateScreenHeight(24),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(45),
                ),
                Text(
                  'Sign up',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(38),
                ),
                const FormFieldServices(
                  hintText: 'your username',
                  inputFieldTitle: 'Username',
                  isObscure: false,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(22),
                ),
                const FormFieldServices(
                  inputFieldTitle: 'Email',
                  hintText: 'your email',
                  isObscure: false,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(22),
                ),
                const PasswordFieldServices(
                  inputFieldTitle: 'Password',
                  hintText: 'your password',
                ),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CheckBoxServices(),
                    Text(
                      kTermsAndCondition,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(36),
                ),
                GreenButton(
                  message: 'Sign up',
                  onPressed: () {},
                ),
                SizedBox(
                  height: getProportionateScreenHeight(23),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      kAlreadyHaveAccount,
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Login',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: kPrimaryGreenColor,
                          ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
