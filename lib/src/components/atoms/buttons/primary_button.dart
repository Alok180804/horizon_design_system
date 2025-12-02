import 'package:flutter/material.dart';
import '../../foundations/colors.dart';
import '../../foundations/spacing.dart';
import '../../foundations/radii.dart';
import '../../foundations/typography.dart';

class HPrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool fullWidth;
  final Widget? icon;

  const HPrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.fullWidth = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fullWidth ? double.infinity : null,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: HorizonColors.primary,
          foregroundColor: HorizonColors.onBackground,
          elevation: 0,
          minimumSize: const Size(0, 48),
          padding: const EdgeInsets.symmetric(horizontal: HorizonSpacing.lg),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(HorizonRadii.medium),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            if (icon != null) ...[
              const SizedBox(width: HorizonSpacing.sm),
              icon!,
            ]
          ],
        ),
      ),
    );
  }
}

