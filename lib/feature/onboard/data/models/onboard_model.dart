import 'package:easy_localization/easy_localization.dart';
import 'package:social_app/common/translations/locale_keys.g.dart';
import 'package:social_app/core/assets/app_assets.dart';

class OnBoardingModel {
  final int index;
  final String title;
  final String subTitle;
  final String desc;
  final String img;

  OnBoardingModel({
    required this.index,
    required this.title,
    required this.subTitle,
    required this.desc,
    required this.img,
  });
}

class OnBoardingItems {
  late final List<OnBoardingModel> onBoarditems;

  OnBoardingItems() {
    onBoarditems = [
      OnBoardingModel(
        index: 0,
        img: AppAssets.png.phone,
        title: LocaleKeys.onboard_title_1.tr(),
        subTitle: LocaleKeys.onboard_sub_title_1.tr(),
        desc: LocaleKeys.onboard_desc_1.tr(),
      ),
      OnBoardingModel(
        index: 1,
        img: AppAssets.png.phone,
        title: LocaleKeys.onboard_title_2.tr(),
        subTitle: LocaleKeys.onboard_sub_title_2.tr(),
        desc: LocaleKeys.onboard_desc_2.tr(),
      ),
      OnBoardingModel(
        index: 2,
        img: AppAssets.png.phone,
        title: LocaleKeys.onboard_title_3.tr(),
        subTitle: LocaleKeys.onboard_sub_title_3.tr(),
        desc: LocaleKeys.onboard_desc_3.tr(),
      ),
    ];
  }
}
