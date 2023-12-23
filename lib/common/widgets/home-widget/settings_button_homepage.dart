import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/consts.dart';

class SettingsButtonHomePage extends StatelessWidget {
  const SettingsButtonHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          Iconsax.setting_4,
          color: kPrimaryGreenColor,
          size: 18,
        ));
  }
}
