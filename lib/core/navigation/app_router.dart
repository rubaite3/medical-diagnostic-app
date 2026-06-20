import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/forgot_password_screen.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/login_screen.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/on_boarding_screen.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/reset_password_screen.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/sign_up_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: RoutePaths.onBoarding,
    routes: [
      GoRoute(
        name: RoutePaths.onBoarding,
        path: RoutePaths.onBoarding,
        builder: (_, _) {
          return OnBoardingScreen();
        },
      ),
      GoRoute(
        name: RoutePaths.login,
        path: RoutePaths.login,
        builder: (_, _) {
          return LoginScreen();
        },
      ),
      GoRoute(
        name: RoutePaths.signUp,
        path: RoutePaths.signUp,
        builder: (_, _) {
          return SignUpScreen();
        },
      ),
      GoRoute(
        name: RoutePaths.forgotPass,
        path: RoutePaths.forgotPass,
        builder: (_, _) {
          return ForgotPasswordScreen();
        },
      ),
      GoRoute(
        name: RoutePaths.resetPass,
        path: RoutePaths.resetPass,
        builder: (_, _) {
          return ResetPasswordScreen();
        },
      ),
    ],
  );
}
