import 'package:flutter/material.dart';
import 'package:services_ng/utils/constants/image_strings.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: const Image(
        fit: BoxFit.fill,
        image: AssetImage(kCarouselBoy),
      ),
    );
  }
}
