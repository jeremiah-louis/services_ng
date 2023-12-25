import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:services_ng/common/widgets/home-widget/labels_widget.dart';
import 'package:services_ng/features/home/controllers/sub_categories.dart';
import 'package:services_ng/utils/constants/consts.dart';
import 'package:services_ng/utils/constants/image_strings.dart';
import 'package:services_ng/utils/constants/text_strings.dart';
import 'package:services_ng/utils/size_config/size_config.dart';
import '../../../common/widgets/home-widget/carousel_widget.dart';
import '../../../common/widgets/home-widget/categories_page.dart';
import '../models/home_header_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HomeHeaderSection(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(21)),
              child: const Carousel(),
            ),
            SizedBox(height: getProportionateScreenHeight(27)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(21)),
              child: const CategoriesPane(),
            ),
            SizedBox(height: getProportionateScreenHeight(40)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(21)),
              child: Column(
                children: [
                  const Labels(title: 'Popular services', seeall: 'See all'),
                  SizedBox(height: getProportionateScreenHeight(12)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(21),
              ),
              child: const SubCategoriesWidget(),
            )
          ],
        ),
      ),
    );
  }
}

class SubCategoriesWidget extends StatelessWidget {
  const SubCategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var subCategories = context.watch<SubCategoriesList>();
    return SizedBox(
      height: 26,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 6,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: getProportionateScreenWidth(10)),
              child: GestureDetector(
                  onTap: () {
                    subCategories.updateCurrentIndex(index);
                  },
                  child: index == subCategories.currentIndex
                      ? Container(
                          height: getProportionateScreenHeight(26),
                          width: getProportionateScreenWidth(56),
                          decoration: BoxDecoration(
                              color: kPrimaryGreenColor,
                              borderRadius:
                                  BorderRadiusDirectional.circular(10)),
                          child: Center(
                            child: Text(
                              'All',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                        )
                      : Container(
                          height: getProportionateScreenHeight(26),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(10),
                              border: Border.all(
                                  width: 0.5, color: kPrimaryGreenColor)),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenWidth(6)),
                              child: Text(
                                'Plumbing',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(color: kPrimaryGreenColor),
                              ),
                            ),
                          ),
                        )),
            );
          }),
    );
  }
}
