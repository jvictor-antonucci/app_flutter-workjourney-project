import 'package:flutter/material.dart';

import '../style/colors_way.dart';
import '../utils/extensions/screen_extension.dart';

class ModalChip extends StatelessWidget {
  final bool isSelected;
  final String label;
  final ValueChanged<bool> onSelected;

  const ModalChip({
    required this.isSelected,
    required this.label,
    required this.onSelected,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    Color color = Colors.transparent;
    Color textColor = theme.primaryColor;

    if (isSelected) {
      color = theme.primaryColor;
      textColor = ColorsWay.white;
    }

    return Material(
      color: color,
      borderRadius: BorderRadius.circular(25.scale),
      child: InkWell(
        splashColor: textColor,
        borderRadius: BorderRadius.circular(25.scale),
        onTap: () {
          onSelected(!isSelected);
        },
        child: Container(
          decoration: BoxDecoration(
            // color: color,
            border: Border.all(color: theme.primaryColor),
            borderRadius: BorderRadius.circular(25.scale),
          ),
          padding: EdgeInsets.symmetric(
            vertical: 4.0.scale,
            horizontal: 8.0.scale,
          ),
          child: Text(
            label,
            style: theme.textTheme.caption!.merge(
              TextStyle(
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
