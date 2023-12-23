import 'package:flutter/material.dart';

import '../../utils/constants/consts.dart';
import '../../utils/constants/image_strings.dart';

Decoration kGreenTopDecoration = BoxDecoration(
  image: DecorationImage(
    fit: BoxFit.fill,
    colorFilter:
        ColorFilter.mode(Colors.black.withOpacity(0.05), BlendMode.srcIn),
    image: const AssetImage(kVector1),
  ),
  color: kPrimaryGreenColor,
  borderRadius: const BorderRadius.only(
      bottomLeft: Radius.circular(11), bottomRight: Radius.circular(11)),
);
