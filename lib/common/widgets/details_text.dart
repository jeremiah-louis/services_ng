import 'package:flutter/material.dart';

class DetailsText extends StatelessWidget {
  final String text;
  final Color? color;
  final double size;
  final FontWeight weight;
  const DetailsText({
    super.key,
    required this.text,
    this.color,
    required this.weight,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(fontSize: size, color: color, fontWeight: weight));
  }
}
