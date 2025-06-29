part of '../views/onboard.dart';

class _OnboardPageWidget extends ConsumerStatefulWidget {
  const _OnboardPageWidget({
    required this.pageController,
    required this.onBoardingModel,
  });

  final PageController pageController;
  final OnBoardingModel onBoardingModel;

  @override
  ConsumerState createState() => _OnboardPageWidgetState();
}

class _OnboardPageWidgetState extends ConsumerState<_OnboardPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: AppSizes.high1 * 2,
          left: 0,
          right: 0,
          child: OnboardImageWidget(img: widget.onBoardingModel.img),
        ),

        /// Onbard Bottom Widget
        Align(
          alignment: Alignment.bottomCenter,
          child: OnboardClipPathContainer(
            index: widget.onBoardingModel.index,
            title: widget.onBoardingModel.title,
            subTitle: widget.onBoardingModel.subTitle,
            desc: widget.onBoardingModel.desc,
          ),
        ),

        /// Skip Button
        Positioned(
          right: AppSizes.low2,
          top: AppSizes.low2,
          child: Visibility(
            visible: widget.onBoardingModel.index != OnBoardingItems().onBoarditems.length - 1,
            child: CustomTextButton(
              onPressed: () {
                widget.pageController.animateToPage(
                  OnBoardingItems().onBoarditems.length - 1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              text: LocaleKeys.onboard_skip.tr(),
            ),
          ),
        ),

        /// Next Button
        Positioned(
          bottom: AppSizes.low2,
          left: AppSizes.high3,
          right: AppSizes.high3,
          child: CustomElevatedButton(
            backgroundColor: AppColors.rawSunset,
            textStyle: context.textStyles.bodyLarge.copyWith(color: AppColors.whiteColor),
            onPressed: () {
              if (widget.onBoardingModel.index == OnBoardingItems().onBoarditems.length - 1) {
                context.goNamed(AppRouteNames.home.name);
              } else {
                widget.pageController.animateToPage(
                  widget.onBoardingModel.index + 1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            },
            text: LocaleKeys.onboard_continue.tr(),
          ),
        ),
      ],
    );
  }
}
