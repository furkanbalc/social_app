import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_app/common/translations/locale_keys.g.dart';
import 'package:social_app/common/widgets/button/custom_elevated_button.dart';
import 'package:social_app/common/widgets/button/custom_text_button.dart';
import 'package:social_app/core/constants/app_colors.dart';
import 'package:social_app/core/constants/app_sizes.dart';
import 'package:social_app/core/extensions/context_size.dart';
import 'package:social_app/core/extensions/context_text_style.dart';
import 'package:social_app/core/router/router.dart';
import 'package:social_app/feature/onboard/data/models/onboard_model.dart';
import 'package:social_app/feature/onboard/presentation/widgets/onboard_clip_path_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:social_app/feature/onboard/presentation/widgets/onboard_image_widget.dart';

part '../widgets/onboard_page_widget.dart';
part '../widgets/background_circle.dart';

class OnboardView extends ConsumerStatefulWidget {
  const OnboardView({super.key});

  @override
  ConsumerState createState() => _OnboardViewState();
}

class _OnboardViewState extends ConsumerState<OnboardView> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _buildBody(context)),
    );
  }

  /// Body
  Widget _buildBody(BuildContext context) {
    return Stack(
      children: [
        _buildBackgroundCircle(),
        _buildPageView(),
      ],
    );
  }

  /// Background Circle
  Widget _buildBackgroundCircle() {
    return const Positioned(
      top: AppSizes.high3 * 5,
      left: 0,
      right: 0,
      child: _BackgroundCircle(),
    );
  }

  /// Page View
  Widget _buildPageView() {
    return PageView(
      controller: _pageController,
      onPageChanged: (index) {},
      children: List.generate(
        OnBoardingItems().onBoarditems.length,
        (index) => _OnboardPageWidget(
          pageController: _pageController,
          onBoardingModel: OnBoardingItems().onBoarditems[index],
        ),
      ),
    );
  }
}
