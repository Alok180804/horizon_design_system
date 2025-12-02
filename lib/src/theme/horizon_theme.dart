import 'package:flutter/material.dart';
import 'horizon_dark_theme.dart';
import 'horizon_light_theme.dart';
import 'horizon_cupertino_theme.dart';

enum HorizonThemeMode { dark, light }

class HorizonTheme {
  static ThemeData get materialDark => horizonDarkTheme();
  static ThemeData get materialLight => horizonLightTheme();
  static CupertinoThemeData get cupertino => horizonCupertinoTheme();

  static ThemeData resolveMaterial(HorizonThemeMode mode) {
    switch (mode) {
      case HorizonThemeMode.light:
        return materialLight;
      case HorizonThemeMode.dark:
      default:
        return materialDark;
    }
  }
}
