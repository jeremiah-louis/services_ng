import 'package:flutter/material.dart';
import '../../constants/consts.dart';

class ServicesTextButtonTheme {
  ServicesTextButtonTheme._();

  static TextButtonThemeData textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: kPrimaryGreenColor,
        padding: const EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        )),
  );
}
