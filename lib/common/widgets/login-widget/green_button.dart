import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  final String message;
  final void Function()? onPressed;
  const GreenButton({
    super.key,
    required this.message,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          message,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }
}
