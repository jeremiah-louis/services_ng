import 'package:flutter/material.dart';

class OnboardingModel extends ChangeNotifier {
  PageController pageController = PageController();
  int? currentPageindex;
  bool isLastPage = false;

  void onDotClicked(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
    currentPageindex = index;
    notifyListeners();
  }

  void jumpToLastPage() {
    pageController.jumpToPage(pageController.page!.toInt() + 2);
    notifyListeners();
  }

  void nextPage() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
    notifyListeners();
  }

  void onPagesChanged(int index) {
    isLastPage = index == 2;

    notifyListeners();
  }
}
