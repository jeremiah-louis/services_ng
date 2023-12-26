import 'package:flutter/material.dart';

// Class for managing a list of subcategories for services, leveraging ChangeNotifier for state management.
class SubCategoriesList extends ChangeNotifier {
  // Tracks the index of the currently selected subcategory.
  int currentIndex = 0;

  // List of available popular service subcategories.
  List<String> popularServices = [
    'All',
    'Repairing ',
    'Cleaning',
    'Electronics',
    'Plumbing',
    'Washing'
  ];

  // Updates the current index and notifies listeners to trigger UI updates.
  void updateCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
