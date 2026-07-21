import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/enums/enums.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';
import 'package:medical_diagnostic_app1/features/auth/controllers/auth_bloc/auth_bloc.dart';
import 'package:medical_diagnostic_app1/features/auth/controllers/terms_cubit/terms_cubit.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/general/register_request.dart';
import 'package:medical_diagnostic_app1/generated/l10n.dart';
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
  final _termsCubit = TermsCubit();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          context.goNamed(RoutePaths.onBoarding);
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 20.0,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 15),
                  const AuthLogo(),
                  const SizedBox(height: 25),
                  Text(
                    S.of(context).signUpTitle,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    S.of(context).signUpSubtitle,
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 30),
                  CustomTextField(
                    validator: (value) =>
                        value!.isEmpty ? "Name must not be empty" : null,
                    hintText: S.of(context).hintFullName,
                    prefixIcon: Icons.person_outline,
                    controller: _nameController,
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    validator: (value) => value!.isEmpty
                        ? "Email must not be empty"
                        : Utils.isEmail(value)
                        ? null
                        : "Wrong email format",
                    hintText: S.of(context).hintEmail,
                    prefixIcon: Icons.email_outlined,
                    controller: _emailController,
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    validator: (value) => value!.isEmpty
                        ? "Password must not be empty"
                        : value.trim().length < 7
                        ? "Password must be at least 8 chars"
                        : null,
                    hintText: S.of(context).hintPassword,
                    prefixIcon: Icons.vpn_key_outlined,
                    isPassword: true,
                    controller: _passController,
                  ),
                  const SizedBox(height: 16),

                  CustomTextField(
                    hintText: S.of(context).confirmPasswordHint,
                    prefixIcon: Icons.lock_reset_outlined,
                    isPassword: true,
                    controller: _passConfirmController,
                    validator: (value) {
                      return value!.isEmpty
                          ? "Password must not be empty"
                          : value == _passController.text
                          ? null
                          : "Passwords must match";
                    },
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
                          child: Text(
                            S.of(context).termsAgree,
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                  BlocListener<AuthBloc, AuthState>(
                    listener: (context, state) {
                      Utils.showToast(
                        context,
                        message: state.statusMessage,
                        level: Utils.mapOp(state.op),
                      );
                      if (state.op.isSuccess &&
                          !state.statusMessage.contains("Internet")) {
                        context.pushNamed(
                          RoutePaths.emailVerification,
                          queryParameters: {'email': state.user?.email ?? ""},
                        );
                      }
                    },
                    listenWhen: (previous, current) {
                      return (current.op != Operation.neutral);
                    },
                    child: const SizedBox(height: 20),
                  ),
                  CustomButton(
                    text: S.of(context).signUpBtn,
                    onPressed: () {
                      _register(context);
                    },
                  ),

                  // لا تحذفيه
                  if (false) _buildGoogle(context),

                  const SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        S.of(context).alreadyHaveAccount,
                        style: TextStyle(fontSize: 15),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.goNamed(RoutePaths.login);
                        },
                  child: Text(
                    S.of(context).loginLink,
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
        ),
      ),
    );
  }

  Column _buildGoogle(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),

        Row(
          children: [
            Expanded(child: Divider()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(S.of(context).orContinueWith),
            ),
            Expanded(child: Divider()),
          ],
        ),
        const SizedBox(height: 24),
        GoogleButton(
          onTap: () {
            print("Google Sign Up Triggered");
          },
        ),
      ],
    );
  }

  void _register(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
        AuthEvent.register(
          RegisterRequest(
            email: _emailController.text,
            name: _nameController.text,
            password: _passController.text,
            passwordConfirmation: _passController.text,
          ),
        ),
      );
    }
  }

  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _passConfirmController = TextEditingController();
  final _nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
}
