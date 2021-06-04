import 'package:flutter/material.dart';

import '../utils/extensions/screen_extension.dart';
import 'button_way_widget.dart';

class AlertModalWay {
  AlertModalWay._();
  static Future<dynamic> show({
    required BuildContext context,
    required String title,
    required String body,
    bool useRootNavigator = false,
    bool barrierDismissible = true,
  }) async {
    final result = await showDialog(
      context: context,
      useRootNavigator: useRootNavigator,
      builder: (_) => AlertModalWayContent(
        title: title,
        body: body,
      ),
      barrierDismissible: barrierDismissible,
    );

    return result;
  }
}

class AlertModalWayContent extends StatefulWidget {
  final String title;
  final String body;

  const AlertModalWayContent({
    required this.title,
    required this.body,
    Key? key,
  }) : super(key: key);

  @override
  _AlertModalWayContentState createState() => _AlertModalWayContentState();
}

class _AlertModalWayContentState extends State<AlertModalWayContent> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.scale),
      ),
      elevation: 0,
      backgroundColor: Theme.of(context).cardColor,
      child: Padding(
        padding: EdgeInsets.all(24.scale),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.title,
              style: TextStyle(fontSize: 22.scale),
            ),
            SizedBox(height: 8.scale),
            Text(
              widget.body,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.scale),
            Container(
              width: double.infinity,
              child: ButtonWay(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
