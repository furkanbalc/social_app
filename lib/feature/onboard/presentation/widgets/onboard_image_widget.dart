part of '../views/onboard.dart';

class _OnboardImageWidget extends StatelessWidget {
  const _OnboardImageWidget({required this.img});

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
