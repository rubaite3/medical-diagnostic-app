import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/controllers/loader_cubit.dart';
import 'package:medical_diagnostic_app1/core/enums/enums.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';
import 'package:medical_diagnostic_app1/features/auth/controllers/auth_bloc/auth_bloc.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/email_verification_screen.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/forgot_password_screen.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/login_screen.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/on_boarding_screen.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/reset_password_screen.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/sign_up_screen.dart';
import 'package:medical_diagnostic_app1/features/auth/view/widgets/custom_button.dart';
import 'package:medical_diagnostic_app1/features/home/view/screens/home_screen.dart';
import 'package:medical_diagnostic_app1/features/home/view/screens/patient_profile_screen.dart';
import 'package:medical_diagnostic_app1/features/settings/view/screens/about_vitalia_screen.dart';
import 'package:medical_diagnostic_app1/features/settings/view/screens/account_screen.dart';
import 'package:medical_diagnostic_app1/features/settings/view/screens/app_updates_screen.dart';
import 'package:medical_diagnostic_app1/features/settings/view/screens/language_screen.dart';
import 'package:medical_diagnostic_app1/features/settings/view/screens/safety_info_screen.dart';
import 'package:medical_diagnostic_app1/features/settings/view/screens/settings_screen.dart';
import 'package:medical_diagnostic_app1/features/settings/view/screens/webview_screen.dart';

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
  ];

  static bool _isPublic(String location) =>
      _publicRoutes.any((r) => location == r);

  static final router = GoRouter(
    initialLocation: RoutePaths.onBoarding,
    navigatorKey: _rootNavigatorKey,
      refreshListenable: GoRouterRefreshStream(GetIt.instance<AuthBloc>().stream),
    redirect: (context, state) {
      final authState = context.read<AuthBloc>().state;
      if (context.read<LoaderCubit>().state) return null;

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
                builder: (context, state) => HomeScreen(),
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
                builder: (context, state) => PatientProfileScreen(),
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
        ), GoRoute(
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
      appBar: AppBar(), 
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
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen((dynamic _) => notifyListeners());
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
