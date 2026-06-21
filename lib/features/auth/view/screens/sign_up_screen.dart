import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/features/auth/controllers/cubit/terms_cubit.dart';
import '../../../../core/consts/strings.dart';
import '../widgets/auth_logo.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';
import '../widgets/google_button.dart'; 
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
    final theme = Theme.of(context);

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

          
              const CustomTextField(
                hintText: AuthStrings.confirmPasswordHint,
                prefixIcon: Icons.lock_reset_outlined,
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
                      child: const Text(
                        AuthStrings.termsAgree,
                        style: TextStyle(fontSize: 14),
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
                  print("Google Sign Up Triggered");
                },
              ),
              const SizedBox(height: 30),

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