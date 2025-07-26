import 'package:flutter/material.dart';
import 'package:social_app/common/translations/locale_keys.g.dart';
import 'package:social_app/common/widgets/button/custom_inkwell.dart';
import 'package:social_app/common/widgets/text/custom_text.dart';
import 'package:social_app/core/constants/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';

class TermAndConditionWidget extends FormField<bool> {
  TermAndConditionWidget({
    super.key,
  }) : super(
          initialValue: false,
          validator: (bool? value) => value == false ? '' : null,
          builder: (FormFieldState<bool> state) {
            return Row(
              children: [
                if (state.hasError) const Icon(Icons.error, color: Colors.red),
                Expanded(
                  child: Theme(
                    data: ThemeData(
                      unselectedWidgetColor: AppColors.transparentColor,
                      splashColor: AppColors.transparentColor,
                      highlightColor: AppColors.transparentColor,
                      hoverColor: AppColors.transparentColor,
                    ),
                    child: CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      checkColor: AppColors.whiteColor,
                      activeColor: AppColors.rawSunset,
                      title: Row(
                        children: [
                          CustomInkwell(
                            onTap: () {},
                            child: CustomText(
                              '${LocaleKeys.auth_registration_conditions.tr()} ',
                              style: const TextStyle(
                                fontSize: 12,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          CustomText(
                            LocaleKeys.auth_i_have_read.tr(),
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      value: state.value ?? false,
                      onChanged: state.didChange,
                    ),
                  ),
                ),
              ],
            );
          },
        );
}
