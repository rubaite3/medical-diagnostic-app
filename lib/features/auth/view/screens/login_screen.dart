import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/features/auth/controllers/auth_bloc/auth_bloc.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/general/login_request.dart';
import '../../../../core/consts/strings.dart';
import '../../../../core/enums/enums.dart';
import '../../../../core/utils/utils.dart';
import '../widgets/auth_logo.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';
import '../widgets/google_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                  const SizedBox(height: 20),
                  const AuthLogo(),
                  const SizedBox(height: 30),
                  const Text(
                    AuthStrings.loginTitle,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  BlocListener<AuthBloc, AuthState>(
                    listener: (context, state) {
                      Utils.showToast(
                        context,
                        level: Utils.mapOp(state.op),
                        message: state.statusMessage,
                      );
                      if (state.op.isSuccess) {
                        context.goNamed(RoutePaths.home);
                      }
                    },
                    listenWhen: (previous, current) =>
                        (current.op != Operation.neutral),
                    child: const SizedBox(height: 8),
                  ),
                  const Text(
                    AuthStrings.loginSubTitle,
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 35),
                  CustomTextField(
                    validator: (value) => value!.isEmpty
                        ? "Email must not be empty"
                        : Utils.isEmail(value)
                        ? null
                        : "Invalid Email format",
                    controller: _emailController,
                    hintText: AuthStrings.hintEmail,
                    prefixIcon: Icons.email_outlined,
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    validator: (value) =>
                        value!.isEmpty ? "Password must not be empty" : null,
                    controller: _passwordController,
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
                      if (_formKey.currentState!.validate()) {
                        context.read<AuthBloc>().add(
                          AuthEvent.login(
                            LoginRequest(
                              email: _emailController.text,
                              password: _passwordController.text,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 24),

                  Row(
                    children: [
                      Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(AuthStrings.orContinueWith),
                      ),
                      Expanded(child: Divider()),
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
        ),
      ),
    );
  }

  final _formKey = GlobalKey<FormState>();
}
