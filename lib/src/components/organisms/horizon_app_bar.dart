import 'package:flutter/material.dart';
import '../../foundations/spacing.dart';
import '../../foundations/colors.dart';
import '../atoms/buttons/icon_fill_button.dart';
import '../atoms/text/htext.dart';

class HorizonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onChat;
  final VoidCallback? onNotifications;

  const HorizonAppBar({
    super.key,
    required this.title,
    this.onChat,
    this.onNotifications,
  });

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: HorizonSpacing.lg,
        vertical: HorizonSpacing.md,
      ),
      color: HorizonColors.background,
      child: Row(
        children: [
          HText.h2(title),
          const Spacer(),
          HIconFillButton(
            icon: Icons.chat_bubble_outline,
            onPressed: onChat,
          ),
          const SizedBox(width: 12),
          HIconFillButton(
            icon: Icons.notifications_none,
            onPressed: onNotifications,
          ),
        ],
      ),
    );
  }
}
