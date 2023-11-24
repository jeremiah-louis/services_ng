import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:services_ng/features/onboarding/models/intro_Page.dart';
import 'package:services_ng/utils/constants/consts.dart';
import 'package:services_ng/utils/constants/image_strings.dart';
import 'package:services_ng/utils/constants/text_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../common/widgets/green_button.dart';
import '../../../common/widgets/skip_button.dart';
import '../../../utils/size_config/size_config.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
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
            PageView(
              controller: pageController,
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
            Positioned(
              top: getProportionateScreenHeight(470),
              left: getProportionateScreenWidth(154),
              child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: const ExpandingDotsEffect(
                  activeDotColor: kSlidingGreenColor,
                  dotColor: Color(0xffD9D9D9),
                  dotHeight: 7,
                  dotWidth: 8,
                ),
              ),
            ),
            Positioned(
                width: getProportionateScreenWidth(352),
                top: getProportionateScreenHeight(666.5),
                child: GreenButton(message: 'Next', onPressed: () {}))
          ],
        ),
      ),
    );
  }
}
