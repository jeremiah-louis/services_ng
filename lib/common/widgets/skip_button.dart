import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../features/onboarding/models/onboarding_model.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    var onboarding = context.watch<OnboardingModel>();
    return GestureDetector(
      onTap: () {
        // skip to last page
        onboarding.jumpToLastPage();
      },
      child: Text(
        'Skip',
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
