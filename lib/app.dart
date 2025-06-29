import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:social_app/core/constants/app_constants.dart';
import 'package:social_app/core/router/app_router.dart';
import 'package:social_app/core/theme/light/light_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      routerConfig: AppRouter.instance.router,
    );
  }
}
