import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:services_ng/common/widgets/details_text.dart';
import 'package:services_ng/common/widgets/home-widget/services_tabbar.dart';
import 'package:services_ng/features/home/models/services_data.dart';
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
              .map((e) => ChoiceChip(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    label: Text(
                      e,
                      textAlign: TextAlign.center,
                    ),
                    selected: subCategories.selectedChip == e,
                    onSelected: (selected) {
                      subCategories.toggle(selected, e);
                      subCategories.updateSelectedCategory(e);
                      selected
                          ? subCategories.addCatgegory(e)
                          : subCategories.removeCategory(e);
                      print(subCategories.selectedCategory);
                    },
                    elevation: 0,
                    pressElevation: 0,
                    labelPadding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenHeight(-3),
                        horizontal: getProportionateScreenWidth(2)),
                    selectedColor: kPrimaryGreenColor,
                    backgroundColor: subCategories.selectedChip == e
                        ? kPrimaryGreenColor
                        : Colors.white,
                    side: subCategories.selectedChip == e
                        ? BorderSide.none
                        : const BorderSide(
                            color: kPrimaryGreenColor, width: 0.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11)),
                    selectedShadowColor:
                        Colors.transparent, // Remove shadow for selected state
                    labelStyle: TextStyle(
                      fontSize: 12,
                      color: subCategories.selectedChip == e
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

