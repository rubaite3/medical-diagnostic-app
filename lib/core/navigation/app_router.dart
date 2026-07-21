import "app_router_exports.dart";

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _homeNavigatorKey = GlobalKey<NavigatorState>();
  static final _patientProfileNavigatorKey = GlobalKey<NavigatorState>();
  static final _settingsNavigatorKey = GlobalKey<NavigatorState>();

  static const _publicRoutes = [
    RoutePaths.onBoarding,
    RoutePaths.login,
    RoutePaths.signUp,
    RoutePaths.forgotPass,
    RoutePaths.resetPass,
    RoutePaths.emailVerification,
    RoutePaths.tempSessionPreview,
  ];

  static bool _isPublic(String location) =>
      _publicRoutes.any((r) => location == r);

  static final router = GoRouter(
    initialLocation: RoutePaths.onBoarding,
    navigatorKey: _rootNavigatorKey,
    redirect: (context, state) {
      final authState = context.read<AuthBloc>().state;
      if (context.read<LoaderCubit>().state.isLoading) return null;

      final location = state.matchedLocation;

      if (authState.auth.isGuest) {
        if (!_isPublic(location)) return RoutePaths.login;
        return null;
      } else {
        if (_isPublic(location)) return RoutePaths.homeScreen;
        return null;
      }
    },
    routes: [
      // Auth Routes
      GoRoute(
        name: RoutePaths.onBoarding,
        path: RoutePaths.onBoarding,
        builder: (_, _) => const OnBoardingScreen(),
      ),
      GoRoute(
        name: RoutePaths.login,
        path: RoutePaths.login,
        builder: (_, _) => const LoginScreen(),
      ),
      GoRoute(
        name: RoutePaths.signUp,
        path: RoutePaths.signUp,
        builder: (_, _) => const SignUpScreen(),
      ),
      GoRoute(
        name: RoutePaths.forgotPass,
        path: RoutePaths.forgotPass,
        builder: (_, _) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        name: RoutePaths.resetPass,
        path: RoutePaths.resetPass,
        builder: (_, state) {
          final email = state.uri.queryParameters['email'] ?? "";
          return ResetPasswordScreen(email: email);
        },
      ),
      GoRoute(
        name: RoutePaths.emailVerification,
        path: RoutePaths.emailVerification,
        builder: (_, state) {
          final email = state.uri.queryParameters['email'] ?? '';
          final isPass =
              (int.tryParse(state.uri.queryParameters['isPass'] ?? '0') ?? 0) ==
              1;
          return EmailVerificationScreen(email: email, isPass: isPass);
        },
      ),

      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            MainWrapper(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            navigatorKey: _homeNavigatorKey,
            initialLocation: RoutePaths.homeScreen,
            routes: [
              GoRoute(
                name: RoutePaths.homeScreen,
                path: RoutePaths.homeScreen,
                builder: (context, state) => const HomeScreen(),
                routes: [
                  GoRoute(
                    name: RoutePaths.tempSessionPreview,
                    path: RoutePaths.tempSessionPreview,
                    builder: (context, state) =>
                        const TempSessionPreviewScreen(),
                  ),
                  GoRoute(
                    name: RoutePaths.notifications,
                    path: RoutePaths.notifications,
                    builder: (context, state) => const NotificationsScreen(),
                  ),
                  GoRoute(
                    name: RoutePaths.baselineGender,
                    path: RoutePaths.baselineGender,
                    builder: (context, state) => GenderSelectionScreen(),
                  ),
                  GoRoute(
                    name: RoutePaths.baselineOccupation,
                    path: RoutePaths.baselineOccupation,
                    builder: (context, state) => OccupationScreen(),
                  ),
                  GoRoute(
                    name: RoutePaths.baselineActivity,
                    path: RoutePaths.baselineActivity,
                    builder: (context, state) => ActivitySelectionScreen(),
                  ),
                  GoRoute(
                    name: RoutePaths.baselineSmoker,
                    path: RoutePaths.baselineSmoker,
                    builder: (context, state) => SmokerSelectionScreen(),
                  ),
                  GoRoute(
                    name: RoutePaths.baselineAlcohol,
                    path: RoutePaths.baselineAlcohol,
                    builder: (context, state) => AlcoholScreen(),
                  ),
                  GoRoute(
                    name: RoutePaths.baselineDiabetes,
                    path: RoutePaths.baselineDiabetes,
                    builder: (context, state) => DiabetesSelectionScreen(),
                  ),
                  GoRoute(
                    name: RoutePaths.baselineHypertension,
                    path: RoutePaths.baselineHypertension,
                    builder: (context, state) => HypertensionSelectionScreen(),
                  ),
                  GoRoute(
                    name: RoutePaths.baselinePregnant,
                    path: RoutePaths.baselinePregnant,
                    builder: (context, state) => PregnancySelectionScreen(),
                  ),
                  GoRoute(
                    name: RoutePaths.symptomSearch,
                    path: RoutePaths.symptomSearch,
                    builder: (context, state) => const SymptomSearchScreen(),
                  ),
                  GoRoute(
                    name: RoutePaths.symptomQuestions,
                    path: RoutePaths.symptomQuestions,
                    builder: (context, state) {
                      final symptoms = state.extra as List<Symptom>;
                      return SymptomQuestionsScreen(symptoms: symptoms);
                    },
                  ),
                  GoRoute(
                    name: RoutePaths.followUpQuestions,
                    path: RoutePaths.followUpQuestions,
                    builder: (context, state) =>
                        const FollowUpQuestionsScreen(),
                  ),
                  GoRoute(
                    name: RoutePaths.preliminaryResults,
                    path: RoutePaths.preliminaryResults,
                    builder: (context, state) => PreliminaryResultsScreen(),
                  ),
                  GoRoute(
                    name: RoutePaths.diagnosisPayment,
                    path: RoutePaths.diagnosisPayment,
                    builder: (context, state) => DiagnosisPaymentScreen(),
                  ),
                  GoRoute(
                    name: RoutePaths.fullReport,
                    path: RoutePaths.fullReport,
                    builder: (context, state) {
                      final sessionId =
                          state.uri.queryParameters['sessionId'] ?? "";
                      return FullReportScreen(sessionId: sessionId);
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _patientProfileNavigatorKey,
            initialLocation: RoutePaths.patientProfile,
            routes: [
              GoRoute(
                name: RoutePaths.patientProfile,
                path: RoutePaths.patientProfile,
                builder: (context, state) => const PatientProfileScreen(),
                routes: [
                  GoRoute(
                    name: RoutePaths.sessionHistory,
                    path: RoutePaths.sessionHistory,
                    builder: (context, state) => const SessionHistoryScreen(),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _settingsNavigatorKey,
            initialLocation: RoutePaths.settings,
            routes: [
              GoRoute(
                name: RoutePaths.settings,
                path: RoutePaths.settings,
                builder: (context, state) => const SettingsScreen(),
                routes: [
                  GoRoute(
                    name: RoutePaths.account,
                    path: 'account',
                    builder: (context, state) => const AccountScreen(),
                  ),
                  GoRoute(
                    name: RoutePaths.language,
                    path: 'language',
                    builder: (context, state) => const LanguageScreen(),
                  ),
                  GoRoute(
                    name: RoutePaths.appUpdates,
                    path: 'appUpdates',
                    builder: (context, state) => const AppUpdatesScreen(),
                  ),
                  GoRoute(
                    name: RoutePaths.aboutVitalia,
                    path: 'aboutVitalia',
                    builder: (context, state) => const AboutVitaliaScreen(),
                  ),
                  GoRoute(
                    name: RoutePaths.safetyInfo,
                    path: 'safetyInfo',
                    builder: (context, state) => const SafetyInfoScreen(),
                  ),
                  GoRoute(
                    path: 'webview',
                    builder: (context, state) {
                      final args = state.extra as Map<String, String>;
                      return WebViewScreen(
                        title: args['title']!,
                        url: args['url']!,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

class MainWrapper extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const MainWrapper({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: (index) {
          if (0 <= index && index < 3) {
            navigationShell.goBranch(index);
          }
        },
        selectedItemColor: colorScheme.primary,
        unselectedItemColor: colorScheme.onSurfaceVariant.withValues(
          alpha: 0.5,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: colorScheme.surface,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_filled),
            label: S.of(context).navHome,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_outline),
            label: S.of(context).navProfile,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings_outlined),
            label: S.of(context).navSettings,
          ),
        ],
      ),
    );
  }
}
