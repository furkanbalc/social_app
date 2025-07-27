part of '../views/onboard.dart';

class _PageIndicator extends StatelessWidget {
  const _PageIndicator({required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: OnBoardingItems().onBoarditems.length,
      effect: const ExpandingDotsEffect(
        spacing: AppSizes.low1,
        activeDotColor: AppColors.rawSunset,
        dotColor: AppColors.greyLight,
        dotWidth: AppSizes.low3,
        dotHeight: AppSizes.low3,
      ),
    );
  }
}
