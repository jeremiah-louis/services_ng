import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:services_ng/common/widgets/home-widget/rounded_image.dart';
import 'package:services_ng/features/home/controllers/carousel_controller.dart';

import '../../../utils/constants/consts.dart';
import '../../../utils/size_config/size_config.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var carouselController = context.watch<CarouselControllerSlider>();
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      SizedBox(
        height: getProportionateScreenHeight(33),
      ),
      Text(
        'Special Offers',
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: const Color(0xff323232), fontWeight: FontWeight.w500),
      ),
      SizedBox(
        height: getProportionateScreenHeight(9),
      ),
      CarouselSlider(
          items: const [
            RoundedImage(),
            RoundedImage(),
            RoundedImage(),
            RoundedImage()
          ],
          options: CarouselOptions(
              onPageChanged: (index, reason) =>
                  carouselController.updateCarouselIndex(index),
              viewportFraction: 1,
              height: getProportionateScreenHeight(137))),
      SizedBox(
        height: getProportionateScreenHeight(7),
      ),
      Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (int i = 0; i < 4; i++)
              Container(
                width: 6,
                height: 6,
                margin: const EdgeInsets.only(right: 4),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: carouselController.carouselCurrentIndex == i
                        ? kPrimaryGreenColor
                        : kGreyColor),
              ),
          ],
        ),
      )
    ]);
  }
}
