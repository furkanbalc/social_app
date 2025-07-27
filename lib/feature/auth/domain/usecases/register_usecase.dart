import 'package:social_app/core/usecase/base_usecase.dart';
import 'package:social_app/feature/auth/domain/entities/auth_result_entity.dart';
import 'package:social_app/feature/auth/domain/repositories/auth_repository.dart';

class ParamsForRegister {
  final String username;
  final String email;
  final String password;

  ParamsForRegister({
    required this.username,
    required this.email,
    required this.password,
  });
}

class RegisterUsecase extends BaseUseCase<Future<AuthResultEntity>, ParamsForRegister> {
  final AuthRepository authRepository;

  RegisterUsecase({required this.authRepository});

  @override
  Future<AuthResultEntity> execute(ParamsForRegister params) async {
    return await authRepository.register(
      username: params.username,
      email: params.email,
      password: params.password,
    );
  }
}
