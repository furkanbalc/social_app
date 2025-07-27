import 'package:social_app/feature/auth/domain/entities/auth_result_entity.dart';

abstract class AuthRepository {
  /// Register function
  Future<AuthResultEntity> register({
    required String username,
    required String email,
    required String password,
  });
}
