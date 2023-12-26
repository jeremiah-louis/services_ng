import 'package:flutter/material.dart';

import '../../../common/widgets/home-widget/labels_widget.dart';
import '../../../utils/size_config/size_config.dart';

class PopularServicesSection extends StatelessWidget {
  const PopularServicesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(21)),
      child: const Column(
        children: [
          Labels(title: 'Popular services', seeall: 'See all'),
        ],
      ),
    );
  }
}
