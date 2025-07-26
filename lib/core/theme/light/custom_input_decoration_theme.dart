part of 'light_theme.dart';

class _CustomInputDecorationTheme {
  _CustomInputDecorationTheme._();
  static const double _kTextFieldFontSizes = 14;

  /// Light
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: AppColors.steel.withOpacity(.1),
    labelStyle: const TextStyle().copyWith(fontSize: _kTextFieldFontSizes, color: AppColors.steel.withOpacity(.1)),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle(fontSize: _kTextFieldFontSizes).copyWith(
      color: AppColors.rawSunset,
      fontWeight: FontWeight.bold,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.medium1),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(AppSizes.medium1),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 0.5, color: AppColors.rawSunset),
      borderRadius: BorderRadius.circular(AppSizes.medium1),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 0.5, color: AppColors.redColor),
      borderRadius: BorderRadius.circular(AppSizes.medium1),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 0.5, color: AppColors.redColor),
      borderRadius: BorderRadius.circular(AppSizes.medium1),
    ),
  );

  /// Dark
}
