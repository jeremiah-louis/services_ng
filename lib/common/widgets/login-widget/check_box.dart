import 'package:flutter/material.dart';
import '../../../utils/constants/consts.dart';

class CheckBoxServices extends StatelessWidget {
  const CheckBoxServices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: const CircleBorder(),
      value: true,
      activeColor: kPrimaryGreenColor,
      onChanged: (value) {},
    );
  }
}
