import 'package:flutter/material.dart';
import 'package:social_app/common/translations/locale_keys.g.dart';
import 'package:social_app/common/widgets/input/custom_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:social_app/common/helpers/app_validators.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    required this.passwordController,
  });

  final TextEditingController passwordController;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isObscure = true;

  void _toggleObscure() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: widget.passwordController,
      validator: (String? value) => AppValidators.loginPasswordValidator(value),
      labelText: LocaleKeys.form_fields_password.tr(),
      hintText: LocaleKeys.form_fields_password.tr(),
      keyboardType: TextInputType.text,
      autofillHints: const [AutofillHints.password],
      textInputAction: TextInputAction.done,
      obscureText: isObscure,
      suffixIcon: isObscure ? Icons.visibility : Icons.visibility_off,
      suffixOnPressed: _toggleObscure,
      onFieldSubmitted: (p0) {},
      unFocus: true,
    );
  }
}
