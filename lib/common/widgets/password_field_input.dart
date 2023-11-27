import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:services_ng/features/authentication/models/password_authentication.dart';

import '../../utils/constants/consts.dart';

class PasswordFieldServices extends StatelessWidget {
  final String inputFieldTitle;
  final String hintText;
  const PasswordFieldServices(
      {super.key, required this.inputFieldTitle, required this.hintText});

  @override
  Widget build(BuildContext context) {
    var auth = context.watch<AuthenticationModel>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          inputFieldTitle,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Colors.black),
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          cursorColor: kPrimaryGreenColor,
          obscureText: auth.isObscure,
          decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () {
                  auth.toggleIsObscure();
                },
                icon: auth.isObscure
                    ? const Icon(Iconsax.eye_slash)
                    : const Icon(Iconsax.eye)),
            hintText: hintText,
          ),
        ),
      ],
    );
    ;
  }
}
