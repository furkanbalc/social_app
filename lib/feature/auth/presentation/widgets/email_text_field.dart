import 'package:flutter/material.dart';
import 'package:social_app/common/translations/locale_keys.g.dart';
import 'package:social_app/common/widgets/input/custom_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:social_app/common/helpers/app_validators.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      validator: (String? value) => AppValidators.emailValidator(value),
      labelText: LocaleKeys.form_fields_email.tr(),
      hintText: LocaleKeys.form_fields_email.tr(),
      keyboardType: TextInputType.emailAddress,
      autofillHints: const [AutofillHints.email],
      textInputAction: TextInputAction.next,
      unFocus: true,
    );
  }
}
