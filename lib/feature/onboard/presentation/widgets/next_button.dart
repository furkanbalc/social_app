part of '../views/onboard.dart';

class _NextButton extends ConsumerWidget {
  const _NextButton({required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.watch(onboardViewModelImp).currentPage;
    return CustomElevatedButton(
      backgroundColor: AppColors.rawSunset,
      textStyle: context.textStyles.bodyLarge.copyWith(color: AppColors.whiteColor),
      onPressed: () {
        if (currentPage == OnBoardingItems().onBoarditems.length - 1) {
          context.goNamed(AppRouteNames.home.name);
        } else {
          pageController.animateToPage(
            pageController.page!.toInt() + 1,
            duration: Durations.medium2,
            curve: Curves.easeInOut,
          );
        }
      },
      text: LocaleKeys.onboard_continue.tr(),
    );
  }
}
