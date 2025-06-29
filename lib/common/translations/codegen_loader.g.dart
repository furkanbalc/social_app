// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _tr = {
  "hello_world": "Merhaba Dünya!",
  "onboard": {
    "skip": "Geç",
    "continue": "Devam Et",
    "title_1": "Bağlantılarınızın",
    "title_2": "Kalabalığın en iyi kısa",
    "title_3": "Bağlantı kurmak için",
    "sub_title_1": "Neler Paylaştığını Görün",
    "sub_title_2": "Videolarını Keşfedin",
    "sub_title_3": "Profilleri Keşfedin",
    "desc_1": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
    "desc_2": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
    "desc_3": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt"
  },
  "validator": {
    "field_cannot_be_empty": "Bu alan boş geçilemez!",
    "upper_case_validator": "En az bir büyük harf içermelidir(A-Z)",
    "digit_validator": "En az bir rakam harf içermelidir(0-9)",
    "special_char_validator": "En az bir özel karakter içermelidir(!@#%^&*(),.?\":{}|<>+-)",
    "email_not_null": "E-posta boş olamaz!",
    "invalid_email": "Geçersiz e-posta adresi!",
    "password_not_null": "Şifre boş olamaz!",
    "password_min_character": "Şifre en az 6 karakter içermelidir!",
    "passwords_same": "Şifreler aynı olmalıdır!",
    "surname_is_not_empty": "Ad boş olamaz!",
    "name_is_not_empty": "Soyad boş olamaz!",
    "name_only_string": "Ad sadece harf içermelidir!",
    "sur_name_only_string": "Ad sadece harf içermelidir!",
    "min_character": "En az 3 karakter içermelidir!",
    "phone_number_is_not_empty": "Telefon numarası boş olamaz!",
    "phone_number_is_too_short": "Telefon numarası çok kısa!",
    "invalid_phone_number": "Geçersiz telefon numarası!"
  }
};
static const Map<String,dynamic> _en = {
  "hello_world": "Hello World!",
  "onboard": {
    "skip": "Skip",
    "continue": "Continue",
    "title_1": "See What Your Connections",
    "title_2": "Discover the Best Short Videos",
    "title_3": "Explore Profiles",
    "sub_title_1": "Are Sharing",
    "sub_title_2": "from the Crowd",
    "sub_title_3": "for Making Connections",
    "desc_1": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
    "desc_2": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
    "desc_3": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt"
  },
  "validator": {
    "field_cannot_be_empty": "This field cannot be empty!",
    "upper_case_validator": "Must contain at least one uppercase letter (A-Z)",
    "digit_validator": "Must contain at least one digit (0-9)",
    "special_char_validator": "Must contain at least one special character (!@#%^&*(),.?\":{}|<>+-)",
    "email_not_null": "Email cannot be empty!",
    "invalid_email": "Invalid email address!",
    "password_not_null": "Password cannot be empty!",
    "password_min_character": "Password must contain at least 6 characters!",
    "passwords_same": "Passwords must match!",
    "surname_is_not_empty": "Surname cannot be empty!",
    "name_is_not_empty": "Name cannot be empty!",
    "name_only_string": "Name must contain only letters!",
    "sur_name_only_string": "Surname must contain only letters!",
    "min_character": "Must contain at least 3 characters!",
    "phone_number_is_not_empty": "Phone number must contain at least 6 characters!",
    "phone_number_is_too_short": "Phone number is too short!",
    "phone_number_is_too_long": "Phone number is too long!\n Enter without '0' at the beginning",
    "invalid_phone_number": "Invalid phone number!"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"tr": _tr, "en": _en};
}
