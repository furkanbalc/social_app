import 'package:flutter/material.dart';
import 'package:social_app/core/constants/constants.dart';

extension CustomBordersExtension on BuildContext {
  CustomBorders get borderRadius => CustomBorders(this);
}

class CustomBorders {
  CustomBorders(this.context);
  final BuildContext context;

  /// -- radius
  ///
  ///  Radius.circular(4.0)
  Radius get radiusMin => const Radius.circular(AppSizes.low1);

  ///  Radius.circular(8.0)
  Radius get radiusLow => const Radius.circular(AppSizes.low2);

  ///  Radius.circular(12.0)
  Radius get radiusNormal => const Radius.circular(AppSizes.low3);

  ///  Radius.circular(16.0)
  Radius get radiusMedium => const Radius.circular(AppSizes.medium1);

  ///  Radius.circular(20.0)
  Radius get radiusHigh => const Radius.circular(AppSizes.medium2);

  ///  Radius.circular(24.0)
  Radius get radiusUltra => const Radius.circular(AppSizes.medium3);

  /// -- border radius
  ///
  /// BorderRadius.circular(4.0)
  BorderRadius get borderRadiusMin => BorderRadius.circular(AppSizes.low1);

  /// BorderRadius.circular(8.0)
  BorderRadius get borderRadiusLow => BorderRadius.circular(AppSizes.low2);

  /// BorderRadius.circular(12.0)
  BorderRadius get borderRadiusNormal => BorderRadius.circular(AppSizes.low3);

  /// BorderRadius.circular(16.0)
  BorderRadius get borderRadiusMedium => BorderRadius.circular(AppSizes.medium1);

  /// BorderRadius.circular(20.0)
  BorderRadius get borderRadiusHigh => BorderRadius.circular(AppSizes.medium2);

  /// BorderRadius.circular(24.0)
  BorderRadius get borderRadiusUltra => BorderRadius.circular(AppSizes.medium3);
}
