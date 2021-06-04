import 'package:flutter/material.dart';

import '../utils/extensions/screen_extension.dart';

class ButtonWay extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Widget? icon;
  final bool isSecondary;
  final Color? backgroundColor;
  final ButtonStyle? style;
  final double? width;
  final double? height;

  const ButtonWay({
    required this.child,
    this.onPressed,
    this.backgroundColor,
    this.style,
    this.height,
    this.width,
  })  : icon = null,
        isSecondary = false;

  const ButtonWay.secondary({
    required this.child,
    this.onPressed,
    this.backgroundColor,
    this.style,
    this.height,
    this.width,
  })  : icon = null,
        isSecondary = true;

  const ButtonWay.icon({
    required this.child,
    this.onPressed,
    required this.icon,
    this.backgroundColor,
    this.style,
    this.height,
    this.width,
  }) : isSecondary = false;

  const ButtonWay.iconSecondary({
    required this.child,
    this.onPressed,
    required this.icon,
    this.backgroundColor,
    this.style,
    this.height,
    this.width,
  }) : isSecondary = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: height ?? 45.scale,
        minWidth: width ?? 160.scale,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: child,
                  ),
                  icon!
                ],
              )
            : child,
        style: isSecondary
            ? style?.merge(TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                )) ??
                TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                )
            : style?.merge(
                  TextButton.styleFrom(
                    backgroundColor: onPressed != null
                        ? backgroundColor ?? Theme.of(context).primaryColor
                        : Theme.of(context).disabledColor,
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ) ??
                TextButton.styleFrom(
                  backgroundColor: onPressed != null
                      ? backgroundColor ?? Theme.of(context).primaryColor
                      : Theme.of(context).disabledColor,
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
      ),
    );
  }
}
