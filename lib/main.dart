import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:medical_diagnostic_app1/features/home/controllers/notifications_cubit/notifications_cubit.dart';

import 'core/services/cloudflare_provider.dart';
import "main_exports.dart";
import 'package:firebase_core/firebase_core.dart';
import 'package:medical_diagnostic_app1/core/consts/api_consts.dart';
import 'package:medical_diagnostic_app1/core/services/notification_service.dart';
import 'package:medical_diagnostic_app1/core/services/fcm_service.dart';
import 'package:medical_diagnostic_app1/core/services/stripe_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await Firebase.initializeApp();
  await NotificationService.instance.init();
  await FcmService.instance.init();
  await StripeService.instance.init(dotenv.get("STRIPE_KEY"));

  CloudflareProvider.init(
    accID: dotenv.get("CLOUDFLARE_ACCOUNT_ID"),
    apiK: dotenv.get("CLOUDFLARE_API_KEY"),
  );
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
        BlocProvider.value(value: GetIt.instance<DiagnosisCubit>()),
        BlocProvider.value(value: GetIt.instance<LocaleCubit>()),
        BlocProvider.value(value: GetIt.instance<NotificationsCubit>()),
      ],
      child: BlocBuilder<LocaleCubit, LocaleState>(
        builder: (context, state) => MaterialApp.router(
          locale: state.locale,
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          title: "Vitalia",
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
                  BlocConsumer<LoaderCubit, LoaderState>(
                    builder: (context, state) => !state.isLoading
                        ? SizedBox()
                        : LoadingOverlay(isLoading: state.isLoading),
                    listenWhen: (previous, current) => current.message != null,
                    listener: (BuildContext context, LoaderState state) {
                      Utils.showToast(context, message: state.message!);
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
