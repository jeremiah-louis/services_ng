import 'package:flutter/material.dart';

import '../../../utils/size_config/size_config.dart';
import '../../styles/text_field_homepage.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(37),
      width: getProportionateScreenWidth(292),
      child: TextField(
        decoration: textfieldDecoration,
        style: const TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }
}
