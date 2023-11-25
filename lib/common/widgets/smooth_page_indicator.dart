import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../features/onboarding/models/onboarding_model.dart';
import '../../utils/constants/consts.dart';
import '../../utils/size_config/size_config.dart';

class SmoothPageIndicatorServices extends StatelessWidget {
  const SmoothPageIndicatorServices({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    var onboarding = context.watch<OnboardingModel>();
    return Positioned(
      top: getProportionateScreenHeight(470),
      left: getProportionateScreenWidth(154),
      child: SmoothPageIndicator(
        onDotClicked: (index) => onboarding.onDotClicked(index),
        controller: onboarding.pageController,
        count: 3,
        effect: const ExpandingDotsEffect(
          activeDotColor: kSlidingGreenColor,
          dotColor: Color(0xffD9D9D9),
          dotHeight: 7,
          dotWidth: 8,
        ),
      ),
    );
  }
}
