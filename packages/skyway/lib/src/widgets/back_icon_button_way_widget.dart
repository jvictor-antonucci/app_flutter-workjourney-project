import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'icon_button_way_widget.dart';

class BackIconButtonWay extends StatelessWidget {
  const BackIconButtonWay({
    this.onPressed,
    this.color,
    this.colorBackground,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.disabledColor,
    Key? key,
  }) : super(key: key);

  final Color? color;
  final Color? colorBackground;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final Color? splashColor;
  final Color? disabledColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButtonWay(
      color: color,
      colorBackground: colorBackground ?? Theme.of(context).backgroundColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      disabledColor: disabledColor,
      icon: CupertinoIcons.back,
      onPressed: onPressed != null
          ? () {
              onPressed?.call();
            }
          : () {
              Navigator.pop(context);
            },
    );
  }
}
