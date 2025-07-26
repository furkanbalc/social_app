import 'package:flutter/material.dart';
import 'package:social_app/common/translations/locale_keys.g.dart';
import 'package:social_app/common/widgets/input/custom_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labelText: LocaleKeys.form_fields_password.tr(),
      hintText: LocaleKeys.form_fields_password.tr(),
      keyboardType: TextInputType.text,
      autofillHints: const [AutofillHints.password],
      textInputAction: TextInputAction.done,
      obscureText: true,
      onFieldSubmitted: (p0) {},
      unFocus: true,
    );
  }
}
