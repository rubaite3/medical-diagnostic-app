import 'package:flutter/material.dart';
import 'package:medical_diagnostic_app1/core/navigation/app_router.dart';
import 'package:medical_diagnostic_app1/core/theme/central_theme.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/forgot_password_screen.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/login_screen.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/reset_password_screen.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/sign_up_screen.dart';
import 'package:medical_diagnostic_app1/features/auth/view/screens/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Medical_Diagnostic_App',
      theme: CentralTheme.lightTheme,
      darkTheme: CentralTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
