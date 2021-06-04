import 'package:flutter/material.dart';

import '../utils/extensions/screen_extension.dart';

class ModalWay {
  ModalWay._();
  static Future<dynamic> show({
    required BuildContext context,
    required Widget child,
    EdgeInsets padding = const EdgeInsets.all(24),
    bool useRootNavigator = false,
    bool barrierDismissible = true,
  }) async {
    final result = await showDialog(
      context: context,
      useRootNavigator: useRootNavigator,
      builder: (_) => ModalWayContent(
        padding: padding,
        child: child,
      ),
      barrierDismissible: barrierDismissible,
    );

    return result;
  }
}

class ModalWayContent extends StatefulWidget {
  final Widget child;
  final EdgeInsets? padding;

  const ModalWayContent({
    required this.child,
    this.padding,
    Key? key,
  }) : super(key: key);

  @override
  _ModalWayContentState createState() => _ModalWayContentState();
}

class _ModalWayContentState extends State<ModalWayContent> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.scale),
      ),
      elevation: 0,
      backgroundColor: Theme.of(context).cardColor,
      child: Padding(
        padding: widget.padding ?? EdgeInsets.all(24.scale),
        child: widget.child,
      ),
    );
  }
}
