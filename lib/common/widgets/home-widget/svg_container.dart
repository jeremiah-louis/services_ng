import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgContainer extends StatelessWidget {
  final String svgPath;
  final double width;
  final double height;

  const SvgContainer({
    super.key,
    required this.svgPath,
    this.width = 100.0,
    this.height = 100.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        svgPath,
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.color),
        width: width,
        height: height,
      ),
    );
  }
}
