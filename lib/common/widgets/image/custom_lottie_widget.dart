import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:social_app/core/enums/app_assets_type.dart';

class CustomLottieWidget extends StatelessWidget {
  const CustomLottieWidget({
    required this.lottie,
    super.key,
    this.fit,
    this.height,
    this.width,
    this.color,
  });

  final String lottie;
  final BoxFit? fit;
  final double? height;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return color != null
        ? ColorFiltered(
            colorFilter: ColorFilter.mode(color!, BlendMode.srcIn),
            child: LottieBuilder.asset(
              toLottie,
              fit: fit ?? BoxFit.none,
              width: width,
              height: height,
            ),
          )
        : LottieBuilder.asset(
            toLottie,
            fit: fit ?? BoxFit.none,
            width: width,
            height: height,
          );
  }

  String get toLottie => AppAssetsType.lottie.basePath + lottie + AppAssetsType.lottie.format;
}
