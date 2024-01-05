import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:services_ng/common/widgets/details_text.dart';
import 'package:services_ng/common/widgets/home-widget/services_tabbar.dart';
import 'package:services_ng/features/home/widgets/details_card.dart';
import 'package:services_ng/utils/size_config/size_config.dart';
import '../../../features/home/controllers/sub_categories.dart';
import '../../../utils/constants/consts.dart';

// StatelessWidget responsible for rendering a horizontal list of subcategories with interactive selection.

class SubCategoriesWidget extends StatelessWidget {
  const SubCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var subCategories = context.watch<SubCategoriesList>();
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(21)),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 10,
          children: subCategories.popularServices
              .map((e) => FilterChip(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
                    elevation: 0,
                    pressElevation: 0,
                    labelPadding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenHeight(-3),
                        horizontal: getProportionateScreenWidth(2)),
                    selectedColor: kPrimaryGreenColor,
                    showCheckmark: false,
                    backgroundColor: subCategories.isSelected
                        ? kPrimaryGreenColor
                        : Colors.white,
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
                      color: subCategories.selectedCategory.contains(e)
                          ? Colors.white
                          : kPrimaryGreenColor,
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}



//     return DefaultTabController(
//         length: subCategories.popularServices.length,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Padding(
//               padding: EdgeInsets.only(
//                 left: getProportionateScreenWidth(21),
//               ),
//               child: ServicesTabBar(subCategories: subCategories),
//             ),
//             SizedBox(
//               height: getProportionateScreenHeight(300),
//               child: TabBarView(
//                   children: subCategories.popularServices
//                       .map((e) => const DetailsCard(
//                             physics: NeverScrollableScrollPhysics(),
//                           ))
//                       .toList()),
//             )
//           ],
//         ));
//   }
// }

