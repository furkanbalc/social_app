import 'package:get_it/get_it.dart';
import 'package:social_app/feature/auth/data/datasource/auth_remote_datasource.dart';
import 'package:social_app/feature/auth/data/datasource/auth_remote_datasource_imp.dart';
import 'package:social_app/feature/auth/data/repositories/auth_repository_imp.dart';
import 'package:social_app/feature/auth/domain/usecases/register_usecase.dart';
import 'package:social_app/feature/auth/domain/repositories/auth_repository.dart';

GetIt injector = GetIt.instance;

reset() {
  injector.reset();
}

void initializeDependencies() async {
  /// Hive

  /// Remote Datasources
  injector.registerLazySingleton<AuthRemoteDatasource>(() => AuthRemoteDatasourceImp());

  /// Local

  /// Repository
  injector.registerLazySingleton<AuthRepository>(() => AuthRepositoryImp(authRemoteDatasource: injector()));

  /// UseCases
  injector.registerLazySingleton<RegisterUsecase>(() => RegisterUsecase(authRepository: injector()));
}
