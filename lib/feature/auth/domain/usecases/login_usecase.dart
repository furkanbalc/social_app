import 'package:social_app/core/usecase/base_usecase.dart';
import 'package:social_app/feature/auth/domain/entities/auth_result_entity.dart';
import 'package:social_app/feature/auth/domain/repositories/auth_repository.dart';

class ParamsForLogin {
  final String email;
  final String password;

  ParamsForLogin({
    required this.email,
    required this.password,
  });
}

class LoginUsecase extends BaseUseCase<Future<AuthResultEntity>, ParamsForLogin> {
  final AuthRepository authRepository;

  LoginUsecase({required this.authRepository});

  @override
  Future<AuthResultEntity> execute(ParamsForLogin params) async {
    return await authRepository.login(
      email: params.email,
      password: params.password,
    );
  }
}
