import 'package:flutter/material.dart';
import '../foundations/colors.dart';
import '../foundations/typography.dart';

extension HorizonContext on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
  TextTheme get textStyles => HorizonTypography.textTheme;

  // Quick access
  Color get primary => HorizonColors.primary;
  Color get onPrimary => HorizonColors.onBackground;
  Color get surface => HorizonColors.surface;

  ThemeData get theme => Theme.of(this);
}
