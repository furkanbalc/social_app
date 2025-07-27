part of '../views/register.dart';

class _TermAndConditionWidget extends FormField<bool> {
  _TermAndConditionWidget()
      : super(
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
