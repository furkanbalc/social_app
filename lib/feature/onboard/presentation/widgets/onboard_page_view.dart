part of '../views/onboard.dart';

class _OnboardPageView extends ConsumerWidget {
  const _OnboardPageView({required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onboardViewModel = ref.watch(onboardViewModelImp);
    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      onPageChanged: (index) {
        onboardViewModel.currentPage = index;
      },
      children: List.generate(
        OnBoardingItems().onBoarditems.length,
        (index) => _OnboardPageWidget(onBoardingModel: OnBoardingItems().onBoarditems[index]),
      ),
    );
  }
}
