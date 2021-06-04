import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ColorsWay {
  ColorsWay._();

  static const primaryLight = Color(0xFFDFEAF5);
  static const primaryDark = Color(0xFF002A52);
  static const black = Color(0xFF1D1F23);
  static const white = Color(0xFFFFFFFF);
  static const grey = Color(0xFFAAAFB9);

  static const red = Color(0xFFE6385C);
  static const green = Color(0xFF19D0A0);
  static const yellow = Color(0xFFFED168);

  static const MaterialColor blue = MaterialColor(
    _bluePrimaryValue,
    <int, Color>{
      50: Color(0xFFE0E9F0),
      100: Color(0xFFB3C7DB),
      200: Color(0xFF80A2C3),
      300: Color(0xFF4D7DAA),
      400: Color(0xFF266198),
      500: Color(_bluePrimaryValue),
      600: Color(0xFF003E7E),
      700: Color(0xFF003673),
      800: Color(0xFF002E69),
      900: Color(0xFF001F56),
    },
  );
  static const int _bluePrimaryValue = 0xFF004586;

  static const MaterialColor blueAccent =
      MaterialColor(_blueAceentValue, <int, Color>{
    100: Color(0xFF88A7FF),
    200: Color(_blueAceentValue),
    400: Color(0xFF225BFF),
    700: Color(0xFF0848FF),
  });
  static const int _blueAceentValue = 0xFF5581FF;
}
