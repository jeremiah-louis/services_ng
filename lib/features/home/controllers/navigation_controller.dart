import 'package:flutter/material.dart';
import 'package:services_ng/features/home/views/home_screen.dart';

class NavigationContoller extends ChangeNotifier {
  int selectedIndex = 0;
  List screens = [
    const HomeScreen(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.green,
    ),
  ];
  void onDestinationSelected(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
