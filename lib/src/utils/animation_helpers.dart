import 'package:flutter/material.dart';
import '../foundations/motion.dart';

class HorizonAnim {
  // Duration shortcuts
  static const fast = HorizonMotion.fast;
  static const medium = HorizonMotion.medium;
  static const slow = HorizonMotion.slow;

  // Curves
  static const curve = HorizonMotion.curveStandard;
  static const decel = HorizonMotion.curveDecel;

  // Fade in animation
  static Widget fadeIn({
    required Widget child,
    Duration duration = HorizonMotion.medium,
    Curve curve = HorizonMotion.curveStandard,
    double offsetY = 8,
  }) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: duration,
      curve: curve,
      builder: (context, value, _) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, offsetY * (1 - value)),
            child: child,
          ),
        );
      },
    );
  }
}
