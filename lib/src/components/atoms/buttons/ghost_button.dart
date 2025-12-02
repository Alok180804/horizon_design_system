import 'package:flutter/material.dart';
import '../../../foundations/colors.dart';
import '../../../foundations/radii.dart';

class HGhostButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final double size;

  const HGhostButton({
    super.key,
    required this.child,
    this.onTap,
    this.size = 40,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(HorizonRadii.small),
      splashColor: HorizonColors.onSurface.withValues(alpha: 0.06),
      child: SizedBox(
        height: size,
        width: size,
        child: Center(child: child),
      ),
    );
  }
}
