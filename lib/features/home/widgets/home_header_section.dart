import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:services_ng/utils/http_helper_functions/location.dart';
import 'package:services_ng/utils/named_routes.dart';
import '../../../common/styles/decoration_home_page_top_section.dart';
import '../../../common/widgets/home-widget/outlined_icon.dart';
import '../../../common/widgets/home-widget/search_widget.dart';
import '../../../common/widgets/home-widget/settings_button_homepage.dart';
import '../../../utils/constants/consts.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/size_config/size_config.dart';
import '../views/notification_page.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                          '${LocationHelper.state} state, ${LocationHelper.address}',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: kWhiteTextColor, fontSize: 14),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, ServicesNamedRoutes.notificationPage);
                          },
                          child: const Icon(
                            Iconsax.notification,
                            color: kWhiteBellColor,
                            size: 18,
                          ),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(8.53),
                        ),
                        GestureDetector(
                          child: SvgPicture.asset(
                            kSaveIcon,
                            width: getProportionateScreenWidth(16),
                            height: getProportionateScreenHeight(16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SearchWidget(),
                    SettingsButtonHomePage(),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
