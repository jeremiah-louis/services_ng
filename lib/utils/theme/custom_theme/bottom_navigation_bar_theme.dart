import 'package:flutter/material.dart';
import 'package:services_ng/utils/constants/consts.dart';

class ServicesBottomNavigationBarTheme {
  static NavigationBarThemeData myNavigationBarTheme = NavigationBarThemeData(
    backgroundColor: Colors.white,
    elevation: 0,
    labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
      (Set<MaterialState> states) {
        final Color color = states.contains(MaterialState.selected)
            ? kPrimaryGreenColor
            : const Color(0xff979797);
        return TextStyle(
          color: color,
          fontSize: 10,
        );
      },
    ),
    iconTheme: MaterialStateProperty.resolveWith<IconThemeData>(
      (Set<MaterialState> states) {
        final Color color = states.contains(MaterialState.selected)
            ? kPrimaryGreenColor
            : const Color(0xff292D32);
        return IconThemeData(color: color, size: 24);
      },
    ),
    indicatorColor: Colors.transparent,
  );
}
