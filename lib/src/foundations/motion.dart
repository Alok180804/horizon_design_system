import 'package:flutter/animation.dart';

class HorizonMotion {
  static const Duration fast = Duration(milliseconds: 120);
  static const Duration medium = Duration(milliseconds: 240);
  static const Duration slow = Duration(milliseconds: 360);

  static const Curve curveStandard = Curves.easeOutCubic;
  static const Curve curveDecel = Curves.decelerate;
}
