import 'package:get_it/get_it.dart';
import 'package:medical_diagnostic_app1/core/controllers/loader_cubit.dart';
import 'package:medical_diagnostic_app1/features/auth/controllers/auth_bloc/auth_bloc.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/auth_repo.dart';

final _instance = GetIt.instance;

void initGetIt() {
  _instance.registerSingleton<LoaderCubit>(LoaderCubit());
  _instance.registerLazySingleton<AuthRepo>(() => AuthRepo());
  _instance.registerSingleton<AuthBloc>(
    AuthBloc(authRepo: _instance<AuthRepo>()),
  );
}
