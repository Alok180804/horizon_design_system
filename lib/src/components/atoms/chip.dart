import 'package:flutter/material.dart';
import '../../foundations/colors.dart';
import '../../foundations/radii.dart';
import '../../foundations/spacing.dart';

class HTagChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback? onTap;

  const HTagChip({
    super.key,
    required this.label,
    this.selected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: HorizonSpacing.lg,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: selected ? HorizonColors.primary : HorizonColors.surfaceVariant,
          borderRadius: BorderRadius.circular(HorizonRadii.pill),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: selected ? HorizonColors.onBackground : HorizonColors.onSurface,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
