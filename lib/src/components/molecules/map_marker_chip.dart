import 'package:flutter/material.dart';
import '../../foundations/colors.dart';
import '../../foundations/radii.dart';
import '../../foundations/spacing.dart';

class MapMarkerChip extends StatelessWidget {
  final String label;
  final IconData icon;

  const MapMarkerChip({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: HorizonSpacing.md,
        vertical: HorizonSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: HorizonColors.surfaceVariant,
        borderRadius: BorderRadius.circular(HorizonRadii.large),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: HorizonColors.onSurface),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(
              color: HorizonColors.onSurface,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
