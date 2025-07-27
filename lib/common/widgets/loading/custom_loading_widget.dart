import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:social_app/core/constants/app_colors.dart';
import 'package:social_app/core/extensions/context_size.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.dynamicWidth(),
      height: context.dynamicHeight(),
      color: AppColors.verifiedBlack.withOpacity(.5),
      child: const SpinKitWave(
        size: 40,
        color: AppColors.whiteColor,
      ),
    );
  }
}
