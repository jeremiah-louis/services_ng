import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:services_ng/common/widgets/green_button.dart';
import 'package:services_ng/utils/constants/image_strings.dart';
import 'package:services_ng/utils/constants/text_strings.dart';
import 'package:services_ng/utils/size_config/size_config.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SvgPicture.asset(
              kLogo,
              height: getProportionateScreenHeight(108.1),
              width: getProportionateScreenWidth(195),
            ),
            SizedBox(
              height: getProportionateScreenHeight(106),
            ),
            Text(
              'Welcome',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(
              height: getProportionateScreenHeight(8),
            ),
            Text(
              kAuthScreenBody,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            GreenButton(message: 'Login', onPressed: () {}),
            SizedBox(
              height: getProportionateScreenHeight(14),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'Sign up',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
