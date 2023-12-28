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
import '../models/home_header_section.dart';
import '../widgets/carousel_section.dart';
import '../widgets/categories_section.dart';
import '../widgets/popular_services_section.dart';
import '../widgets/sub_categories_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            SizedBox(height: getProportionateScreenHeight(40)),
            // The Popular Services section of the homescreen
            const PopularServicesSection(),
            SizedBox(height: getProportionateScreenHeight(12)),
            // -----------------------** SubCategoriesSection **------------------------------//
            // - Filters service artisans into distinct categories for easy selection.
            const SubCategories(),
            SizedBox(height: getProportionateScreenHeight(24)),
          ],
        ),
      ),
    );
  }
}
