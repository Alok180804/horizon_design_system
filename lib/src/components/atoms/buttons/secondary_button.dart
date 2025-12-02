import 'package:flutter/material.dart';
import '../../foundations/colors.dart';
import '../../foundations/spacing.dart';
import '../../foundations/radii.dart';
import '../../foundations/typography.dart';

class HSecondaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool fullWidth;

  const HSecondaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.fullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fullWidth ? double.infinity : null,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: HorizonColors.surfaceVariant,
          foregroundColor: HorizonColors.onSurface,
          elevation: 0,
          minimumSize: const Size(0, 48),
          padding: const EdgeInsets.symmetric(horizontal: HorizonSpacing.lg),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(HorizonRadii.medium),
            side: const BorderSide(color: HorizonColors.divider),
          ),
        ),
        child: Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
      ),
    );
  }
}
