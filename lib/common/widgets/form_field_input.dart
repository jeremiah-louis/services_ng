import 'package:flutter/material.dart';
import 'package:services_ng/utils/constants/consts.dart';

class FormFieldServices extends StatelessWidget {
  final String inputFieldTitle;
  final String hintText;
  final bool isObscure;
  const FormFieldServices({
    super.key,
    required this.inputFieldTitle,
    required this.hintText,
    required this.isObscure,
  });

  @override
  Widget build(BuildContext context) {
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
          obscureText: isObscure,
          decoration: InputDecoration(
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}