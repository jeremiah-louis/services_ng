import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:services_ng/utils/size_config/size_config.dart';

class IntroPage extends StatelessWidget {
  final String image;
  final String title;
  final String body;

  const IntroPage({
    super.key,
    required this.body,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // image, logo and skip button
        Expanded(
            flex: 2,
            child: Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(100),
                ),
                SvgPicture.asset(
                  image,
                  width: getProportionateScreenWidth(350),
                  height: getProportionateScreenHeight(331.34),
                ),
              ],
            )),
        // smooth page indicator and text and button
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: getProportionateScreenHeight(8),
              ),
              Text(
                body,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: getProportionateScreenHeight(59.55),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
