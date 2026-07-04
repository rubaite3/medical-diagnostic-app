import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:medical_diagnostic_app1/core/dependencies/service_locator.dart';
import 'package:medical_diagnostic_app1/core/controllers/loader_cubit.dart';
import 'package:medical_diagnostic_app1/core/navigation/app_router.dart';
import 'package:medical_diagnostic_app1/core/theme/central_theme.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';
import 'package:medical_diagnostic_app1/core/widgets/loading_overlay.dart';
import 'package:medical_diagnostic_app1/features/auth/controllers/auth_bloc/auth_bloc.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: GetIt.instance<LoaderCubit>()),
        BlocProvider.value(value: GetIt.instance<AuthBloc>()),
      ],
      child: MaterialApp.router(
        title: 'Medical_Diagnostic_App',
        theme: CentralTheme.lightTheme,
        darkTheme: CentralTheme.darkTheme,
        themeMode: ThemeMode.system,
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return BlocListener<AuthBloc, AuthState>(
            listenWhen: (previous, current) =>
                !current.op.isNeutral &&
                ((!current.isOnline) ||
                    (!previous.isOnline && current.isOnline) ||
                    ((previous.auth.isAuth) && (current.auth.isGuest))),
            listener: (context, state) {
              Utils.showToast(
                context,
                message: state.statusMessage,
                level: Utils.mapOp(state.op),
              );
            },
            child: Stack(
              children: [
                ?child,
                BlocBuilder<LoaderCubit, bool>(
                  builder: (context, isLoading) =>
                      LoadingOverlay(isLoading: isLoading),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
