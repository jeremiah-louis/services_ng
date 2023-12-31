import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:services_ng/common/widgets/app_bar.dart';
import 'package:services_ng/common/widgets/home-widget/services_tabbar.dart';
import 'package:services_ng/common/widgets/home-widget/sub_categories_widget.dart';
import 'package:services_ng/features/home/controllers/sub_categories.dart';
import 'package:services_ng/features/home/widgets/details_card.dart';
import 'package:services_ng/utils/size_config/size_config.dart';

class PopularServicesFullPage extends StatelessWidget {
  const PopularServicesFullPage({super.key});

  @override
  Widget build(BuildContext context) {
    final subCategory = context.watch<SubCategoriesList>();
    return DefaultTabController(
      length: subCategory.popularServices.length,
      child: Scaffold(
          appBar: MyCustomAppBar(
            title: 'Popular services',
            prefixIcon: Iconsax.arrow_left_24,
            suffixIcon: Icons.more_horiz,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Padding(
                padding: EdgeInsets.only(left: getProportionateScreenWidth(21)),
                child: Column(
                  children: [
                    ServicesTabBar(
                      subCategories: subCategory,
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: const DetailsCard(
            physics: BouncingScrollPhysics(),
          )),
    );
  }
}
