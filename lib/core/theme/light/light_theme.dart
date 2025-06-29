import 'package:flutter/material.dart';
import 'package:social_app/core/constants/constants.dart';

part 'light_color_scheme.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: AppConstants.fontFamily,
  colorScheme: _LightColorScheme.light,
  scaffoldBackgroundColor: AppColors.cascadingWhite,
);
