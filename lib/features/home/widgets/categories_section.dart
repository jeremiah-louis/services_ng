import 'package:flutter/material.dart';

import '../../../common/widgets/home-widget/categories_page.dart';
import '../../../utils/size_config/size_config.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(21)),
      child: const CategoriesPane(),
    );
  }
}
