part of '../views/login.dart';

class _LoginButton extends StatelessWidget {
  const _LoginButton({required this.login});

  final VoidCallback login;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: login,
      text: LocaleKeys.auth_signin.tr(),
    );
  }
}
