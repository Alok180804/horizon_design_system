import 'package:flutter/material.dart';
import '../../foundations/colors.dart';
import '../../foundations/radii.dart';

class SelectorTile extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool selected;
  final VoidCallback? onTap;

  const SelectorTile({
    super.key,
    required this.label,
    required this.icon,
    required this.selected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color bg = selected
        ? HorizonColors.primary.withValues(alpha: 0.12)
        : HorizonColors.surfaceVariant;

    final Color iconColor =
        selected ? HorizonColors.primary : HorizonColors.mutedText;

    final BoxBorder border = selected
        ? Border.all(color: HorizonColors.primary, width: 2)
        : Border.all(color: Colors.transparent);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 110,
        width: 150,
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(HorizonRadii.large),
          border: border,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: iconColor),
            const SizedBox(height: 12),
            Text(
              label,
              style: const TextStyle(
                color: HorizonColors.onSurface,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
