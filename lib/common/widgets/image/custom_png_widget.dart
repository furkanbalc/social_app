import 'package:flutter/material.dart';
import 'package:social_app/core/enums/app_assets_type.dart';

class CustomPngWidget extends StatelessWidget {
  const CustomPngWidget({
    required this.png,
    super.key,
    this.fit,
    this.color,
    this.width,
    this.height,
  });

  final String png;
  final BoxFit? fit;
  final Color? color;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      toPng,
      fit: fit ?? BoxFit.none,
      width: width,
      height: height,
      color: color,
    );
  }

  String get toPng => AppAssetsType.png.basePath + png + AppAssetsType.png.format;
}
