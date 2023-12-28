import 'package:flutter/material.dart';

class ServicesAppBarTheme {
  static AppBarTheme appBarTheme = const AppBarTheme(
    backgroundColor: Colors.transparent, // Adjust as needed
    elevation: 0,
    centerTitle: false,
    titleTextStyle: TextStyle(
      color: Colors.black, // Adjust as needed
      fontSize: 20, // Adjust as needed
      fontWeight: FontWeight.w600,
    ),
    iconTheme: IconThemeData(
      color: Colors.black, // Adjust as needed
    ),
  );
}
