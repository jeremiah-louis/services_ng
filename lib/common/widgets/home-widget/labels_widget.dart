import 'package:flutter/material.dart';
import 'package:services_ng/utils/constants/consts.dart';

class Labels extends StatelessWidget {
  final String title;
  final String seeall;
  const Labels({
    super.key,
    required this.title,
    required this.seeall,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontSize: 16,
              color: kNeutralDarkColor,
              fontWeight: FontWeight.w600),
        ),
        Text(
          seeall,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontSize: 12, color: kNeutralDarkColor700),
        ),
      ],
    );
  }
}
