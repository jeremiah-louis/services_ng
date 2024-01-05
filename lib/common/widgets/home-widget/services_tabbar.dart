import 'package:flutter/material.dart';

import '../../../features/home/controllers/sub_categories.dart';
import '../../../utils/constants/consts.dart';
import '../../../utils/size_config/size_config.dart';

class ServicesTabBar extends StatelessWidget implements PreferredSizeWidget {

  
  const ServicesTabBar({
    super.key,
    required this.subCategories,
  });

  final SubCategoriesList subCategories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(26),
      child: Theme(
        data: Theme.of(context).copyWith(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        child: TabBar(
            unselectedLabelColor: kPrimaryGreenColor,
            labelColor: Colors.white,
            indicatorWeight: 0,
            indicatorSize: TabBarIndicatorSize.label,
            labelPadding:
                EdgeInsets.only(right: getProportionateScreenWidth(10)),
            physics: const BouncingScrollPhysics(),
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kPrimaryGreenColor),
            isScrollable: true,
            tabs: subCategories.popularServices
                .map((e) => Tab(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: getProportionateScreenHeight(2),
                            horizontal: getProportionateScreenWidth(6)),
                        // height: getProportionateScreenHeight(26),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 0.5, color: kPrimaryGreenColor)),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              e,
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.normal),
                            )),
                      ),
                    ))
                .toList()),
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
