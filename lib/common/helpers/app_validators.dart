import 'package:easy_localization/easy_localization.dart';
import 'package:social_app/common/translations/locale_keys.g.dart';

class AppValidators {
  AppValidators._();

  /// EMPTY VALIDATOR
  static String? emptyValidator(String? value) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.validator_field_cannot_be_empty.tr();
    }
    return null;
  }

  /// EMAIL VALIDATOR
  static String? emailValidator(String? email) {
    if (email == null || email.isEmpty) {
      return LocaleKeys.validator_email_not_null.tr();
    }
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(email)) {
      return LocaleKeys.validator_invalid_email.tr();
    }
    return null;
  }

  /// PASSWORD VALIDATOR
  static String? passwordValidator({required String? pass, required String? confirmPass}) {
    if (pass == null || pass.isEmpty) {
      return LocaleKeys.validator_password_not_null.tr();
    }
    if (pass.length < 6) {
      return LocaleKeys.validator_password_min_character.tr();
    }

    bool containsUppercase = RegExp(r'[A-Z]').hasMatch(pass);
    bool containsSpecialChar = RegExp(r'[!@#$%^&*(),.?":{}|<>+-]').hasMatch(pass);
    bool containsDigit = RegExp(r'\d').hasMatch(pass);

    if (!containsUppercase && !containsSpecialChar && !containsDigit) {
      return '${LocaleKeys.validator_upper_case_validator.tr()}\n${LocaleKeys.validator_special_char_validator.tr()}\n${LocaleKeys.validator_digit_validator.tr()}\n';
    } else if (!containsUppercase && !containsSpecialChar) {
      return '${LocaleKeys.validator_upper_case_validator.tr()}\n${LocaleKeys.validator_special_char_validator.tr()}\n';
    } else if (!containsUppercase && !containsDigit) {
      return '${LocaleKeys.validator_upper_case_validator.tr()}\n${LocaleKeys.validator_special_char_validator.tr()}\n';
    } else if (!containsSpecialChar && !containsDigit) {
      return '${LocaleKeys.validator_special_char_validator.tr()}\n${LocaleKeys.validator_digit_validator.tr()}\n';
    } else if (!containsUppercase) {
      return LocaleKeys.validator_upper_case_validator.tr();
    } else if (!containsSpecialChar) {
      return LocaleKeys.validator_special_char_validator.tr();
    } else if (!containsDigit) {
      return LocaleKeys.validator_digit_validator.tr();
    }
    return null;
  }

  /// VERIFY PASSWORD VALIDATOR
  static String? confirmPasswordValidator({required String? pass, required String? confirmPass}) {
    if (pass == null || pass.isEmpty) {
      return LocaleKeys.validator_password_not_null.tr();
    }
    if (pass != confirmPass) {
      return LocaleKeys.validator_passwords_same.tr();
    }
    return null;
  }

  /// LOGIN PASSWORD VALIDATOR
  static String? loginPasswordValidator(String? pass) {
    if (pass == null || pass.isEmpty) {
      return LocaleKeys.validator_password_not_null.tr();
    }
    if (pass.length < 6) {
      return LocaleKeys.validator_password_min_character.tr();
    }
    return null;
  }

  /// USER INFO NAME VALIDATOR
  static String? nameValidator(String? name) {
    if (name == null || name.isEmpty) {
      return LocaleKeys.validator_name_is_not_empty.tr();
    }
    if (name.length <= 3) {
      return LocaleKeys.validator_min_character.tr();
    }
    final RegExp regex = RegExp(r'^[a-zA-ZğĞüÜşŞıİöÖçÇ\s]+$');
    if (!regex.hasMatch(name.trim())) {
      return LocaleKeys.validator_name_only_string.tr();
    }
    return null;
  }

  /// PHONE NUMBER VALIDATOR
  static String? phoneNumberValidator(String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      return LocaleKeys.validator_phone_number_is_not_empty.tr();
    }
    if (phoneNumber.length < 10) {
      return LocaleKeys.validator_phone_number_is_too_short.tr();
    }
    if (!RegExp(r'^[0-9\s]+$').hasMatch(phoneNumber)) {
      return LocaleKeys.validator_invalid_phone_number.tr();
    }
    return null;
  }
}
