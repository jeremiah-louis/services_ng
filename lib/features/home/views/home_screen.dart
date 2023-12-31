import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:services_ng/common/widgets/home-widget/sub_categories_widget.dart';
import 'package:services_ng/utils/size_config/size_config.dart';
import '../controllers/sub_categories.dart';
import '../widgets/details_card.dart';
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
                  collapsedHeight: getProportionateScreenHeight(182),
                  expandedHeight: getProportionateScreenHeight(182),
                  flexibleSpace: const FlexibleSpaceBar(
                    background: HomeHeaderSection(),
                  )),
            ];
          },
          body: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              // - Showcases featured services or promotional content in a visually engaging format.
              const CarouselSection(),
              SizedBox(height: getProportionateScreenHeight(27)),
              // -----------------------** CategoriesSection **------------------------------//
              // - Organizes services into distinct categories for easy navigation.
              const CategoriesSection(),
              // -----------------------** SubCategoriesSection **------------------------------//
              // - Filters service artisans into distinct categories for easy selection.
              SizedBox(height: getProportionateScreenHeight(40)),
              const PopularServicesSection(),
              SizedBox(height: getProportionateScreenHeight(12)),
              const SubCategoriesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
