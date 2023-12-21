import 'package:flutter/material.dart';

class ServicesTextTheme {
  // -------------------------------INTER TEXT THEME---------------------------//
  static TextTheme lightTextTheme = const TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'Inter',
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(0xff323232),
      ),
      titleMedium: TextStyle(
        fontFamily: 'Inter',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Color(0xff505050),
      ),
      titleSmall: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Color(0xff636363),
      ));

  // Dark Text Theme
  static TextTheme darkTextTheme = const TextTheme(

      // ----------------------------------- TITLE LARGE --------------------//
      titleLarge: TextStyle(
        fontFamily: 'Inter',
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(0xff323232),
      ),

      // ---------------------------------- TITILE MEDIUM -----------------//
      titleMedium: TextStyle(
        fontFamily: 'Inter',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Color(0xff505050),
      ));

  //----------------------------POPPINS TEXT THEME-------------------------//
  static TextTheme poppinsLightTheme = const TextTheme(
    // ----------------------------------- TITLE LARGE --------------------//
    titleLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Color(0xff323232),
    ),

    // ---------------------------------- TITILE MEDIUM -----------------//
    titleMedium: TextStyle(
      fontFamily: 'Inter',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color(0xff505050),
    ),
  );
}
