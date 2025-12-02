import 'package:flutter/material.dart';
import '../foundations/colors.dart';
import '../foundations/typography.dart';
import '../foundations/radii.dart';
import '../foundations/spacing.dart';

ThemeData horizonDarkTheme() {
  final ColorScheme scheme = const ColorScheme.dark(
    primary: HorizonColors.primary,
    secondary: HorizonColors.primaryVariant,
    surface: HorizonColors.surface,
    onSurface: HorizonColors.onSurface,
    error: HorizonColors.error,
  );

  return ThemeData(
    useMaterial3: false,
    brightness: Brightness.dark,
    colorScheme: scheme,

    scaffoldBackgroundColor: HorizonColors.background,
    primaryColor: HorizonColors.primary,
    textTheme: HorizonTypography.textTheme,

    appBarTheme: const AppBarTheme(
      backgroundColor: HorizonColors.background,
      elevation: 0,
      foregroundColor: HorizonColors.onBackground,
      centerTitle: false,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: HorizonColors.primary,
        foregroundColor: HorizonColors.onBackground,
        elevation: 0,
        minimumSize: const Size(0, 48),
        padding: const EdgeInsets.symmetric(horizontal: HorizonSpacing.lg),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(HorizonRadii.medium),
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: HorizonColors.primary,
        side: const BorderSide(color: HorizonColors.primary),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(HorizonRadii.small),
        ),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: HorizonColors.primary),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: HorizonColors.surfaceVariant,
      hintStyle: const TextStyle(color: HorizonColors.fadedText),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(HorizonRadii.small),
        borderSide: const BorderSide(color: HorizonColors.divider),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(HorizonRadii.small),
        borderSide: const BorderSide(color: HorizonColors.primary),
      ),
    ),

    dividerColor: HorizonColors.divider,
  );
}
