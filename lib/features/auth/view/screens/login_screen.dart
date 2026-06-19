import 'package:flutter/material.dart';
import '../../../../core/consts/colors.dart';
import '../../../../core/consts/strings.dart';
import '../widgets/auth_logo.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              const SizedBox(height: 20),
              const AuthLogo(),
              const SizedBox(height: 30),
              const Text(
                AuthStrings.loginTitle,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textDark,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                AuthStrings.loginSubTitle,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textSecondary,
                ),
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
                  
                  print("Navigate to ForgotPasswordScreen");
                },
                child: const Text(
                  AuthStrings.forgotPasswordLink,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.medicalDark,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    AuthStrings.dontHaveAccount,
                    style: TextStyle(color: AppColors.textDark, fontSize: 15),
                  ),
                  GestureDetector(
                    onTap: () {
                     
                      print("Navigate to SignUpScreen");
                    },
                    child: const Text(
                      AuthStrings.signUpLink,
                      style: TextStyle(
                        color: AppColors.medicalDark,
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