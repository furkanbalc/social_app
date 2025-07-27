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
import 'package:social_app/feature/auth/presentation/widgets/forgot_password.dart';
import 'package:social_app/feature/auth/presentation/widgets/password_text_field.dart';
part '../widgets/login_button.dart';
part '../mixin/login_mixin.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> with LoginMixin {
  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      formKey: formKey,
      authMethod: AuthMethod.sigin,
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
            title: LocaleKeys.auth_signin.tr(),
            subTitle: LocaleKeys.auth_welcome_back.tr(),
          ),
          context.sizedBoxHeightMedium1,

          /// Email Field
          EmailTextField(emailController: emailController),
          context.sizedBoxHeightMedium1,

          /// Password Field
          PasswordTextField(passwordController: passwordController),
          context.sizedBoxHeightLow2,

          /// Forgot Password Button
          const ForgotPassword(),
          context.sizedBoxHeightHigh3,

          /// Signin Button
          const _LoginButton(),

          /// Signin Dont Have An Account
          const AuthFooter(method: AuthMethod.sigin),
        ],
      ),
    );
  }
}
