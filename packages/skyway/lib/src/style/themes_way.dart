import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/extensions/screen_extension.dart';

import 'colors_way.dart';

abstract class ThemesWay {
  ThemesWay._();

  static const Brightness brightness = Brightness.light;

  static const MaterialColor primarySwatch = ColorsWay.blue;
  static const Color primaryColor = ColorsWay.blue;
  static const Color primaryColorLight = ColorsWay.primaryLight;
  static const Color primaryColorDark = ColorsWay.primaryDark;

  static const Color accentColor = ColorsWay.green;
  static const Color backgroundColor = ColorsWay.white;
  static const Color cardColor = ColorsWay.white;
  static const Color disabledColor = ColorsWay.grey;

  // --> ColorScheme
  static const Color primary = ColorsWay.blue;
  static const Color secondary = ColorsWay.green;

  static const Color background = ColorsWay.white;
  static const Color surface = ColorsWay.white;

  static const Color error = ColorsWay.red;

  static const Color primaryVariant = ColorsWay.primaryDark;
  static const Color secondaryVariant = ColorsWay.green;

  static const Color onPrimary = ColorsWay.white;
  static const Color onSecondary = ColorsWay.black;
  static const Color onBackground = ColorsWay.black;
  static const Color onSurface = ColorsWay.black;
  static const Color onError = ColorsWay.white;
  // --> END ColorScheme

  static ThemeData get light {
    return ThemeData(
      primarySwatch: primarySwatch,
      primaryColor: primaryColor,
      primaryColorLight: primaryColorLight,
      primaryColorDark: primaryColorDark,
      accentColor: accentColor,
      backgroundColor: backgroundColor,
      scaffoldBackgroundColor: backgroundColor,
      cardColor: cardColor,
      brightness: brightness,
      disabledColor: disabledColor,
      colorScheme: ColorScheme(
        brightness: brightness,
        primary: primaryColor,
        secondary: secondary,
        background: background,
        surface: surface,
        error: error,
        primaryVariant: primaryVariant,
        secondaryVariant: secondaryVariant,
        onBackground: onBackground,
        onPrimary: onPrimary,
        onSecondary: onSecondary,
        onError: onError,
        onSurface: onSurface,
      ),
      fontFamily: 'RaleWay',
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 98.scale,
          fontWeight: FontWeight.w300,
          letterSpacing: -1.5,
        ),
        headline2: TextStyle(
          fontSize: 61.scale,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.5,
        ),
        headline3: TextStyle(
          fontSize: 49.scale,
          fontWeight: FontWeight.w400,
        ),
        headline4: TextStyle(
          fontSize: 35.scale,
          fontWeight: FontWeight.w400,
        ),
        headline5: TextStyle(
          fontSize: 24.scale,
          fontWeight: FontWeight.w500,
        ),
        headline6: TextStyle(
          fontSize: 20.scale,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
        ),
        subtitle1: TextStyle(
          fontSize: 16.scale,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
        ),
        subtitle2: TextStyle(
          fontSize: 14.scale,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
        ),
        bodyText1: TextStyle(
          fontSize: 16.scale,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
        ),
        bodyText2: TextStyle(
          fontSize: 14.scale,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        ),
        button: TextStyle(
          fontSize: 16.scale,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.25,
        ),
        caption: TextStyle(
          fontSize: 12.scale,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.4,
        ),
        overline: TextStyle(
          fontSize: 10.scale,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.zero,
        focusColor: primaryColor,
        border: InputBorder.none,
        labelStyle: TextStyle(
          color: ColorsWay.grey,
          fontSize: 16.scale,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: primaryColor,
        unselectedItemColor: disabledColor,
        backgroundColor: backgroundColor,
        selectedLabelStyle: TextStyle(
          fontFamily: 'RaleWay',
          fontSize: 12.scale,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'RaleWay',
          fontSize: 12.scale,
          fontWeight: FontWeight.w500,
        ),
      ),
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
