import 'package:flutter/material.dart';
import '../foundations/colors.dart';
import '../foundations/spacing.dart';

class HorizonScreenWrapper extends StatelessWidget {
  final Widget child;
  final bool scroll;
  final double maxWidth;
  final EdgeInsetsGeometry? padding;

  const HorizonScreenWrapper({
    super.key,
    required this.child,
    this.scroll = true,
    this.maxWidth = 900,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final content = Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Padding(
          padding: padding ??
              const EdgeInsets.symmetric(
                horizontal: HorizonSpacing.lg,
                vertical: HorizonSpacing.md,
              ),
          child: child,
        ),
      ),
    );

    return Scaffold(
      backgroundColor: HorizonColors.background,
      body: SafeArea(
        child: scroll
            ? SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: content,
              )
            : content,
      ),
    );
  }
}
