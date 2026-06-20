import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/features/auth/controllers/cubit/terms_cubit.dart';
import '../../../../core/consts/strings.dart';
import '../widgets/auth_logo.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isAgreed = false;
  final _termsCubit = TermsCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              const AuthLogo(),
              const SizedBox(height: 25),
              const Text(
                AuthStrings.signUpTitle,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  // color: AppColors.textDark,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                AuthStrings.signUpSubTitle,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              CustomTextField(
                hintText: AuthStrings.hintFullName,
                prefixIcon: Icons.person_outline,
              ),
              const SizedBox(height: 16),
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
              const SizedBox(height: 16),
              Row(
                children: [
                  BlocBuilder<TermsCubit, TermsState>(
                    bloc: _termsCubit,
                    builder: (context, state) {
                      return Checkbox(
                        value: state.isChecked,
                        // activeColor: AppColors.medical,
                        onChanged: (value) {
                          _termsCubit.toggle();
                        },
                      );
                    },
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _termsCubit.toggle();
                      },
                      child: Text(
                        AuthStrings.termsAgree,
                        style: TextStyle(
                          fontSize: 14,
                          // color: AppColors.textSecondary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: AuthStrings.signUpBtn,
                onPressed: () {
                  print("Perform Sign Up action");
                },
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    AuthStrings.alreadyHaveAccount,
                    style: TextStyle(fontSize: 15),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.goNamed(RoutePaths.login);
                    },
                    child: const Text(
                      AuthStrings.loginLink,
                      style: TextStyle(
                        // color: AppColors.medicalDark,
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
