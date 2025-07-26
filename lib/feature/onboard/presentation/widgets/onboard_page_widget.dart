part of '../views/onboard.dart';

class _OnboardPageWidget extends ConsumerStatefulWidget {
  const _OnboardPageWidget({required this.onBoardingModel});

  final OnBoardingModel onBoardingModel;

  @override
  ConsumerState createState() => _OnboardPageWidgetState();
}

class _OnboardPageWidgetState extends ConsumerState<_OnboardPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Onbard Image
        Positioned(
          top: AppSizes.high1 * 2,
          left: 0,
          right: 0,
          child: _OnboardImageWidget(img: widget.onBoardingModel.img),
        ),

        /// Onbard Bottom Widget
        Align(
          alignment: Alignment.bottomCenter,
          child: _OnboardClipPathContainer(onBoardingModel: widget.onBoardingModel),
        ),
      ],
    );
  }
}
