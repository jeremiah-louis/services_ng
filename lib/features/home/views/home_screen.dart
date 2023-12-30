import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:services_ng/common/widgets/app_bar.dart';
import 'package:services_ng/common/widgets/home-widget/labels_widget.dart';
import 'package:services_ng/features/home/controllers/sub_categories.dart';
import 'package:services_ng/utils/constants/consts.dart';
import 'package:services_ng/utils/constants/image_strings.dart';
import 'package:services_ng/utils/constants/text_strings.dart';
import 'package:services_ng/utils/size_config/size_config.dart';
import '../widgets/home_header_section.dart';
import '../widgets/carousel_section.dart';
import '../widgets/categories_section.dart';
import '../widgets/popular_services_section.dart';
import '../widgets/sub_categories_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                floating: true,
                pinned: true,
                expandedHeight: 540,
                flexibleSpace: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    // -----------------------** HomeHeaderSection **------------------------------//
                    // - Displays key elements like location, Notifications, bookmarks, a search bar and a filter button.
                    const HomeHeaderSection(),
                    // ------------------------** CarouselSection **-------------------------------//
                    // - Showcases featured services or promotional content in a visually engaging format.
                    const CarouselSection(),
                    SizedBox(height: getProportionateScreenHeight(27)),
                    // -----------------------** CategoriesSection **------------------------------//
                    // - Organizes services into distinct categories for easy navigation.
                    const CategoriesSection(),
                    //
                    // The Popular Services section of the homescreen

                    // -----------------------** SubCategoriesSection **------------------------------//
                    // - Filters service artisans into distinct categories for easy selection.
                  ],
                ),
              )
            ];
          },
          body: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              SizedBox(height: getProportionateScreenHeight(40)),
              const PopularServicesSection(),
              SizedBox(height: getProportionateScreenHeight(12)),
              const SubCategories(),
              SizedBox(
                height: getProportionateScreenHeight(844),
                child: ListView.builder(
                  // physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.all(14),
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(kBlackMan),
                              ),
                              SizedBox(width: getProportionateScreenWidth(8)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const DetailsText(
                                    color: kNeutralDarkColor,
                                    text: 'Joshua Nlebemchukwu',
                                    weight: FontWeight.normal,
                                    size: 10,
                                  ),
                                  SizedBox(
                                      width: getProportionateScreenHeight(4)),
                                  const DetailsText(
                                    color: kNeutralDarkColor,
                                    text: 'Joshua Nlebemchukwu',
                                    weight: FontWeight.w400,
                                    size: 12,
                                  ),
                                  SizedBox(
                                      width: getProportionateScreenHeight(4)),
                                  const DetailsText(
                                    color: kPrimaryGreenColor,
                                    text: 'Joshua Nlebemchukwu',
                                    weight: FontWeight.w600,
                                    size: 12,
                                  ),
                                  SizedBox(
                                      width: getProportionateScreenHeight(7)),
                                  Row(
                                    children: [
                                      SvgPicture.asset(kStarIcon),
                                      SizedBox(
                                          width:
                                              getProportionateScreenWidth(2)),
                                      const Text('data'),
                                      SizedBox(
                                          width:
                                              getProportionateScreenWidth(2)),
                                      const Text('data')
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          SvgPicture.asset(
                            kSaveIcon,
                            colorFilter: const ColorFilter.mode(
                                Colors.black, BlendMode.srcIn),
                            width: getProportionateScreenWidth(16),
                            height: getProportionateScreenHeight(16),
                          ),
                        ],
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight weight;
  const DetailsText({
    super.key,
    required this.text,
    required this.color,
    required this.weight,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(fontSize: size, color: color, fontWeight: weight));
  }
}
