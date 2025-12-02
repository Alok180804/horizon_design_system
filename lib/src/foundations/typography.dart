import 'dart:io';
import 'package:flutter/material.dart';

class HorizonTypography {
  static String get fontFamily => Platform.isIOS ? 'SF Pro' : 'Inter';

  static TextTheme get textTheme => TextTheme(
        displayLarge: TextStyle(fontSize: 34, fontWeight: FontWeight.w700, fontFamily: fontFamily),
        displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, fontFamily: fontFamily),
        headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, fontFamily: fontFamily),
        titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, fontFamily: fontFamily),
        bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: fontFamily),
        bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: fontFamily),
        labelMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: fontFamily),
        labelSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, fontFamily: fontFamily),
      );
}
