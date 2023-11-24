import 'package:flutter/material.dart';
import 'custom_theme/outline_button_theme.dart';
import 'custom_theme/text_button_theme.dart';
import 'custom_theme/text_field_theme.dart';
import 'custom_theme/text_theme.dart';

class ServicesAppTheme {
  ServicesAppTheme._();
  static ThemeData lightTheme = ThemeData(
    textTheme: ServicesTextTheme.lightTextTheme,
    scaffoldBackgroundColor: const Color(0xffFFFFFF),
    primaryColor: const Color(0xff15CE5B),
    useMaterial3: true,
    fontFamily: 'Inter',
    brightness: Brightness.light,
    textButtonTheme: ServicesTextButtonTheme.textButtonTheme,
    outlinedButtonTheme: ServicesOutlineButtonTheme.outlinedButtonTheme,
    inputDecorationTheme: ServicesTextFieldTheme.lightInputDecorationTheme,
    bottomNavigationBarTheme: null,
  );
}
