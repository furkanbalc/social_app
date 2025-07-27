import 'package:flutter/material.dart';
import 'package:social_app/common/helpers/app_states.dart';
import 'package:social_app/common/translations/locale_keys.g.dart';
import 'package:social_app/common/widgets/button/custom_elevated_button.dart';
import 'package:social_app/common/widgets/button/custom_inkwell.dart';
import 'package:social_app/common/widgets/text/custom_text.dart';
import 'package:social_app/core/api_helper/api_response.dart';
import 'package:social_app/core/constants/app_colors.dart';
import 'package:social_app/core/enums/auth_method.dart';
import 'package:social_app/core/extensions/context_sizedbox.dart';
import 'package:social_app/core/router/router.dart';
import 'package:social_app/feature/auth/presentation/viewmodels/auth_viewmodel.dart';
import 'package:social_app/feature/auth/presentation/widgets/auth_footer.dart';
import 'package:social_app/feature/auth/presentation/widgets/auth_header.dart';
import 'package:social_app/feature/auth/presentation/widgets/auth_scaffold.dart';
import 'package:social_app/feature/auth/presentation/widgets/email_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:social_app/feature/auth/presentation/widgets/password_text_field.dart';
import 'package:social_app/feature/auth/presentation/widgets/user_name_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_app/common/helpers/app_snackbar.dart';
import 'package:go_router/go_router.dart';
part '../widgets/register_button.dart';
part '../widgets/term_and_condition_widget.dart';
part '../mixin/register_mixin.dart';

class RegisterView extends ConsumerStatefulWidget {
  const RegisterView({super.key});

  @override
  ConsumerState<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends ConsumerState<RegisterView> with RegisterMixin {
  @override
  Widget build(BuildContext context) {
    authViewModel = ref.watch(authViewModelImp);
    return AuthScaffold(
      formKey: formKey,
      authMethod: AuthMethod.signup,
      isLoading: authViewModel.registerResponse.status == Status.loading,
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
          UserNameTextField(userNameController: userNameController),
          context.sizedBoxHeightMedium1,

          /// Email Field
          EmailTextField(emailController: emailController),
          context.sizedBoxHeightMedium1,

          /// Password Field
          PasswordTextField(passwordController: passwordController),

          /// Terms and Conditions
          _TermAndConditionWidget(),
          context.sizedBoxHeightMedium1,

          /// Signin Button
          _RegisterButton(register: register),

          /// Auth Footer Signup
          const AuthFooter(method: AuthMethod.signup),
        ],
      ),
    );
  }
}
