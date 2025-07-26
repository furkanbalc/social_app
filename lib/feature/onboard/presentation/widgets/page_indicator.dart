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
        activeDotColor: AppColors.rawSunset,
        dotColor: AppColors.greyLight,
        dotWidth: 12,
        dotHeight: 12,
      ),
    );
  }
}
