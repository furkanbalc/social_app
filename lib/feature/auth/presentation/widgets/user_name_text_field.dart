import 'package:flutter/material.dart';
import 'package:social_app/common/translations/locale_keys.g.dart';
import 'package:social_app/common/widgets/input/custom_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:social_app/common/helpers/app_validators.dart';

class UserNameTextField extends StatelessWidget {
  const UserNameTextField({
    super.key,
    required this.userNameController,
  });

  final TextEditingController userNameController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: userNameController,
      validator: (String? value) => AppValidators.nameValidator(value),
      labelText: '${LocaleKeys.form_fields_name.tr()} ${LocaleKeys.form_fields_surname.tr()}',
      hintText: '${LocaleKeys.form_fields_name.tr()} ${LocaleKeys.form_fields_surname.tr()}',
      keyboardType: TextInputType.name,
      autofillHints: const [AutofillHints.name],
      textInputAction: TextInputAction.next,
      unFocus: true,
    );
  }
}
