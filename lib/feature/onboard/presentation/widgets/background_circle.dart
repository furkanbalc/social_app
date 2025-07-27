part of '../views/onboard.dart';

class _BackgroundCircle extends StatelessWidget {
  const _BackgroundCircle();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppSizes.high3 * 5,
      left: 0,
      right: 0,
      child: Container(
        width: context.dynamicWidth(),
        height: context.dynamicWidth(),
        decoration: BoxDecoration(
          color: AppColors.rawSunset.withOpacity(.1),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
