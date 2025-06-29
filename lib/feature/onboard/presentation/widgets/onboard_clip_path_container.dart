import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:social_app/common/widgets/text/custom_text.dart';
import 'package:social_app/core/constants/constants.dart';
import 'package:social_app/core/extensions/extensions.dart';

class OnboardClipPathContainer extends StatefulWidget {
  const OnboardClipPathContainer({
    super.key,
    required this.index,
    required this.title,
    required this.subTitle,
    required this.desc,
  });
  final int index;
  final String title;
  final String subTitle;
  final String desc;

  @override
  State<OnboardClipPathContainer> createState() => _OnboardClipPathContainerState();
}

class _OnboardClipPathContainerState extends State<OnboardClipPathContainer> {
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
                text: '${widget.title} ',
                style: context.textStyles.headlineSmall.copyWith(
                  color: widget.index % 2 == 0 ? AppColors.rawSunset : AppColors.blackColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
              TextSpan(
                text: widget.subTitle,
                style: context.textStyles.headlineSmall.copyWith(
                  color: widget.index % 2 == 0 ? AppColors.blackColor : AppColors.rawSunset,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        context.sizedBoxHeightLow1,
        CustomText(
          widget.desc,
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
