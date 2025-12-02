import 'package:flutter/material.dart';
import '../../foundations/colors.dart';

class MetadataRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const MetadataRow({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 14, color: HorizonColors.mutedText),
        const SizedBox(width: 6),
        Text(
          text,
          style: const TextStyle(
            color: HorizonColors.mutedText,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
