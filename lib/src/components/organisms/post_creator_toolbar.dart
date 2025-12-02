import 'package:flutter/material.dart';
import '../../foundations/colors.dart';
import '../../foundations/spacing.dart';

class PostCreatorToolbar extends StatelessWidget {
  const PostCreatorToolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(HorizonSpacing.md),
      color: HorizonColors.surface,
      child: Row(
        children: const [
          Icon(Icons.image, color: HorizonColors.onSurface),
          SizedBox(width: 16),
          Icon(Icons.location_on, color: HorizonColors.onSurface),
          SizedBox(width: 16),
          Icon(Icons.emoji_emotions_outlined, color: HorizonColors.onSurface),
        ],
      ),
    );
  }
}

