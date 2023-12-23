import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:services_ng/common/styles/decoration_home_page_top_section.dart';
import 'package:services_ng/common/styles/text_field_homepage.dart';
import 'package:services_ng/common/widgets/outlined_icon.dart';
import 'package:services_ng/utils/constants/consts.dart';
import 'package:services_ng/utils/constants/image_strings.dart';
import 'package:services_ng/utils/constants/text_strings.dart';
import 'package:services_ng/utils/size_config/size_config.dart';
import '../../../common/widgets/search_widget.dart';
import '../../../common/widgets/settings_button_homepage.dart';
import '../models/home_header_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const HomeHeaderSection(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(21)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(33),
                  ),
                  Text(
                    'Special Offers',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: const Color(0xff323232)),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(9),
                  ),
                  CarouselSlider(
                      items: const [
                        RoundedImage(),
                      ],
                      options: CarouselOptions(
                          viewportFraction: 1,
                          height: getProportionateScreenHeight(137)))
                ]),
          ),
        ],
      ),
    );
  }
}

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: const Image(
        fit: BoxFit.fill,
        image: AssetImage(kCarouselBoy),
      ),
    );
  }
}
