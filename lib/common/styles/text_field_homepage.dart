import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../utils/constants/consts.dart';
import '../../utils/size_config/size_config.dart';

InputDecoration textfieldDecoration = InputDecoration(
    hintStyle: const TextStyle(fontSize: 12, color: kSearchIconColor),
    hintText: 'search',
    prefixIconConstraints: const BoxConstraints(minWidth: 35),
    filled: true,
    fillColor: Colors.white,
    prefixIcon: const Icon(
      Iconsax.search_normal_1,
      size: 18,
      color: kSearchIconColor,
    ),
    contentPadding: EdgeInsets.symmetric(
      vertical: getProportionateScreenHeight(10),
    ));
