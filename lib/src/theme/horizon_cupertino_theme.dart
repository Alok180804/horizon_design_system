import 'package:flutter/cupertino.dart';
import '../foundations/colors.dart';
import '../foundations/typography.dart';

CupertinoThemeData horizonCupertinoTheme() {
  return CupertinoThemeData(
    primaryColor: HorizonColors.primary,
    scaffoldBackgroundColor: HorizonColors.background,
    textTheme: CupertinoTextThemeData(
      primaryColor: HorizonColors.onBackground,
      textStyle: TextStyle(
        fontFamily: HorizonTypography.fontFamily,
        color: HorizonColors.onBackground,
        fontSize: 16,
      ),
      navTitleTextStyle: TextStyle(
        fontFamily: HorizonTypography.fontFamily,
        color: HorizonColors.onBackground,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    barBackgroundColor: HorizonColors.surface,
  );
}
