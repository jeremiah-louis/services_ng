import 'package:flutter/material.dart';

class SubCategoriesList extends ChangeNotifier {
  int currentIndex = 0;

  void updateCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
