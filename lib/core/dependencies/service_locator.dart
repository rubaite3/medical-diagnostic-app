import 'package:get_it/get_it.dart';
import 'package:medical_diagnostic_app1/features/auth/controllers/auth_bloc/auth_bloc.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/auth_repo.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_cubit.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/repos/diagnosis_repo.dart';

import '../controllers/loader_cubit/loader_cubit.dart';
import '../controllers/locale_cubit/locale_cubit.dart';

final _instance = GetIt.instance;

void initGetIt() {
  _instance.registerSingleton<LoaderCubit>(LoaderCubit());
  _instance.registerLazySingleton<AuthRepo>(() => AuthRepo());
  _instance.registerSingleton<AuthBloc>(
    AuthBloc(authRepo: _instance<AuthRepo>()),
  );
  _instance<AuthBloc>().add(AuthEvent.checkConnectivity());

  // Diagnosis
  _instance.registerLazySingleton<DiagnosisRepo>(() => DiagnosisRepo());
  _instance.registerLazySingleton<DiagnosisCubit>(
    () => DiagnosisCubit(repo: _instance<DiagnosisRepo>()),
  );
  _instance.registerSingleton<LocaleCubit>(LocaleCubit());
}
