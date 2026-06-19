import 'package:flutter/material.dart';
import '../../../../core/consts/colors.dart';
import '../../../../core/consts/strings.dart';
import '../widgets/auth_logo.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.authBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const AuthLogo(),
              const SizedBox(height: 40),
              const Text(
                AuthStrings.forgotTitle,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textDark,
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  AuthStrings.forgotSubTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 15,
                    color: AppColors.textSecondary,
                    height: 1.4,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const CustomTextField(
                hintText: AuthStrings.hintEmail,
                prefixIcon: Icons.email_outlined,
              ),
              const SizedBox(height: 40),
              CustomButton(
                text: AuthStrings.sendLinkBtn,
                onPressed: () {
                  print("Perform Send Reset Link Action");
                },
              ),
              const SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  print("Navigate Back to LoginScreen");
                },
                child: const Text(
                  AuthStrings.backToLogin,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.textSecondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}