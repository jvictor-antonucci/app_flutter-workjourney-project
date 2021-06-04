import 'package:app_jorney/app/app_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:skyway/skyway.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtil.builder(
      designUI: DesignUI.iPhoneX,
      designUITablet: DesignUI.iPadPro11,
      builder: (context, constraints, orientation) {
        return MaterialApp(
          title: 'Flutter Slidy',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: AppModule.initialRoute,
        ).modular();
      },
    );
  }
}
