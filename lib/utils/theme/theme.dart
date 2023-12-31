import 'package:flutter/material.dart';
import 'package:services_ng/utils/constants/consts.dart';
import 'package:services_ng/utils/theme/custom_theme/app_bar_theme.dart';
import 'package:services_ng/utils/theme/custom_theme/bottom_navigation_bar_theme.dart';
import 'custom_theme/outline_button_theme.dart';
import 'custom_theme/text_button_theme.dart';
import 'custom_theme/text_field_theme.dart';
import 'custom_theme/text_theme.dart';

class ServicesAppTheme {
  ServicesAppTheme._();
  static ThemeData lightTheme = ThemeData(
      appBarTheme: ServicesAppBarTheme.appBarTheme,
      textTheme: ServicesTextTheme.lightTextTheme,
      scaffoldBackgroundColor: const Color(0xffFFFFFF),
      primaryColor: const Color(0xff15CE5B),
      useMaterial3: false,
      fontFamily: 'Inter',
      brightness: Brightness.light,
      textButtonTheme: ServicesTextButtonTheme.textButtonTheme,
      outlinedButtonTheme: ServicesOutlineButtonTheme.outlinedButtonTheme,
      inputDecorationTheme: ServicesTextFieldTheme.lightInputDecorationTheme,
      navigationBarTheme: ServicesBottomNavigationBarTheme.myNavigationBarTheme,
      textSelectionTheme: const TextSelectionThemeData(
        selectionColor: kSlidingGreenColor,
      ));
}
