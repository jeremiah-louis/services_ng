import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:services_ng/common/styles/decoration_home_page_top_section.dart';
import 'package:services_ng/common/styles/text_field_homepage.dart';
import 'package:services_ng/common/widgets/outlined_icon.dart';
import 'package:services_ng/utils/constants/consts.dart';
import 'package:services_ng/utils/constants/image_strings.dart';
import 'package:services_ng/utils/size_config/size_config.dart';

import '../../../common/widgets/settings_button_homepage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: getProportionateScreenHeight(182),
            decoration: kGreenTopDecoration,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(21),
                  vertical: getProportionateScreenHeight(21)),
              child: Column(
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(25),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: kGreyTextColor),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(7),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const OutlinedIcon(
                                  icon: Iconsax.location5,
                                  outlineColor: Colors.black,
                                  fillColor: kYellowColor,
                                  size: 11),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Lagos, Nigeria',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                        color: kWhiteTextColor, fontSize: 14),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              SvgPicture.asset(
                                kDropdownicon,
                                colorFilter: const ColorFilter.mode(
                                    kYellowColor, BlendMode.color),
                              ),
                            ],
                          ),
                          const Icon(
                            Iconsax.notification,
                            color: kWhiteBellColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: getProportionateScreenHeight(37),
                            width: getProportionateScreenWidth(292),
                            child: TextField(
                              decoration: textfieldDecoration,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const SettingsButtonHomePage(),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
