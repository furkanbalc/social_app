import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:social_app/common/widgets/image/custom_svg_widget.dart';
import 'package:social_app/core/assets/app_assets.dart';
import 'package:social_app/core/constants/app_colors.dart';
import 'package:social_app/core/enums/auth_method.dart';
import 'package:social_app/core/extensions/context_padding.dart';
import 'package:social_app/core/extensions/context_size.dart';
import 'package:social_app/core/extensions/context_sizedbox.dart';
import 'package:social_app/core/extensions/context_text_style.dart';
import 'package:social_app/common/translations/locale_keys.g.dart';
import 'package:go_router/go_router.dart';
import 'package:social_app/core/router/router.dart';
import 'package:social_app/feature/auth/presentation/widgets/auth_text_rich_button.dart';

part 'auth_method_button.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({super.key, required this.method});

  final AuthMethod method;

  bool get isSignup => method == AuthMethod.signup;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Or Widget
        Padding(
          padding: context.paddings.horizontalMedium3 + context.paddings.onlyTopMedium3,
          child: _buildOrWidget(context),
        ),

        /// Other Method Buttons
        Padding(
          padding: context.paddings.verticalMedium3,
          child: _buildOtherAuthMethods(context),
        ),

        /// Text Rich Button
        _buildAuthTextRichButton(context),
      ],
    );
  }

  /// Or Widget
  Widget _buildOrWidget(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(color: AppColors.greyLight)),
        Padding(
          padding: context.paddings.horizontalLow3,
          child: Text(
            LocaleKeys.auth_or_with.tr(),
            style: context.textStyles.titleSmall.copyWith(color: AppColors.steel),
          ),
        ),
        const Expanded(child: Divider(color: AppColors.greyLight)),
      ],
    );
  }

  /// Other Method Buttons
  Widget _buildOtherAuthMethods(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Apple Method Button
        _AuthMethodButton(icon: AppAssets.svg.apple),
        context.sizedBoxWidthMedium1,

        /// Google Method Button
        _AuthMethodButton(icon: AppAssets.svg.google),
        context.sizedBoxWidthMedium1,

        /// Facebook Method Button
        _AuthMethodButton(icon: AppAssets.svg.facebook),
      ],
    );
  }

  /// Text Rich Button
  Widget _buildAuthTextRichButton(BuildContext context) {
    return AuthTextRichButton(
      onPressed: () {
        isSignup ? context.goNamed(AppRouteNames.login.name) : context.goNamed(AppRouteNames.register.name);
      },
      text: isSignup
          ? '${LocaleKeys.auth_dont_have_an_account.tr()} '
          : '${LocaleKeys.auth_already_have_an_account.tr()} ',
      buttonText: isSignup ? LocaleKeys.auth_signin.tr() : LocaleKeys.auth_signup.tr(),
    );
  }
}
