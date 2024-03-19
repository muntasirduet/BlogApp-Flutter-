import 'package:firstapp/core/common/cubits/app_user/app_user_cubit.dart';
import 'package:firstapp/core/secrets/app_secrets.dart';
import 'package:firstapp/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:firstapp/features/auth/data/datasources/auth_remote_data_source_impl.dart';
import 'package:firstapp/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:firstapp/features/auth/domain/repository/auth_repository.dart';
import 'package:firstapp/features/auth/domain/usecases/current_user.dart';
import 'package:firstapp/features/auth/domain/usecases/user_login.dart';
import 'package:firstapp/features/auth/domain/usecases/user_sign_up.dart';
import 'package:firstapp/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final serviceLocator = GetIt.instance;
Future<void> initDependencies() async {
  _initAuth();
  final supabase = await Supabase.initialize(
    url: AppSecrets.supaBaseUrl,
    anonKey: AppSecrets.supaAnnoKey,
  );
  serviceLocator.registerLazySingleton(
    () => supabase.client,
  );
  serviceLocator.registerLazySingleton(
    () => AppUserCubit(),
  );
}

void _initAuth() {
  serviceLocator.registerFactory<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(
      serviceLocator(),
    ),
  );

  serviceLocator.registerFactory<AuthRepository>(
    () => AuthRepositoryImpl(
      serviceLocator(),
    ),
  );

  serviceLocator.registerFactory(
    () => UserSignUp(
      serviceLocator(),
    ),
  );
  serviceLocator.registerFactory(
    () => UserLogin(
      serviceLocator(),
    ),
  );
  serviceLocator.registerFactory(
    () => CurrentUser(
      serviceLocator(),
    ),
  );
  serviceLocator.registerLazySingleton(
    () => AuthBloc(
      userSignUp: serviceLocator(),
      userLogin: serviceLocator(),
      currentUser: serviceLocator(),
      appUserCubit: serviceLocator(),
    ),
  );
}
