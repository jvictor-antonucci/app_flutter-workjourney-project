import 'package:app_jorney/app/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:app_jorney/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lib_loggerway/lib_loggerway.dart';

void main() {
  Modular.to.addListener(() {
    LoggerWay.instance.information(description: '[FLOW] ${Modular.to.path}');
  });

  runApp(
    ModularApp(
      module: AppModule(),
      child: AppWidget(),
    ),
  );
}
