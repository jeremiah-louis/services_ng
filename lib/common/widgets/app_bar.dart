import 'package:flutter/material.dart';

class MyCustomAppBar extends StatelessWidget {
  final String title;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final void Function()? onBackPressed;
  final void Function()? onSuffixIconPressed;

  const MyCustomAppBar({
    Key? key,
    required this.title,
    this.prefixIcon,
    this.suffixIcon,
    this.onBackPressed,
    this.onSuffixIconPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: prefixIcon != null
          ? IconButton(
              icon: Icon(prefixIcon),
              onPressed: onBackPressed ?? () => Navigator.of(context).pop(),
            )
          : null,
      actions: [
        if (suffixIcon != null)
          IconButton(
            icon: Icon(suffixIcon),
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
