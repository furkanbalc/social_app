part of '../views/onboard.dart';

class _BackgroundCircle extends StatelessWidget {
  const _BackgroundCircle();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.dynamicWidth(),
      height: context.dynamicWidth(),
      decoration: BoxDecoration(
        color: AppColors.rawSunset.withOpacity(.1),
        shape: BoxShape.circle,
      ),
    );
  }
}
