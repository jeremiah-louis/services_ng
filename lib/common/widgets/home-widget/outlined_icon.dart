import 'package:flutter/material.dart';

class OutlinedIcon extends StatelessWidget {
  final IconData icon;
  final Color outlineColor;
  final Color fillColor;
  final double size;

  const OutlinedIcon({
    super.key,
    required this.icon,
    required this.outlineColor,
    required this.fillColor,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Outlined icon
        Icon(
          icon,
          size: size,
          color: outlineColor,
        ),
        // Filled icon
        Icon(
          icon,
          size: size,
          color: fillColor,
        ),
      ],
    );
  }
}
