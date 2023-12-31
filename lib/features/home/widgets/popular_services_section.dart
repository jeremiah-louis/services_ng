import 'package:flutter/material.dart';
import 'package:services_ng/common/widgets/home-widget/popular_servicesfullpage.dart';
import 'package:services_ng/utils/named_routes.dart';

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
      child: Column(
        children: [
          Labels(
            title: 'Popular services',
            seeall: 'See all',
            onTap: () => Navigator.pushNamed(
                context, ServicesNamedRoutes.popularServicesPage),
          ),
        ],
      ),
    );
  }
}
