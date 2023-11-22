import 'package:flutter/material.dart';

import '../../constants/consts.dart';

class ServicesOutlineButtonTheme {
  static OutlinedButtonThemeData outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 13.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      side: const BorderSide(width: 0.5, color: kPrimaryGreenColor),
    ),
  );
}
