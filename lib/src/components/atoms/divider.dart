import 'package:flutter/material.dart';
import '../foundations/colors.dart';

class HorizonDivider extends StatelessWidget {
  final double thickness;

  const HorizonDivider({super.key, this.thickness = 1});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: thickness,
      thickness: thickness,
      color: HorizonColors.divider,
    );
  }
}
