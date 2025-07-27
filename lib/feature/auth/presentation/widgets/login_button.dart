part of '../views/login.dart';

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {},
      text: LocaleKeys.auth_signin.tr(),
    );
  }
}
