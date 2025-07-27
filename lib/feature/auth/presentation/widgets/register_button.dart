part of '../views/register.dart';

class _RegisterButton extends StatelessWidget {
  const _RegisterButton({required this.register});

  final VoidCallback register;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: register,
      text: LocaleKeys.auth_signup.tr(),
    );
  }
}
