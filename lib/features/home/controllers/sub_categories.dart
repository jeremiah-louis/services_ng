import 'package:flutter/material.dart';
import '../../../utils/size_config/size_config.dart';

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

  List<Widget> popularServicesPage = [
    Container(
      color: Colors.cyan,
      height: 50,
      // margin: EdgeInsets.only(
      //   left: getProportionateScreenWidth(14),
      //   top: getProportionateScreenHeight(14),
      //   right: getProportionateScreenWidth(29),
      //   bottom: getProportionateScreenHeight(14),
      // ),
    ),
    Container(
      color: Colors.black45,
      // margin: EdgeInsets.only(
      //   left: getProportionateScreenWidth(14),
      //   top: getProportionateScreenHeight(14),
      //   right: getProportionateScreenWidth(29),
      //   bottom: getProportionateScreenHeight(14),
      // ),
    ),
    Container(
      color: Colors.red,
      // margin: EdgeInsets.only(
      //   left: getProportionateScreenWidth(14),
      //   top: getProportionateScreenHeight(14),
      //   right: getProportionateScreenWidth(29),
      //   bottom: getProportionateScreenHeight(14),
      // ),
    ),
    Container(
      color: Colors.orange,
      // margin: EdgeInsets.only(
      //   left: getProportionateScreenWidth(14),
      //   top: getProportionateScreenHeight(14),
      //   right: getProportionateScreenWidth(29),
      //   bottom: getProportionateScreenHeight(14),
      // ),
    ),
    Container(
      color: Colors.green,
      // margin: EdgeInsets.only(
      //   left: getProportionateScreenWidth(14),
      //   top: getProportionateScreenHeight(14),
      //   right: getProportionateScreenWidth(29),
      //   bottom: getProportionateScreenHeight(14),
      // ),
    ),
    Container(
      color: Colors.yellow,
      // margin: EdgeInsets.only(
      //   left: getProportionateScreenWidth(14),
      //   top: getProportionateScreenHeight(14),
      //   right: getProportionateScreenWidth(29),
      //   bottom: getProportionateScreenHeight(14),
      // ),
    ),
  ];

  // Updates the current index and notifies listeners to trigger UI updates.
  void updateCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
