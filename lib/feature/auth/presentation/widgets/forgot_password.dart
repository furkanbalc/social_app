import 'package:flutter/material.dart';
import 'package:social_app/common/translations/locale_keys.g.dart';
import 'package:social_app/common/widgets/button/custom_text_button.dart';
import 'package:social_app/core/constants/app_colors.dart';
import 'package:social_app/core/extensions/context_text_style.dart';
import 'package:easy_localization/easy_localization.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: CustomTextButton(
        onPressed: () {},
        text: LocaleKeys.auth_forgot_password.tr(),
        textStyle: context.textStyles.titleSmall.copyWith(
          color: AppColors.rawSunset,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
