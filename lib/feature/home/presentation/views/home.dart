import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_app/core/router/router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home'),
            TextButton(
              onPressed: () {
                context.pushNamed(AppRouteNames.login.name);
              },
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {
                context.pushNamed(AppRouteNames.register.name);
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
