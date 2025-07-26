import 'package:flutter/material.dart';
import 'package:social_app/core/extensions/context_padding.dart';
import 'package:social_app/core/extensions/context_sizedbox.dart';
import 'package:social_app/core/extensions/context_text_style.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Title
        Text(
          title,
          style: context.textStyles.headlineMedium.copyWith(fontWeight: FontWeight.w600),
        ),
        context.sizedBoxHeightMedium1,

        /// SubTitle
        Padding(
          padding: context.paddings.horizontalMedium3,
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: context.textStyles.titleSmall,
          ),
        ),
      ],
    );
  }
}
