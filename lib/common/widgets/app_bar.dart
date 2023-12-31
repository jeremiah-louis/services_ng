import 'package:flutter/material.dart';
import 'package:services_ng/utils/constants/consts.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 30);

  final String title;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final void Function()? onBackPressed;
  final void Function()? onSuffixIconPressed;
  final PreferredSizeWidget? bottom;
  final Widget? flexibleSpace;

  const MyCustomAppBar({
    Key? key,
    required this.title,
    this.prefixIcon,
    this.suffixIcon,
    this.onBackPressed,
    this.onSuffixIconPressed,
    this.bottom,
    this.flexibleSpace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leadingWidth: 24,
      bottom: bottom,
      flexibleSpace: flexibleSpace,

      leading: prefixIcon != null
          ? IconButton(
              icon: Icon(
                prefixIcon,
                size: 24,
              ),
              onPressed: onBackPressed ?? () => Navigator.of(context).pop(),
            )
          : null,
      actions: [
        if (suffixIcon != null)
          IconButton(
            icon: Icon(
              suffixIcon,
              color: kNeutralDarkColor700,
            ),
            onPressed: onSuffixIconPressed,
          ),
      ],
      iconTheme: const IconThemeData(
        color: Colors.black, // Adjust as needed
      ),
      backgroundColor: Colors.white, // Adjust as needed
      elevation: 0,
      centerTitle: false,
    );
  }
}
