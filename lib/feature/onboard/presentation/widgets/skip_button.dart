part of '../views/onboard.dart';

class _SkipButton extends ConsumerWidget {
  const _SkipButton({required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onboardViewModel = ref.watch(onboardViewModelImp);
    return Positioned(
      right: AppSizes.low2,
      top: AppSizes.low2,
      child: Visibility(
        visible: !onboardViewModel.isLastPage,
        child: CustomTextButton(
          onPressed: () {
            controller.animateToPage(
              OnBoardingItems().onBoarditems.length - 1,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
          text: LocaleKeys.onboard_skip.tr(),
        ),
      ),
    );
  }
}
