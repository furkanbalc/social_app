import 'dart:math';

import 'package:flutter/material.dart';
import 'package:social_app/common/widgets/image/custom_png_widget.dart';
import 'package:social_app/core/assets/app_assets.dart';
import 'package:social_app/core/enums/auth_method.dart';
import 'package:social_app/core/extensions/context_size.dart';

class BubbleWidget extends StatelessWidget {
  const BubbleWidget({super.key, required this.authMethod});
  final AuthMethod authMethod;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: _getTopPosition(context),
      right: _getRightPosition(context),
      left: _getLeftPosition(context),
      child: Transform.rotate(
        angle: authMethod == AuthMethod.signup ? pi * 3.5 : 0,
        child: CustomPngWidget(
          png: AppAssets.png.bubbles,
          width: context.dynamicWidth(),
          height: context.dynamicWidth(),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  double _getTopPosition(BuildContext context) {
    switch (authMethod) {
      case AuthMethod.sigin:
        return -context.dynamicHeight(.2);
      case AuthMethod.signup:
        return -context.dynamicHeight(.2);
      case AuthMethod.forgotPassword:
        return -context.dynamicHeight(.2);
      default:
        return -context.dynamicHeight(.2);
    }
  }

  double? _getRightPosition(BuildContext context) {
    switch (authMethod) {
      case AuthMethod.sigin:
        return -context.dynamicWidth(.25);
      case AuthMethod.signup:
        return null;
      case AuthMethod.forgotPassword:
        return -context.dynamicHeight(.2);
      default:
        return -context.dynamicHeight(.2);
    }
  }

  double? _getLeftPosition(BuildContext context) {
    switch (authMethod) {
      case AuthMethod.sigin:
        return null;
      case AuthMethod.signup:
        return -context.dynamicHeight(.25);
      case AuthMethod.forgotPassword:
        return -context.dynamicHeight(.2);
      default:
        return -context.dynamicHeight(.2);
    }
  }
}
