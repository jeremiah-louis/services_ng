import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/details_text.dart';
import '../../../utils/constants/consts.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/size_config/size_config.dart';
import '../controllers/sub_categories.dart';
import '../models/services_data.dart';

class DetailsCard extends StatelessWidget {
  final ScrollPhysics? physics;
  const DetailsCard({
    super.key,
    this.physics,
  });

  @override
  Widget build(BuildContext context) {
    final subCategories = context.watch<SubCategoriesList>();
    final filteredList = services
        .where((element) =>
            subCategories.selectedCategory.isEmpty ||
            subCategories.selectedCategory.contains(element.serviceRendered))
        .toList();
    return ListView.builder(
      shrinkWrap: true,
      physics: physics,
      itemCount: filteredList.length,
      itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: kBoxShadowColor.withOpacity(0.15),
                  offset: const Offset(0, 10), // Adjust offset as needed
                  blurRadius: 15,
                ),
              ],
              borderRadius: BorderRadius.circular(15)),
          margin: const EdgeInsets.all(14),
          padding: const EdgeInsets.all(14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(kBlackMan),
                  ),
                  SizedBox(width: getProportionateScreenWidth(8)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailsText(
                        color: kNeutralDarkColor,
                        text: filteredList[index].name,
                        weight: FontWeight.normal,
                        size: 10,
                      ),
                      SizedBox(width: getProportionateScreenHeight(4)),
                      DetailsText(
                        color: kNeutralDarkColor,
                        text: filteredList[index].serviceRendered,
                        weight: FontWeight.w600,
                        size: 12,
                      ),
                      SizedBox(width: getProportionateScreenHeight(4)),
                      DetailsText(
                        color: kPrimaryGreenColor,
                        text: filteredList[index].price,
                        weight: FontWeight.w600,
                        size: 12,
                      ),
                      SizedBox(width: getProportionateScreenHeight(7)),
                      Row(
                        children: [
                          SvgPicture.asset(kStarIcon),
                          SizedBox(width: getProportionateScreenWidth(2)),
                          DetailsText(
                            color: kNeutralDarkColor,
                            text: filteredList[index].ratings.toString(),
                            weight: FontWeight.w600,
                            size: 12,
                          ),
                          SizedBox(width: getProportionateScreenWidth(2)),
                          const DetailsText(
                            color: kNeutralDarkColor,
                            text: '(56 ratings)',
                            weight: FontWeight.w400,
                            size: 12,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SvgPicture.asset(
                kSaveIcon,
                colorFilter:
                    const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                width: getProportionateScreenWidth(16),
                height: getProportionateScreenHeight(16),
              ),
            ],
          )),
    );
  }
}
