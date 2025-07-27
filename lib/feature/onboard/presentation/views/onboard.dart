import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:social_app/common/helpers/app_states.dart';
import 'package:social_app/common/translations/locale_keys.g.dart';
import 'package:social_app/common/widgets/button/custom_elevated_button.dart';
import 'package:social_app/common/widgets/button/custom_text_button.dart';
import 'package:social_app/common/widgets/image/custom_png_widget.dart';
import 'package:social_app/common/widgets/text/custom_text.dart';
import 'package:social_app/core/assets/app_assets.dart';
import 'package:social_app/core/constants/app_colors.dart';
import 'package:social_app/core/constants/app_sizes.dart';
import 'package:social_app/core/extensions/context_padding.dart';
import 'package:social_app/core/extensions/context_size.dart';
import 'package:social_app/core/extensions/context_sizedbox.dart';
import 'package:social_app/core/extensions/context_text_style.dart';
import 'package:social_app/core/router/router.dart';
import 'package:social_app/feature/onboard/data/models/onboard_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';
part '../widgets/onboard_page_widget.dart';
part '../widgets/background_circle.dart';
part '../widgets/next_button.dart';
part '../widgets/onboard_clip_path_container.dart';
part '../widgets/onboard_image_widget.dart';
part '../widgets/page_indicator.dart';
part '../widgets/skip_button.dart';
part '../widgets/onboard_page_view.dart';

class OnboardView extends ConsumerStatefulWidget {
  const OnboardView({super.key});

  @override
  ConsumerState createState() => _OnboardViewState();
}

class _OnboardViewState extends ConsumerState<OnboardView> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

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
        /// Background Circle
        const _BackgroundCircle(),

        /// Onboard Page View
        _OnboardPageView(pageController: _pageController),

        /// Page Indicator and Next Button
        Positioned(
          bottom: AppSizes.low2,
          left: AppSizes.high3,
          right: AppSizes.high3,
          child: Column(
            children: [
              /// Page Indicator
              _PageIndicator(controller: _pageController),
              context.sizedBoxHeightLow2,

              /// Next Button
              _NextButton(pageController: _pageController),
            ],
          ),
        ),

        /// Skip Button
        _SkipButton(controller: _pageController),
      ],
    );
  }
}
