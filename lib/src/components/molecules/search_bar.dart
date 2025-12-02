import 'package:flutter/material.dart';
import '../../foundations/colors.dart';
import '../../foundations/radii.dart';
import '../../foundations/spacing.dart';

class HorizonSearchBar extends StatelessWidget {
  final String hint;
  final VoidCallback? onTap;

  const HorizonSearchBar({
    super.key,
    required this.hint,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: HorizonSpacing.lg),
        decoration: BoxDecoration(
          color: HorizonColors.surfaceVariant,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
            const Icon(Icons.search, color: HorizonColors.mutedText, size: 20),
            const SizedBox(width: 8),
            Text(
              hint,
              style: const TextStyle(
                color: HorizonColors.mutedText,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
