import 'package:flutter/material.dart';
import 'package:services_ng/utils/theme/custom_theme/text_theme.dart';
import '../../constants/consts.dart';

class ServicesTextFieldTheme {
  ServicesTextFieldTheme._();
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
    suffixIconColor: const Color.fromRGBO(0, 0, 0, 0.6),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(width: 1, color: kGreyColor),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(width: 1, color: kGreyColor),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(width: 1, color: kGreyColor),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(width: 1, color: kGreyColor),
    ),
    hintStyle: ServicesTextTheme.lightTextTheme.titleMedium,
  );
}
