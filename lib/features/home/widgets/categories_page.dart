import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/consts.dart';
import '../../../utils/size_config/size_config.dart';

class CategoryPanel extends StatelessWidget {
  final String svgImagePath;
  final String categoryText;
  final void Function()? onTap;
  const CategoryPanel({
    super.key,
    required this.svgImagePath,
    required this.categoryText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(onTap: onTap, child: SvgPicture.asset(svgImagePath)),
        SizedBox(height: getProportionateScreenHeight(4)),
        Text(
          categoryText,
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(fontSize: 10, color: kNeutralDarkColor),
        ),
      ],
    );
  }
}
