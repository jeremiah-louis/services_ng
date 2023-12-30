import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:services_ng/features/home/models/services_data.dart';

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

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
          spacing: 10,
          children: subCategories.popularServices
              .map((e) => FilterChip(
                    label: Text(
                      e,
                      textAlign: TextAlign.center,
                    ),
                    selected: subCategories.selectedCategory.contains(e),
                    onSelected: (selected) {
                      selected
                          ? subCategories.addCatgegory(e)
                          : subCategories.removeCategory(e);
                    },
                    selectedColor: kPrimaryGreenColor,

                    showCheckmark: false,
                    backgroundColor: subCategories.isSelected
                        ? kPrimaryGreenColor
                        : Colors.transparent,
                    side: subCategories.isSelected
                        ? BorderSide.none
                        : const BorderSide(
                            color: kPrimaryGreenColor, width: 0.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    selectedShadowColor:
                        Colors.transparent, // Remove shadow for selected state
                    labelStyle: TextStyle(
                      fontSize: 12,
                      color: subCategories.isSelected
                          ? Colors.white
                          : kPrimaryGreenColor,
                    ),
                  ))
              .toList()),
    );
  }
}





// return SizedBox(
    //   height: 26,
    //   child: ListView.builder(
    //       // Scroll horizontally for subcategories.
    //       scrollDirection: Axis.horizontal,
    //       shrinkWrap: true,
    //       itemCount: subCategories.popularServices.length,
    //       itemBuilder: (context, index) {
    //         return Padding(
    //           padding: EdgeInsets.only(right: getProportionateScreenWidth(10)),
    //           child: GestureDetector(
    //             onTap: () {
    //               // Update the selected index in the SubCategoriesList model.
    //               subCategories.updateCurrentIndex(index);
    //             },
    //             child: Container(
    //               height: getProportionateScreenHeight(26),
    //               decoration: index == subCategories.currentIndex
    //                   ? // Visually highlight the selected subcategory.
    //                   BoxDecoration(
    //                       color: kPrimaryGreenColor,
    //                       borderRadius: BorderRadiusDirectional.circular(10))
    //                   : // Apply a border to non-selected subcategories.
    //                   BoxDecoration(
    //                       borderRadius: BorderRadiusDirectional.circular(10),
    //                       border: Border.all(
    //                           width: 0.5, color: kPrimaryGreenColor)),
    //               child: Center(
    //                 child: Padding(
    //                   padding: EdgeInsets.symmetric(
    //                       horizontal: getProportionateScreenWidth(6),
    //                       vertical: getProportionateScreenHeight(2)),
    //                   child: Text(
    //                     subCategories.popularServices[index],
    //                     style: index == subCategories.currentIndex
    //                         ? // Adjust text color for visual clarity.
    //                         Theme.of(context)
    //                             .textTheme
    //                             .titleSmall
    //                             ?.copyWith(color: Colors.white)
    //                         : Theme.of(context)
    //                             .textTheme
    //                             .titleSmall
    //                             ?.copyWith(color: kPrimaryGreenColor),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         );
    //       }),
    // );
