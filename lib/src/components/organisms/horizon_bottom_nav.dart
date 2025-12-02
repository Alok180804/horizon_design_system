import 'package:flutter/material.dart';
import '../../foundations/colors.dart';
import '../../foundations/radii.dart';

class HorizonBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const HorizonBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const icons = [
      Icons.home_outlined,
      Icons.explore_outlined,
      Icons.map_outlined,
      Icons.person_outline,
    ];

    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: HorizonColors.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(HorizonRadii.large),
          topRight: Radius.circular(HorizonRadii.large),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          icons.length,
          (i) {
            final bool active = i == currentIndex;

            return GestureDetector(
              onTap: () => onTap(i),
              child: Icon(
                icons[i],
                size: 28,
                color: active
                    ? HorizonColors.primary
                    : HorizonColors.mutedText,
              ),
            );
          },
        ),
      ),
    );
  }
}
