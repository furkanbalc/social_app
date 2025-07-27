import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_app/common/helpers/app_snackbar.dart';
import 'package:social_app/common/helpers/app_states.dart';
import 'package:social_app/common/translations/locale_keys.g.dart';
import 'package:social_app/common/widgets/button/custom_elevated_button.dart';
import 'package:social_app/core/api_helper/api_response.dart';
import 'package:social_app/core/enums/auth_method.dart';
import 'package:social_app/core/extensions/context_sizedbox.dart';
import 'package:social_app/core/router/router.dart';
import 'package:social_app/feature/auth/presentation/viewmodels/auth_viewmodel.dart';
import 'package:social_app/feature/auth/presentation/widgets/auth_footer.dart';
import 'package:social_app/feature/auth/presentation/widgets/auth_header.dart';
import 'package:social_app/feature/auth/presentation/widgets/auth_scaffold.dart';
import 'package:social_app/feature/auth/presentation/widgets/email_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:social_app/feature/auth/presentation/widgets/forgot_password.dart';
import 'package:social_app/feature/auth/presentation/widgets/password_text_field.dart';
import 'package:go_router/go_router.dart';
part '../widgets/login_button.dart';
part '../mixin/login_mixin.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> with LoginMixin {
  @override
  Widget build(BuildContext context) {
    authViewModel = ref.watch(authViewModelImp);
    return AuthScaffold(
      formKey: formKey,
      authMethod: AuthMethod.sigin,
      isLoading: authViewModel.loginResponse.status == Status.loading,
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
          _LoginButton(login: login),

          /// Signin Dont Have An Account
          const AuthFooter(method: AuthMethod.sigin),
        ],
      ),
    );
  }
}
