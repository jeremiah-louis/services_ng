import 'package:flutter/material.dart';
import '../../../features/home/widgets/categories_page.dart';
import '../../../utils/constants/consts.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/size_config/size_config.dart';
import 'labels_widget.dart';

class CategoriesPane extends StatelessWidget {
  const CategoriesPane({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Labels(
          title: 'Categories',
          seeall: 'See all',
        ),
        SizedBox(height: getProportionateScreenHeight(10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryPanel(
              svgImagePath: kCategoriesAC,
              categoryText: kCategoryText1,
              onTap: () {},
            ),
            CategoryPanel(
              svgImagePath: kCategoriesAppliances,
              categoryText: kCategoryText2,
              onTap: () {},
            ),
            CategoryPanel(
              svgImagePath: kCategoriesCleaning,
              categoryText: kCategoryText3,
              onTap: () {},
            ),
            CategoryPanel(
              svgImagePath: kCategoriesPlumbing,
              categoryText: kCategoryText4,
              onTap: () {},
            ),
            CategoryPanel(
              svgImagePath: kCategoriesElectronics,
              categoryText: kCategoryText5,
              onTap: () {},
            ),
          ],
        )
      ],
    );
  }
}
