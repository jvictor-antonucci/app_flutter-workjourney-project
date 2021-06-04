import 'package:flutter/material.dart';

import '../../utils/extensions/screen_extension.dart';

class AppBarClipperWay extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double radius = 24.scale;

    final Path path = Path()
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..arcToPoint(
        Offset(size.width - radius, size.height - radius),
        radius: Radius.circular(radius),
        clockwise: false,
      )
      ..lineTo(radius, size.height - radius)
      ..arcToPoint(
        Offset(0, size.height),
        radius: Radius.circular(radius),
        clockwise: false,
      )
      ..lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
