import 'package:equatable/equatable.dart';
import 'package:social_app/feature/auth/domain/entities/app_user_entity.dart';

abstract class AuthResultEntity extends Equatable {
  final bool isSuccess;

  const AuthResultEntity({
    required this.isSuccess,
  });

  @override
  List<Object?> get props => [isSuccess];
}

class AuthSuccessEntity extends AuthResultEntity {
  final String? token;
  final AppUserEntity? user;

  const AuthSuccessEntity({
    required super.isSuccess,
    required this.token,
    required this.user,
  });

  @override
  List<Object?> get props => [
        isSuccess,
        token,
        user,
      ];
}

class AuthErrorEntity extends AuthResultEntity {
  final String? message;

  const AuthErrorEntity({
    required super.isSuccess,
    required this.message,
  });

  @override
  List<Object?> get props => [
        isSuccess,
        message,
      ];
}
