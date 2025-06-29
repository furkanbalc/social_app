import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:social_app/core/router/router.dart';
import 'package:social_app/feature/home/presentation/views/home.dart';
import 'package:social_app/feature/onboard/presentation/views/onboard.dart';
import 'package:social_app/feature/splash/presentation/views/splash.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey(debugLabel: 'root');

class AppRouter {
  AppRouter._();

  static AppRouter? _instance;
  static AppRouter get instance => _instance ??= AppRouter._();

  final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRouteNames.splash.path,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: AppRouteNames.splash.name,
        path: AppRouteNames.splash.path,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        name: AppRouteNames.onboard.name,
        path: AppRouteNames.onboard.path,
        builder: (context, state) => const OnboardView(),
      ),
      GoRoute(
        name: AppRouteNames.home.name,
        path: AppRouteNames.home.path,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
