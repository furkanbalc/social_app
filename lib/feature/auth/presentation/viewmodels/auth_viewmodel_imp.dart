import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:social_app/common/translations/locale_keys.g.dart';
import 'package:social_app/core/api_helper/api_response.dart';
import 'package:social_app/di/injection.dart';
import 'package:social_app/feature/auth/domain/entities/auth_result_entity.dart';
import 'package:social_app/feature/auth/domain/usecases/login_usecase.dart';
import 'package:social_app/feature/auth/domain/usecases/register_usecase.dart';
import 'package:social_app/feature/auth/presentation/viewmodels/auth_viewmodel.dart';

class AuthViewModelImp extends ChangeNotifier implements AuthViewModel {
  ApiResponse<AuthResultEntity> _registerResponse = ApiResponse.initial('initial');
  ApiResponse<AuthResultEntity> _loginResponse = ApiResponse.initial('initial');

  @override
  ApiResponse<AuthResultEntity> get registerResponse => _registerResponse;

  @override
  ApiResponse<AuthResultEntity> get loginResponse => _loginResponse;

  @override
  set registerResponse(ApiResponse<AuthResultEntity> value) {
    _registerResponse = value;
    notifyListeners();
  }

  @override
  set loginResponse(ApiResponse<AuthResultEntity> value) {
    _loginResponse = value;
    notifyListeners();
  }

  @override
  Future<void> register({
    required String username,
    required String email,
    required String password,
  }) async {
    registerResponse = ApiResponse.loading('loading');
    try {
      AuthResultEntity authResultEntity = await injector<RegisterUsecase>().execute(ParamsForRegister(
        username: username.trim(),
        email: email.trim(),
        password: password,
      ));
      registerResponse = ApiResponse.completed(authResultEntity);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        registerResponse = ApiResponse.error(LocaleKeys.messages_email_already_in_use.tr());
      }
    } catch (e) {
      registerResponse = ApiResponse.error(e.toString());
    }
  }

  @override
  Future<void> login({
    required String email,
    required String password,
  }) async {
    loginResponse = ApiResponse.loading("loading");
    try {
      AuthResultEntity authResultEntity = await injector<LoginUsecase>().execute(
        ParamsForLogin(email: email, password: password),
      );
      loginResponse = ApiResponse.completed(authResultEntity);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        loginResponse = ApiResponse.error(LocaleKeys.messages_user_not_found.tr());
      } else if (e.code == 'wrong-password') {
        loginResponse = ApiResponse.error(LocaleKeys.messages_wrong_password.tr());
      }
      loginResponse = ApiResponse.error(LocaleKeys.messages_wrong_email_or_password.tr());
    } catch (e) {
      loginResponse = ApiResponse.error(e.toString());
    }
  }
}
