import 'package:flutter/material.dart';
import '../../../foundations/colors.dart';
import '../../../foundations/radii.dart';
import '../../../foundations/elevation.dart';

class HIconFillButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const HIconFillButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onPressed,
      radius: 24,
      child: Container(
        height: 44,
        width: 44,
        decoration: BoxDecoration(
          color: HorizonColors.surface,
          borderRadius: BorderRadius.circular(HorizonRadii.small),
          boxShadow: HorizonElevation.level1,
        ),
        child: Icon(
          icon,
          size: 20,
          color: HorizonColors.onSurface,
        ),
      ),
    );
  }
}
