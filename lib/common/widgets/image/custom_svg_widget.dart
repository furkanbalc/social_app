import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/core/enums/app_assets_type.dart';

class CustomSvgWidget extends StatelessWidget {
  const CustomSvgWidget({
    required this.svg,
    super.key,
    this.fit,
    this.width,
    this.height,
    this.color,
  });

  final String svg;
  final BoxFit? fit;
  final Color? color;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      toSvg,
      width: width,
      height: height,
      fit: fit ?? BoxFit.none,
      colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
    );
  }

  String get toSvg => AppAssetsType.svg.basePath + svg + AppAssetsType.svg.format;
}
