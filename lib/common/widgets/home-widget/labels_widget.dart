import 'package:flutter/material.dart';
import 'package:services_ng/utils/constants/consts.dart';

class Labels extends StatelessWidget {
  final String title;
  final String seeall;
  final void Function()? onTap;
  const Labels({
    super.key,
    this.onTap,
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
              fontWeight: FontWeight.w500),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            seeall,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontSize: 12, color: kNeutralDarkColor700),
          ),
        ),
      ],
    );
  }
}
