import 'package:flutter/material.dart';
import '../../foundations/colors.dart';
import '../../foundations/spacing.dart';
import '../../foundations/radii.dart';
import '../atoms/text/htext.dart';
import 'metadata_row.dart';

class QuestCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String tag;

  const QuestCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HorizonColors.surface,
        borderRadius: BorderRadius.circular(HorizonRadii.large),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(HorizonRadii.large),
              topRight: Radius.circular(HorizonRadii.large),
            ),
            child: Image.network(
              imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(HorizonSpacing.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MetadataRow(icon: Icons.label, text: tag),
                const SizedBox(height: HorizonSpacing.sm),
                HText.h2(title),
                const SizedBox(height: 4),
                MetadataRow(icon: Icons.location_on, text: subtitle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
