import 'package:flutter/material.dart';
import '../../foundations/radii.dart';
import '../../foundations/colors.dart';

class HorizonAvatar extends StatelessWidget {
  final double size;
  final String? imageUrl;

  const HorizonAvatar({super.key, this.size = 40, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(HorizonRadii.pill),
      child: Container(
        height: size,
        width: size,
        color: HorizonColors.surfaceVariant,
        child: imageUrl != null
            ? Image.network(imageUrl!, fit: BoxFit.cover)
            : Icon(Icons.person, color: HorizonColors.mutedText, size: size * 0.6),
      ),
    );
  }
}
