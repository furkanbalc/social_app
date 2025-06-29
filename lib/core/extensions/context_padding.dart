import 'package:flutter/material.dart';
import 'package:social_app/core/constants/constants.dart';

extension CustomPaddingsExtension on BuildContext {
  CustomPaddings get paddings => CustomPaddings(this);
}

class CustomPaddings {
  CustomPaddings(this.context);
  final BuildContext context;

  /// -- ZERO PADDING --
  ///
  ///  EdgeInsets.zero
  EdgeInsets get zero => EdgeInsets.zero;

  /// -- ALL PADDING --
  ///
  ///  EdgeInsets.all(2.0)
  EdgeInsets get allMin => const EdgeInsets.all(AppSizes.min);

  ///  EdgeInsets.all(4.0)
  EdgeInsets get allLow1 => const EdgeInsets.all(AppSizes.low1);

  ///  EdgeInsets.all(8.0)
  EdgeInsets get allLow2 => const EdgeInsets.all(AppSizes.low2);

  ///  EdgeInsets.all(12.0)
  EdgeInsets get allLow3 => const EdgeInsets.all(AppSizes.low3);

  ///  EdgeInsets.all(16.0)
  EdgeInsets get allMedium1 => const EdgeInsets.all(AppSizes.medium1);

  ///  EdgeInsets.all(20.0)
  EdgeInsets get allMedium2 => const EdgeInsets.all(AppSizes.medium2);

  ///  EdgeInsets.all(24.0)
  EdgeInsets get allMedium3 => const EdgeInsets.all(AppSizes.medium3);

  ///  EdgeInsets.all(28.0)
  EdgeInsets get allHigh1 => const EdgeInsets.all(AppSizes.high1);

  ///  EdgeInsets.all(32.0)
  EdgeInsets get allHigh2 => const EdgeInsets.all(AppSizes.high2);

  ///  EdgeInsets.all(36.0)
  EdgeInsets get allHigh3 => const EdgeInsets.all(AppSizes.high3);

  /// -- ONLY TOP PADDING --
  ///
  ///  EdgeInsets.only(top: 2.0)
  EdgeInsets get onlyTopMin => const EdgeInsets.only(top: AppSizes.min);

  ///  EdgeInsets.only(top: 4.0)
  EdgeInsets get onlyTopLow1 => const EdgeInsets.only(top: AppSizes.low1);

  ///  EdgeInsets.only(top: 8.0)
  EdgeInsets get onlyTopLow2 => const EdgeInsets.only(top: AppSizes.low2);

  ///  EdgeInsets.only(top: 12.0)
  EdgeInsets get onlyTopLow3 => const EdgeInsets.only(top: AppSizes.low3);

  ///  EdgeInsets.only(top: 16.0)
  EdgeInsets get onlyTopMedium1 => const EdgeInsets.only(top: AppSizes.medium1);

  ///  EdgeInsets.only(top: 20.0)
  EdgeInsets get onlyTopMedium2 => const EdgeInsets.only(top: AppSizes.medium2);

  ///  EdgeInsets.only(top: 24.0)
  EdgeInsets get onlyTopMedium3 => const EdgeInsets.only(top: AppSizes.medium3);

  ///  EdgeInsets.only(top: 28.0)
  EdgeInsets get onlyTopHigh1 => const EdgeInsets.only(top: AppSizes.high1);

  ///  EdgeInsets.only(top: 32.0)
  EdgeInsets get onlyTopHigh2 => const EdgeInsets.only(top: AppSizes.high2);

  ///  EdgeInsets.only(top: 36.0)
  EdgeInsets get onlyTopHigh3 => const EdgeInsets.only(top: AppSizes.high3);

  /// -- ONLY BOTTOM PADDING --
  ///
  ///  EdgeInsets.only(bottom: 2.0)
  EdgeInsets get onlyBottomMin => const EdgeInsets.only(bottom: AppSizes.min);

  ///  EdgeInsets.only(bottom: 4.0)
  EdgeInsets get onlyBottomLow1 => const EdgeInsets.only(bottom: AppSizes.low1);

  ///  EdgeInsets.only(bottom: 8.0)
  EdgeInsets get onlyBottomLow2 => const EdgeInsets.only(bottom: AppSizes.low2);

  ///  EdgeInsets.only(bottom: 12.0)
  EdgeInsets get onlyBottomLow3 => const EdgeInsets.only(bottom: AppSizes.low3);

  ///  EdgeInsets.only(bottom: 16.0)
  EdgeInsets get onlyBottomMedium1 => const EdgeInsets.only(bottom: AppSizes.medium1);

  ///  EdgeInsets.only(bottom: 20.0)
  EdgeInsets get onlyBottomMedium2 => const EdgeInsets.only(bottom: AppSizes.medium2);

  ///  EdgeInsets.only(bottom: 24.0)
  EdgeInsets get onlyBottomMedium3 => const EdgeInsets.only(bottom: AppSizes.medium3);

  ///  EdgeInsets.only(bottom: 28.0)
  EdgeInsets get onlyBottomHigh1 => const EdgeInsets.only(bottom: AppSizes.high1);

  ///  EdgeInsets.only(bottom: 32.0)
  EdgeInsets get onlyBottomHigh2 => const EdgeInsets.only(bottom: AppSizes.high2);

  ///  EdgeInsets.only(bottom: 36.0)
  EdgeInsets get onlyBottomHigh3 => const EdgeInsets.only(bottom: AppSizes.high3);

  /// -- ONLY RIGHT PADDING --
  ///
  ///  EdgeInsets.only(right: 2.0)
  EdgeInsets get onlyRightMin => const EdgeInsets.only(right: AppSizes.min);

  ///  EdgeInsets.only(right: 4.0)
  EdgeInsets get onlyRightLow1 => const EdgeInsets.only(right: AppSizes.low1);

  ///  EdgeInsets.only(right: 8.0)
  EdgeInsets get onlyRightLow2 => const EdgeInsets.only(right: AppSizes.low2);

  ///  EdgeInsets.only(right: 12.0)
  EdgeInsets get onlyRightLow3 => const EdgeInsets.only(right: AppSizes.low3);

  ///  EdgeInsets.only(right: 16.0)
  EdgeInsets get onlyRightMedium1 => const EdgeInsets.only(right: AppSizes.medium1);

  ///  EdgeInsets.only(right: 20.0)
  EdgeInsets get onlyRightMedium2 => const EdgeInsets.only(right: AppSizes.medium2);

  ///  EdgeInsets.only(right: 24.0)
  EdgeInsets get onlyRightMedium3 => const EdgeInsets.only(right: AppSizes.medium3);

  ///  EdgeInsets.only(right: 28.0)
  EdgeInsets get onlyRightHigh1 => const EdgeInsets.only(right: AppSizes.high1);

  ///  EdgeInsets.only(right: 32.0)
  EdgeInsets get onlyRightHigh2 => const EdgeInsets.only(right: AppSizes.high2);

  ///  EdgeInsets.only(right: 36.0)
  EdgeInsets get onlyRightHigh3 => const EdgeInsets.only(right: AppSizes.high3);

  /// -- ONLY LEFT PADDING --
  ///
  ///  EdgeInsets.only(left: 2.0)
  EdgeInsets get onlyLeftMin => const EdgeInsets.only(left: AppSizes.min);

  ///  EdgeInsets.only(left: 4.0)
  EdgeInsets get onlyLeftLow1 => const EdgeInsets.only(left: AppSizes.low1);

  ///  EdgeInsets.only(left: 8.0)
  EdgeInsets get onlyLeftLow2 => const EdgeInsets.only(left: AppSizes.low2);

  ///  EdgeInsets.only(left: 12.0)
  EdgeInsets get onlyLeftLow3 => const EdgeInsets.only(left: AppSizes.low3);

  ///  EdgeInsets.only(left: 16.0)
  EdgeInsets get onlyLeftMedium1 => const EdgeInsets.only(left: AppSizes.medium1);

  ///  EdgeInsets.only(left: 20.0)
  EdgeInsets get onlyLeftMedium2 => const EdgeInsets.only(left: AppSizes.medium2);

  ///  EdgeInsets.only(left: 24.0)
  EdgeInsets get onlyLeftMedium3 => const EdgeInsets.only(left: AppSizes.medium3);

  ///  EdgeInsets.only(left: 28.0)
  EdgeInsets get onlyLeftHigh1 => const EdgeInsets.only(left: AppSizes.high1);

  ///  EdgeInsets.only(left: 32.0)
  EdgeInsets get onlyLeftHigh2 => const EdgeInsets.only(left: AppSizes.high2);

  ///  EdgeInsets.only(left: 36.0)
  EdgeInsets get onlyLeftHigh3 => const EdgeInsets.only(left: AppSizes.high3);

  /// -- VERTICAL PADDING --
  ///
  ///  EdgeInsets.symmetric(vertical: 2.0)
  EdgeInsets get verticalMin => const EdgeInsets.symmetric(vertical: AppSizes.min);

  ///  EdgeInsets.symmetric(vertical: 4.0)
  EdgeInsets get verticalLow1 => const EdgeInsets.symmetric(vertical: AppSizes.low2);

  ///  EdgeInsets.symmetric(vertical: 8.0)
  EdgeInsets get verticalLow2 => const EdgeInsets.symmetric(vertical: AppSizes.low2);

  ///  EdgeInsets.symmetric(vertical: 12.0)
  EdgeInsets get verticalLow3 => const EdgeInsets.symmetric(vertical: AppSizes.low3);

  ///  EdgeInsets.symmetric(vertical: 16.0)
  EdgeInsets get verticalMedium1 => const EdgeInsets.symmetric(vertical: AppSizes.medium1);

  ///  EdgeInsets.symmetric(vertical: 20.0)
  EdgeInsets get verticalMedium2 => const EdgeInsets.symmetric(vertical: AppSizes.medium2);

  ///  EdgeInsets.symmetric(vertical: 24.0)
  EdgeInsets get verticalMedium3 => const EdgeInsets.symmetric(vertical: AppSizes.medium3);

  ///  EdgeInsets.symmetric(vertical: 28.0)
  EdgeInsets get verticalHigh1 => const EdgeInsets.symmetric(vertical: AppSizes.high1);

  ///  EdgeInsets.symmetric(vertical: 32.0)
  EdgeInsets get verticalHigh2 => const EdgeInsets.symmetric(vertical: AppSizes.high2);

  ///  EdgeInsets.symmetric(vertical: 36.0)
  EdgeInsets get verticalHigh3 => const EdgeInsets.symmetric(vertical: AppSizes.high3);

  /// -- HORIZONTAL PADDING --
  ///
  ///  EdgeInsets.symmetric(horizontal: 2.0)
  EdgeInsets get horizontalMin => const EdgeInsets.symmetric(horizontal: AppSizes.min);

  ///  EdgeInsets.symmetric(horizontal: 4.0)
  EdgeInsets get horizontalLow1 => const EdgeInsets.symmetric(horizontal: AppSizes.low1);

  ///  EdgeInsets.symmetric(horizontal: 8.0)
  EdgeInsets get horizontalLow2 => const EdgeInsets.symmetric(horizontal: AppSizes.low2);

  ///  EdgeInsets.symmetric(horizontal: 12.0)
  EdgeInsets get horizontalLow3 => const EdgeInsets.symmetric(horizontal: AppSizes.low3);

  ///  EdgeInsets.symmetric(horizontal: 16.0)
  EdgeInsets get horizontalMedium1 => const EdgeInsets.symmetric(horizontal: AppSizes.medium1);

  ///  EdgeInsets.symmetric(horizontal: 20.0)
  EdgeInsets get horizontalMedium2 => const EdgeInsets.symmetric(horizontal: AppSizes.medium2);

  ///  EdgeInsets.symmetric(horizontal: 24.0)
  EdgeInsets get horizontalMedium3 => const EdgeInsets.symmetric(horizontal: AppSizes.medium3);

  ///  EdgeInsets.symmetric(horizontal: 28.0)
  EdgeInsets get horizontalHigh1 => const EdgeInsets.symmetric(horizontal: AppSizes.high1);

  ///  EdgeInsets.symmetric(horizontal: 32.0)
  EdgeInsets get horizontalHigh2 => const EdgeInsets.symmetric(horizontal: AppSizes.high2);

  ///  EdgeInsets.symmetric(horizontal: 36.0)
  EdgeInsets get horizontalHigh3 => const EdgeInsets.symmetric(horizontal: AppSizes.high3);
}
