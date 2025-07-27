import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:social_app/app.dart';
import 'package:social_app/core/constants/app_constants.dart';
import 'package:social_app/core/enums/app_languages.dart';
import 'package:social_app/firebase_options.dart';
import 'di/injection.dart' as di;

Future<void> main() async {
  /// If there is an asynchronous operation in the main block, this line should be added
  WidgetsFlutterBinding.ensureInitialized();

  /// starts the easy_localization package and allows the necessary settings to be installed
  await EasyLocalization.ensureInitialized();

  /// Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  /// Initialize dependencies
  di.initializeDependencies();

  runApp(
    /// We wrapped it with EasyLocalization to be able to make adjustmentss
    EasyLocalization(
      /// We specify the languages we support in the application
      supportedLocales: [
        Locale(AppLanguages.en.name),
        Locale(AppLanguages.tr.name),
      ],

      /// Use the backup default language when language files or translations are missing
      useFallbackTranslations: true,

      /// Specifies the default language to use when language files or translations are missing. (Substitute language)
      fallbackLocale: Locale(AppLanguages.en.name),

      /// It allows managing its localization by using language codes. (at.json, tr.like json)
      useOnlyLangCode: true,

      /// Location of language files
      path: AppConstants.languagesPath,
      child: const ProviderScope(child: MyApp()),
    ),
  );
}
