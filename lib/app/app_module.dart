import 'package:app_jorney/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  static String get initialRoute => '/';

  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<ModularRoute> get routes => [];
}
