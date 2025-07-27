import 'package:flutter/material.dart';
import 'package:social_app/core/api_helper/api_response.dart';
import 'package:social_app/feature/auth/domain/entities/auth_result_entity.dart';

abstract class AuthViewModel extends ChangeNotifier {
  /// Register Response
  ApiResponse<AuthResultEntity> get registerResponse;

  /// Login Response
  ApiResponse<AuthResultEntity> get loginResponse;

  /// Register Response Setter
  set registerResponse(ApiResponse<AuthResultEntity> value);

  /// Login Response Setter
  set loginResponse(ApiResponse<AuthResultEntity> value);

  /// Register Function
  Future<void> register({
    required String username,
    required String email,
    required String password,
  });

  /// Login Function
  Future<void> login({
    required String email,
    required String password,
  });
}
