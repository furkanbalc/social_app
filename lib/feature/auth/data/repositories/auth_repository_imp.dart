import 'package:social_app/feature/auth/data/datasource/auth_remote_datasource.dart';
import 'package:social_app/feature/auth/data/models/auth_result_model.dart';
import 'package:social_app/feature/auth/domain/entities/auth_result_entity.dart';
import 'package:social_app/feature/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImp implements AuthRepository {
  AuthRepositoryImp({required this.authRemoteDatasource});

  final AuthRemoteDatasource authRemoteDatasource;

  @override
  Future<AuthResultEntity> register({
    required String username,
    required String email,
    required String password,
  }) async {
    final AuthResultModel authResultModel = await authRemoteDatasource.register(
      username: username,
      email: email,
      password: password,
    );
    return authResultModel.convertToEntity();
  }

  @override
  Future<AuthResultEntity> login({
    required String email,
    required String password,
  }) async {
    final AuthResultModel authResultModel = await authRemoteDatasource.login(
      email: email,
      password: password,
    );
    return authResultModel.convertToEntity();
  }
}
