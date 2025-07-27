import 'package:social_app/feature/auth/data/models/auth_result_model.dart';

abstract class AuthRemoteDatasource {
  /// Register function
  Future<AuthResultModel> register({
    required String username,
    required String email,
    required String password,
  });

  /// Login function
  Future<AuthResultModel> login({
    required String email,
    required String password,
  });
}
