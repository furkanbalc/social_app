part of 'light_theme.dart';

class _CustomElevatedButtonTheme {
  _CustomElevatedButtonTheme._();

  /// Light
  static ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shadowColor: AppColors.transparentColor,
      splashFactory: NoSplash.splashFactory,
      foregroundColor: AppColors.whiteColor,
      backgroundColor: AppColors.rawSunset,
      disabledBackgroundColor: AppColors.steel,
      disabledForegroundColor: AppColors.cascadingWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.high3)),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.whiteColor),
    ),
  );

  /// Dark
}
