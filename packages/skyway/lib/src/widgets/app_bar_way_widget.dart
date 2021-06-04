import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../style/colors_way.dart';
import '../utils/extensions/screen_extension.dart';
import '../widgets/back_icon_button_way_widget.dart';

class AppBarWay extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final bool showBorder;
  final bool automaticallyImplyLeading;
  final List<Widget>? actions;
  final Widget? leading;

  const AppBarWay({
    Key? key,
    this.showBorder = true,
    required this.title,
    this.automaticallyImplyLeading = true,
    this.actions,
    this.leading,
  }) : super(key: key);

  @override
  _AppBarWayState createState() => _AppBarWayState();

  @override
  Size get preferredSize => Size.fromHeight((kToolbarHeight * 2).scale);
}

class _AppBarWayState extends State<AppBarWay> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ModalRoute<dynamic>? parentRoute = ModalRoute.of(context);

    final bool canPop = parentRoute?.canPop ?? false;
    final bool useCloseButton =
        parentRoute is PageRoute<dynamic> && parentRoute.fullscreenDialog;

    Widget? leading = widget.leading;
    if (leading == null && widget.automaticallyImplyLeading) {
      if (canPop)
        leading =
            useCloseButton ? const CloseButton() : const BackIconButtonWay();
    }

    Widget? actions;
    if (widget.actions != null && (widget.actions?.isNotEmpty ?? false)) {
      actions = Row(
        mainAxisSize: MainAxisSize.min,
        children: widget.actions!,
      );
    }

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: ColorsWay.white,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      child: Material(
        color: ColorsWay.white,
        child: SafeArea(
          bottom: false,
          top: true,
          child: Container(
            height: widget.preferredSize.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: ColorsWay.white,
              border: widget.showBorder
                  ? Border(
                      bottom: BorderSide(
                        color: ColorsWay.blue,
                        width: 1.0.scale,
                      ),
                    )
                  : Border(),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                // actions,
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.0.scale,
                    right: 8.0.scale,
                    top: 8.0.scale,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (leading != null) leading,
                      if (actions != null) actions,
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.0.scale,
                    right: 24.0.scale,
                    bottom: 24.0.scale,
                  ),
                  child: Text(
                    widget.title,
                    style: theme.textTheme.headline6!.merge(
                      TextStyle(
                        color: theme.primaryColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
