import 'package:social_app/feature/auth/data/models/app_user.dart';
import 'package:social_app/feature/auth/domain/entities/auth_result_entity.dart';

abstract class AuthResultModel extends AuthResultEntity {
  const AuthResultModel({
    required super.isSuccess,
  });

  AuthResultEntity convertToEntity();
}

class AuthSuccessModel extends AuthResultModel {
  final String? token;
  final AppUser? user;

  const AuthSuccessModel({
    required super.isSuccess,
    required this.token,
    required this.user,
  });

  @override
  AuthResultEntity convertToEntity() {
    return AuthSuccessEntity(
      isSuccess: isSuccess,
      token: token,
      user: user?.convertToEntity(),
    );
  }
}

class AuthErrorModel extends AuthResultModel {
  final String? message;

  const AuthErrorModel({
    required super.isSuccess,
    required this.message,
  });

  @override
  AuthResultEntity convertToEntity() {
    return AuthErrorEntity(
      isSuccess: isSuccess,
      message: message,
    );
  }
}
