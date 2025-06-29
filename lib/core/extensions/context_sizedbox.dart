import 'package:flutter/material.dart';
import 'package:social_app/core/constants/app_sizes.dart';

/// Uygulamada kullanilan SizedBox Widgeti her defasinde elle degerler girmek yerine
/// sabit degelerler ile tanimlanarak extension ile context uzerinden erisilebilir hale getirildi
extension CustomSizedBoxExtension on BuildContext {
  /// -- WIDTH --
  ///
  /// SizedBox(width: 2.0)
  SizedBox get sizedBoxWidthMin => const SizedBox(width: AppSizes.min);

  /// SizedBox(width: 4.0)
  SizedBox get sizedBoxWidthLow1 => const SizedBox(width: AppSizes.low1);

  /// SizedBox(width: 8.0)
  SizedBox get sizedBoxWidthLow2 => const SizedBox(width: AppSizes.low2);

  /// SizedBox(width: 12.0)
  SizedBox get sizedBoxWidthLow3 => const SizedBox(width: AppSizes.low3);

  /// SizedBox(width: 16.0)
  SizedBox get sizedBoxWidthMedium1 => const SizedBox(width: AppSizes.medium1);

  /// SizedBox(width: 20.0)
  SizedBox get sizedBoxWidthMedium2 => const SizedBox(width: AppSizes.medium2);

  /// SizedBox(width: 24.0)
  SizedBox get sizedBoxWidthMedium3 => const SizedBox(width: AppSizes.medium3);

  /// SizedBox(width: 28.0)
  SizedBox get sizedBoxWidthHigh1 => const SizedBox(width: AppSizes.high1);

  /// SizedBox(width: 32.0)
  SizedBox get sizedBoxWidthHigh2 => const SizedBox(width: AppSizes.high2);

  /// SizedBox(width: 36.0)
  SizedBox get sizedBoxWidthHigh3 => const SizedBox(width: AppSizes.high3);

  /// SizedBox(width: 40.0)
  SizedBox get sizedBoxWidthUltra1 => const SizedBox(width: AppSizes.ultra1);

  /// SizedBox(width: 44.0)
  SizedBox get sizedBoxWidthUltra2 => const SizedBox(width: AppSizes.ultra2);

  /// SizedBox(width: 48.0)
  SizedBox get sizedBoxWidthUltra3 => const SizedBox(width: AppSizes.ultra2);

  /// -- HEIGHT --
  ///
  /// SizedBox(height: 2.0)
  SizedBox get sizedBoxHeightMin => const SizedBox(height: AppSizes.min);

  /// SizedBox(height: 4.0)
  SizedBox get sizedBoxHeightLow1 => const SizedBox(height: AppSizes.low1);

  /// SizedBox(height: 8.0)
  SizedBox get sizedBoxHeightLow2 => const SizedBox(height: AppSizes.low2);

  /// SizedBox(height: 12.0)
  SizedBox get sizedBoxHeightLow3 => const SizedBox(height: AppSizes.low3);

  /// SizedBox(height: 16.0)
  SizedBox get sizedBoxHeightMedium1 => const SizedBox(height: AppSizes.medium1);

  /// SizedBox(height: 20.0)
  SizedBox get sizedBoxHeightMedium2 => const SizedBox(height: AppSizes.medium2);

  /// SizedBox(height: 24.0)
  SizedBox get sizedBoxHeightMedium3 => const SizedBox(height: AppSizes.medium3);

  /// SizedBox(height: 28.0)
  SizedBox get sizedBoxHeightHigh1 => const SizedBox(height: AppSizes.high1);

  /// SizedBox(height: 32.0)
  SizedBox get sizedBoxHeightHigh2 => const SizedBox(height: AppSizes.high2);

  /// SizedBox(height: 36.0)
  SizedBox get sizedBoxHeightHigh3 => const SizedBox(height: AppSizes.high3);

  /// SizedBox(height: 40.0)
  SizedBox get sizedBoxHeightUltra1 => const SizedBox(height: AppSizes.ultra1);

  /// SizedBox(height: 44.0)
  SizedBox get sizedBoxHeightUltra2 => const SizedBox(height: AppSizes.ultra2);

  /// SizedBox(height: 48.0)
  SizedBox get sizedBoxHeightUltra3 => const SizedBox(height: AppSizes.ultra3);

  /// -- SHRINK --
  ///
  /// SizedBox.shrink()
  SizedBox get sizedBoxShrink => const SizedBox.shrink();

  /// SizedBox()
  SizedBox get sizedBox => const SizedBox();
}
