import 'package:flutter/material.dart';
import '../../foundations/colors.dart';
import '../../foundations/spacing.dart';
import '../../foundations/radii.dart';
import '../atoms/text/htext.dart';
import '../atoms/chip.dart';

class QuestFlowBlock extends StatelessWidget {
  final int dayNumber;
  final String date;
  final String title;
  final String timeOfDay;
  final String imageUrl;
  final String location;

  const QuestFlowBlock({
    super.key,
    required this.dayNumber,
    required this.date,
    required this.title,
    required this.timeOfDay,
    required this.imageUrl,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(HorizonSpacing.md),
      margin: const EdgeInsets.symmetric(vertical: HorizonSpacing.md),
      decoration: BoxDecoration(
        color: HorizonColors.surface,
        borderRadius: BorderRadius.circular(HorizonRadii.large),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HTagChip(label: "Day $dayNumber • $date"),
          const SizedBox(height: 12),

          ClipRRect(
            borderRadius: BorderRadius.circular(HorizonRadii.medium),
            child: Image.network(
              imageUrl,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 12),
          HText.h2(title),
          const SizedBox(height: 6),
          Text(
            "$timeOfDay • $location",
            style: const TextStyle(color: HorizonColors.mutedText),
          ),
        ],
      ),
    );
  }
}
