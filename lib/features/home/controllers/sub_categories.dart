import 'package:flutter/material.dart';

// Class for managing a list of subcategories for services, leveraging ChangeNotifier for state management.
class SubCategoriesList extends ChangeNotifier {
  // Tracks the index of the currently selected subcategory.
  int currentIndex = 0;
  bool isSelected = false;
  String selectedChip = '';
  String labelText = '';

  // List of available popular service subcategories.
  List<String> popularServices = [
    'Repairing',
    'Cleaning',
    'Electronics',
    'Plumbing',
    'Washing'
  ];

  List<String> selectedCategory = [];

  // Updates the current index and notifies listeners to trigger UI updates.
  void updateCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void toggle(bool selected, String e) {
    selectedChip = selected ? e : '';
    notifyListeners();
  }

  void updateSelectedCategory(String e) {
    selectedCategory.contains(e);
    notifyListeners();
  }

  void addCatgegory(String e) {
    selectedCategory.add(e);
    notifyListeners();
  }

  void removeCategory(String e) {
    selectedCategory.remove(e);
    notifyListeners();
  }
}
