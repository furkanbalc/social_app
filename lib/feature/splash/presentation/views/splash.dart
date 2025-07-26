import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:social_app/core/router/app_route_names.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      context.goNamed(AppRouteNames.onboard.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Splash'),
      ),
    );
  }
}
