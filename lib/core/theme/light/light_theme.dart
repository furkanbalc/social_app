import 'package:flutter/material.dart';
import 'package:social_app/core/constants/constants.dart';

part 'custom_color_scheme.dart';
part 'custom_input_decoration_theme.dart';
part 'custom_elevated_button_theme.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: AppConstants.fontFamily,
  scaffoldBackgroundColor: AppColors.cascadingWhite,
  colorScheme: _CustomColorScheme.light,
  inputDecorationTheme: _CustomInputDecorationTheme.lightInputDecorationTheme,
  elevatedButtonTheme: _CustomElevatedButtonTheme.lightElevatedButtonTheme,
);
