import 'package:flutter/material.dart';
import '../foundations/colors.dart';
import '../foundations/typography.dart';

ThemeData horizonLightTheme() {
  final ColorScheme scheme = ColorScheme.light(
    primary: HorizonColors.primary,
    secondary: HorizonColors.primaryVariant,
    surface: Colors.white,
    onSurface: Colors.black,
    error: HorizonColors.error,
  );

  return ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,
    colorScheme: scheme,
    primaryColor: HorizonColors.primary,
    textTheme: HorizonTypography.textTheme,
  );
}
