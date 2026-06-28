import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/email_verification_screen.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/forgot_password_screen.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/login_screen.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/on_boarding_screen.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/reset_password_screen.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/sign_up_screen.dart';
import 'package:medical_diagnostic_app1/features/home/view/screens/home_screen.dart';
import 'package:medical_diagnostic_app1/features/home/view/screens/patient_profile_screen.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    initialLocation: RoutePaths.onBoarding,
    navigatorKey: _rootNavigatorKey,
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

      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return MainWrapper(child: child);
        },
        routes: [
          GoRoute(
            name: RoutePaths.homeScreen,
            path: RoutePaths.homeScreen,
            builder: (_, _) => const HomeScreen(),
          ),
          GoRoute(
            name: RoutePaths.patientProfile,
            path: RoutePaths.patientProfile,
            builder: (_, _) => const PatientProfileScreen(),
          ),
        ],
      ),
    ],
  );
}

class MainWrapper extends StatelessWidget {
  final Widget child;
  const MainWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final String location = GoRouterState.of(context).uri.path;

    int selectedIndex = 0;
    if (location == RoutePaths.patientProfile) {
      selectedIndex = 1;
    }

    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          if (index == 0) context.goNamed(RoutePaths.homeScreen);
          if (index == 1) context.goNamed(RoutePaths.patientProfile);
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
