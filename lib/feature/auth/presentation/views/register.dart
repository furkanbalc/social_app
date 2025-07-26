import 'package:flutter/material.dart';
import 'package:social_app/common/translations/locale_keys.g.dart';
import 'package:social_app/common/widgets/button/custom_elevated_button.dart';
import 'package:social_app/core/enums/auth_method.dart';
import 'package:social_app/core/extensions/context_sizedbox.dart';
import 'package:social_app/feature/auth/presentation/widgets/auth_footer.dart';
import 'package:social_app/feature/auth/presentation/widgets/auth_header.dart';
import 'package:social_app/feature/auth/presentation/widgets/auth_scaffold.dart';
import 'package:social_app/feature/auth/presentation/widgets/email_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:social_app/feature/auth/presentation/widgets/password_text_field.dart';
import 'package:social_app/feature/auth/presentation/widgets/term_and_condition_widget.dart';
import 'package:social_app/feature/auth/presentation/widgets/user_name_text_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      authMethod: AuthMethod.signup,
      body: _loginBody(context),
    );
  }

  Widget _loginBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Signin Title
          AuthHeader(
            title: LocaleKeys.auth_signup.tr(),
            subTitle: LocaleKeys.auth_fill_your_info.tr(),
          ),
          context.sizedBoxHeightMedium1,

          /// User Name Field
          const UserNameTextField(),
          context.sizedBoxHeightMedium1,

          /// Email Field
          const EmailTextField(),
          context.sizedBoxHeightMedium1,

          /// Password Field
          const PasswordTextField(),

          /// Terms and Conditions
          TermAndConditionWidget(),
          context.sizedBoxHeightMedium1,

          /// Signin Button
          CustomElevatedButton(
            onPressed: () {},
            text: LocaleKeys.auth_signup.tr(),
          ),

          /// Auth Footer Signup
          const AuthFooter(method: AuthMethod.signup),
        ],
      ),
    );
  }
}
