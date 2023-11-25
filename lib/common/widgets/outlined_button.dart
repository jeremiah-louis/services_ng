import 'package:flutter/material.dart';

class OutlinedButtonServices extends StatelessWidget {
  final String message;
  final void Function()? onPressed;
  const OutlinedButtonServices({
    super.key,
    required this.message,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(
        message,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
