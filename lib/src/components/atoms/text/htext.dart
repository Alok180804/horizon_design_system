import 'package:flutter/material.dart';
import '../../foundations/typography.dart';

class HText {
  static Widget h1(String text) =>
      Text(text, style: HorizonTypography.textTheme.displayMedium);

  static Widget h2(String text) =>
      Text(text, style: HorizonTypography.textTheme.headlineMedium);

  static Widget body(String text) =>
      Text(text, style: HorizonTypography.textTheme.bodyLarge);

  static Widget caption(String text) =>
      Text(text, style: HorizonTypography.textTheme.labelSmall);
}
