import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:services_ng/features/onboarding/models/intro_page.dart';
import 'package:services_ng/utils/constants/image_strings.dart';
import 'package:services_ng/utils/constants/text_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../common/widgets/login-widget/green_button.dart';
import '../../../common/widgets/onboarding-widget/skip_button.dart';
import '../../../common/widgets/onboarding-widget/smooth_page_indicator.dart';
import '../../../utils/size_config/size_config.dart';
import '../models/onboarding_model.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var onboarding = context.watch<OnboardingModel>();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              onPageChanged: (index) => onboarding.onPagesChanged(index),
              controller: onboarding.pageController,
              children: const [
                IntroPage(
                  body: kOnboardingBody1,
                  title: kOnboardingTitle1,
                  image: kGlobe,
                ),
                IntroPage(
                  body: kOnboardingBody2,
                  title: kOnboardingTitle2,
                  image: kCactus,
                ),
                IntroPage(
                  body: kOnboardingBody3,
                  title: kOnboardingTitle3,
                  image: kHandshake,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  kLogo,
                  height: getProportionateScreenHeight(70.1),
                  width: getProportionateScreenWidth(127),
                ),
                const SkipButton(),
              ],
            ),
            const SmoothPageIndicatorServices(),
            Positioned(
              width: getProportionateScreenWidth(352),
              top: getProportionateScreenHeight(666.5),
              child: onboarding.isLastPage
                  ? GreenButton(
                      message: 'Continue',
                      onPressed: () async {
                        final prefrences =
                            await SharedPreferences.getInstance();
                        prefrences.setBool('showHome', true);
                        Navigator.pushNamed(context, '/second');
                      },
                    )
                  : GreenButton(
                      message: 'Next',
                      onPressed: () {
                        onboarding.nextPage();
                      }),
            )
          ],
        ),
      ),
    );
  }
}
