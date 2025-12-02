import 'package:flutter/widgets.dart';
import '../foundations/spacing.dart';

class HGap {
  static Widget xxs() => const SizedBox(width: HorizonSpacing.xxs);
  static Widget xs()  => const SizedBox(width: HorizonSpacing.xs);
  static Widget sm()  => const SizedBox(width: HorizonSpacing.sm);
  static Widget md()  => const SizedBox(width: HorizonSpacing.md);
  static Widget lg()  => const SizedBox(width: HorizonSpacing.lg);
  static Widget xl()  => const SizedBox(width: HorizonSpacing.xl);
}

class VGap {
  static Widget xxs() => const SizedBox(height: HorizonSpacing.xxs);
  static Widget xs()  => const SizedBox(height: HorizonSpacing.xs);
  static Widget sm()  => const SizedBox(height: HorizonSpacing.sm);
  static Widget md()  => const SizedBox(height: HorizonSpacing.md);
  static Widget lg()  => const SizedBox(height: HorizonSpacing.lg);
  static Widget xl()  => const SizedBox(height: HorizonSpacing.xl);
  static Widget xxl() => const SizedBox(height: HorizonSpacing.xxl);
}
