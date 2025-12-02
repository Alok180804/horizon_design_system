import 'package:flutter/material.dart';
import '../../foundations/colors.dart';
import '../../foundations/spacing.dart';
import '../../foundations/radii.dart';
import '../../foundations/typography.dart';

class HorizonInputField extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  final Widget? icon;
  final bool readOnly;
  final VoidCallback? onTap;

  const HorizonInputField({
    super.key,
    required this.hint,
    this.controller,
    this.icon,
    this.readOnly = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: readOnly,
      onTap: onTap,
      style: HorizonTypography.textTheme.bodyLarge,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: HorizonColors.surfaceVariant,
        contentPadding: const EdgeInsets.symmetric(
          vertical: HorizonSpacing.md,
          horizontal: HorizonSpacing.lg,
        ),
        prefixIcon: icon != null
            ? Padding(
                padding: const EdgeInsets.only(left: 12, right: 8),
                child: icon,
              )
            : null,
        prefixIconConstraints: const BoxConstraints(minWidth: 40),
        hintStyle: const TextStyle(color: HorizonColors.fadedText),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(HorizonRadii.medium),
          borderSide: const BorderSide(color: HorizonColors.divider),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(HorizonRadii.medium),
          borderSide: const BorderSide(color: HorizonColors.primary),
        ),
      ),
    );
  }
}
