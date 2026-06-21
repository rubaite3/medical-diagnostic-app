import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/consts/strings.dart';
import '../widgets/auth_logo.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';
import '../widgets/google_button.dart'; 

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const AuthLogo(),
              const SizedBox(height: 30),
              const Text(
                AuthStrings.loginTitle,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                AuthStrings.loginSubTitle,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 35),
              const CustomTextField(
                hintText: AuthStrings.hintEmail,
                prefixIcon: Icons.email_outlined,
              ),
              const SizedBox(height: 16),
              const CustomTextField(
                hintText: AuthStrings.hintPassword,
                prefixIcon: Icons.vpn_key_outlined,
                isPassword: true,
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  context.pushNamed(RoutePaths.forgotPass);
                },
                child: const Text(
                  AuthStrings.forgotPasswordLink,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: AuthStrings.loginBtn,
                onPressed: () {
                  print("Perform Login action");
                },
              ),
              const SizedBox(height: 24),

            
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.black.withOpacity(0.1))),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      AuthStrings.orContinueWith,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.black.withOpacity(0.4),
                      ),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.black.withOpacity(0.1))),
                ],
              ),
              const SizedBox(height: 24),
   GoogleButton(
                onTap: () {
                  print("Google Login Triggered");
                },
              ),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    AuthStrings.dontHaveAccount,
                    style: TextStyle(fontSize: 15),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.goNamed(RoutePaths.signUp);
                    },
                    child: const Text(
                      AuthStrings.signUpLink,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}