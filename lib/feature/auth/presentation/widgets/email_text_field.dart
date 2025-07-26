import 'package:flutter/material.dart';
import 'package:social_app/common/translations/locale_keys.g.dart';
import 'package:social_app/common/widgets/input/custom_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labelText: LocaleKeys.form_fields_email.tr(),
      hintText: LocaleKeys.form_fields_email.tr(),
      keyboardType: TextInputType.emailAddress,
      autofillHints: const [AutofillHints.email],
      textInputAction: TextInputAction.next,
      unFocus: true,
    );
  }
}
