import 'package:flutter/material.dart';
import '../foundations/breakpoints.dart';

class HorizonGrid extends StatelessWidget {
  final List<Widget> children;
  final double mobileColumns;
  final double tabletColumns;
  final double desktopColumns;
  final double spacing;

  const HorizonGrid({
    super.key,
    required this.children,
    this.mobileColumns = 2,
    this.tabletColumns = 3,
    this.desktopColumns = 4,
    this.spacing = 16,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    double columns = mobileColumns;
    if (width >= HorizonBreakpoints.desktop) {
      columns = desktopColumns;
    } else if (width >= HorizonBreakpoints.tablet) {
      columns = tabletColumns;
    }

    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: columns.toInt(),
      crossAxisSpacing: spacing,
      mainAxisSpacing: spacing,
      children: children,
    );
  }
}
