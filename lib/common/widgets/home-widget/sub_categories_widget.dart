import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../features/home/controllers/sub_categories.dart';
import '../../../utils/constants/consts.dart';
import '../../../utils/size_config/size_config.dart';

// StatelessWidget responsible for rendering a horizontal list of subcategories with interactive selection.
class SubCategoriesWidget extends StatelessWidget {
  const SubCategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Access the SubCategoriesList model using Provider for state management.
    var subCategories = context.watch<SubCategoriesList>();
    return SizedBox(
      height: 26,
      child: ListView.builder(
          // Scroll horizontally for subcategories.
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: subCategories.popularServices.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: getProportionateScreenWidth(10)),
              child: GestureDetector(
                onTap: () {
                  // Update the selected index in the SubCategoriesList model.
                  subCategories.updateCurrentIndex(index);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>
                              subCategories.popularServicesPage[index])));
                },
                child: Container(
                  height: getProportionateScreenHeight(26),
                  decoration: index == subCategories.currentIndex
                      ? // Visually highlight the selected subcategory.
                      BoxDecoration(
                          color: kPrimaryGreenColor,
                          borderRadius: BorderRadiusDirectional.circular(10))
                      : // Apply a border to non-selected subcategories.
                      BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10),
                          border: Border.all(
                              width: 0.5, color: kPrimaryGreenColor)),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(6),
                          vertical: getProportionateScreenHeight(2)),
                      child: Text(
                        subCategories.popularServices[index],
                        style: index == subCategories.currentIndex
                            ? // Adjust text color for visual clarity.
                            Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: Colors.white)
                            : Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: kPrimaryGreenColor),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
