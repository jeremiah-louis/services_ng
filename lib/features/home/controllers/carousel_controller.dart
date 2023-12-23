import 'package:flutter/material.dart';

class CarouselControllerSlider extends ChangeNotifier {
  int carouselCurrentIndex = 0;

  void updateCarouselIndex(int index) {
    carouselCurrentIndex = index;
    notifyListeners();
  }
}
