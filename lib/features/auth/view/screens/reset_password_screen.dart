import 'package:flutter/material.dart';
import '../../../../core/consts/strings.dart';
import '../widgets/auth_logo.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                AuthStrings.resetTitle,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  // color: AppColors.textDark,
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  AuthStrings.resetSubTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 15,
                    // color: AppColors.textSecondary,
                    height: 1.4,
                  ),
                ),
              ),
              const SizedBox(height: 35),
              const CustomTextField(
                hintText: AuthStrings.hintNewPassword,
                prefixIcon: Icons.vpn_key_outlined,
                isPassword: true,
              ),
              const SizedBox(height: 16),
              const CustomTextField(
                hintText: AuthStrings.hintConfirmPassword,
                prefixIcon: Icons.vpn_key_outlined,
                isPassword: true,
              ),
              const SizedBox(height: 35),
              CustomButton(
                text: AuthStrings.updatePasswordBtn,
                onPressed: () {
                  print("Perform Update Password Action");
                },
              ),
              const SizedBox(height: 24),
              const Text(
                AuthStrings.successMessage,
                style: TextStyle(
                  fontSize: 15,
                  // color: AppColors.textDark,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
