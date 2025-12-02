import 'package:flutter/widgets.dart';
import '../foundations/breakpoints.dart';

class HorizonResponsive {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < HorizonBreakpoints.tablet;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= HorizonBreakpoints.tablet &&
      MediaQuery.of(context).size.width < HorizonBreakpoints.desktop;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= HorizonBreakpoints.desktop;

  static T value<T>({
    required BuildContext ctx,
    required T mobile,
    T? tablet,
    T? desktop,
  }) {
    final w = MediaQuery.of(ctx).size.width;

    if (w >= HorizonBreakpoints.desktop) return desktop ?? tablet ?? mobile;
    if (w >= HorizonBreakpoints.tablet) return tablet ?? mobile;
    return mobile;
  }
}
