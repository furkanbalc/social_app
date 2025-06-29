import 'package:flutter/material.dart';
import 'package:social_app/common/widgets/image/custom_png_widget.dart';
import 'package:social_app/core/assets/app_assets.dart';
import 'package:social_app/core/constants/app_colors.dart';
import 'package:social_app/core/extensions/context_size.dart';

class OnboardImageWidget extends StatelessWidget {
  const OnboardImageWidget({super.key, required this.img});

  final String img;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomPngWidget(
          png: img,
          height: context.dynamicHeight(.6),
          fit: BoxFit.cover,
        ),
        CustomPngWidget(
          png: AppAssets.png.ellipse,
          color: AppColors.rawSunset,
          width: context.dynamicWidth(.85),
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
