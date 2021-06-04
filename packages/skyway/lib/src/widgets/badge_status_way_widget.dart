import 'package:flutter/material.dart';
import '../style/colors_way.dart';

import '../utils/extensions/screen_extension.dart';

class BadgeStatusWay extends StatelessWidget {
  const BadgeStatusWay({
    required this.color,
    required this.text,
    this.colorText,
    Key? key,
  }) : super(key: key);

  final Color color;
  final Color? colorText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.0.scale,
        vertical: 4.0.scale,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.scale),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: colorText ?? ColorsWay.white,
          fontSize: 11.scale,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
