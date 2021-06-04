import 'package:flutter/material.dart';
import '../utils/extensions/screen_extension.dart';

class IconButtonWay extends StatelessWidget {
  const IconButtonWay({
    required this.icon,
    this.onPressed,
    this.color,
    this.colorBackground,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.disabledColor,
    this.height,
    this.width,
    this.sizeIcon,
    this.padding,
    Key? key,
  }) : super(key: key);

  final Color? color;
  final Color? colorBackground;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final Color? splashColor;
  final Color? disabledColor;
  final IconData icon;
  final VoidCallback? onPressed;
  final double? height;
  final double? width;
  final double? sizeIcon;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: colorBackground ?? Colors.transparent,
        child: InkWell(
          focusColor: focusColor,
          hoverColor: hoverColor,
          splashColor: splashColor,
          highlightColor: highlightColor,
          onTap: onPressed,
          child: Container(
            height: height ?? 48.scale,
            width: width ?? 48.scale,
            padding: padding ?? EdgeInsets.all(8.0.scale),
            child: Icon(
              icon,
              size: sizeIcon ?? 24.scale,
              color: onPressed == null
                  ? disabledColor ?? Theme.of(context).disabledColor
                  : color ?? Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
