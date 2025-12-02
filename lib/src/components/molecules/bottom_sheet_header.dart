import 'package:flutter/material.dart';
import '../../foundations/colors.dart';
import '../../foundations/radii.dart';
import '../../foundations/spacing.dart';
import '../atoms/buttons/ghost_button.dart';

class BottomSheetHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onClose;

  const BottomSheetHeader({
    super.key,
    required this.title,
    this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(HorizonSpacing.md),
      decoration: BoxDecoration(
        color: HorizonColors.surface,
        borderRadius: BorderRadius.circular(HorizonRadii.large),
      ),
      child: Row(
        children: [
          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          const Spacer(),
          HGhostButton(
            size: 36,
            child: const Icon(Icons.close, color: HorizonColors.onSurface),
            onTap: onClose,
          ),
        ],
      ),
    );
  }
}
