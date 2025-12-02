import 'package:flutter/material.dart';
import '../../foundations/colors.dart';
import '../../foundations/radii.dart';
import '../../foundations/spacing.dart';
import '../atoms/text/htext.dart';
import 'metadata_row.dart';

class FeedCard extends StatelessWidget {
  final String username;
  final String timeAgo;
  final String title;
  final String imageUrl;

  const FeedCard({
    super.key,
    required this.username,
    required this.timeAgo,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(HorizonSpacing.md),
      decoration: BoxDecoration(
        color: HorizonColors.surface,
        borderRadius: BorderRadius.circular(HorizonRadii.large),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(backgroundColor: HorizonColors.surfaceVariant, radius: 18),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(username, style: const TextStyle(fontWeight: FontWeight.w600)),
                  MetadataRow(icon: Icons.schedule, text: timeAgo),
                ],
              ),
              const Spacer(),
              const Icon(Icons.more_vert, color: HorizonColors.onSurface),
            ],
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(HorizonRadii.medium),
            child: Image.network(
              imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),
          HText.h2(title),
        ],
      ),
    );
  }
}
