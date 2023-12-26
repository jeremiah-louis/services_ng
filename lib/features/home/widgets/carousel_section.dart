import 'package:flutter/material.dart';

import '../../../common/widgets/home-widget/carousel_widget.dart';
import '../../../utils/size_config/size_config.dart';

class CarouselSection extends StatelessWidget {
  const CarouselSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(21)),
      child: const Carousel(),
    );
  }
}
