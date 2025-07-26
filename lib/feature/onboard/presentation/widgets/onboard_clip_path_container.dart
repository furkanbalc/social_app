part of '../views/onboard.dart';

class _OnboardClipPathContainer extends StatefulWidget {
  const _OnboardClipPathContainer({required this.onBoardingModel});
  final OnBoardingModel onBoardingModel;

  @override
  State<_OnboardClipPathContainer> createState() => _OnboardClipPathContainerState();
}

class _OnboardClipPathContainerState extends State<_OnboardClipPathContainer> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HalfMoonClipper(),
      child: Container(
        color: AppColors.cascadingWhite,
        width: context.dynamicWidth(),
        height: context.dynamicHeight(.45),
        child: Padding(
          padding: context.paddings.horizontalMedium2,
          child: _getTitleAndDescription(),
        ),
      ),
    );
  }

  /// Title And Description
  Widget _getTitleAndDescription() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: '${widget.onBoardingModel.title} ',
                style: context.textStyles.headlineSmall.copyWith(
                  color: widget.onBoardingModel.index % 2 == 0 ? AppColors.rawSunset : AppColors.blackColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
              TextSpan(
                text: widget.onBoardingModel.subTitle,
                style: context.textStyles.headlineSmall.copyWith(
                  color: widget.onBoardingModel.index % 2 == 0 ? AppColors.blackColor : AppColors.rawSunset,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        context.sizedBoxHeightLow1,
        CustomText(
          widget.onBoardingModel.desc,
          textAlign: TextAlign.center,
          style: context.textStyles.titleSmall.copyWith(
            color: AppColors.blackColor,
          ),
        ),
      ],
    );
  }
}

class HalfMoonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    path.quadraticBezierTo(size.width / 2, size.height / 4, 0, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
