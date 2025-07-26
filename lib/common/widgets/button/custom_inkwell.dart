import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_app/core/constants/constants.dart';

class CustomInkwell extends StatelessWidget {
  const CustomInkwell({
    super.key,
    this.onTap,
    required this.child,
  });

  final VoidCallback? onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      highlightColor: AppColors.transparentColor,
      onTap: () {
        HapticFeedback.lightImpact();
        onTap?.call();
      },
      child: child,
    );
  }
}
