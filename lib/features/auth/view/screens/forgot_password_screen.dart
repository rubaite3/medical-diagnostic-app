import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/features/auth/controllers/forgot_pass_cubit/forgot_pass_cubit.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/password/forget_password_request.dart';
import 'package:medical_diagnostic_app1/generated/l10n.dart';
import '../../../../core/widgets/language_dropdown.dart';

import '../../../../core/utils/utils.dart';
import '../widgets/auth_logo.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [LanguageDropdown()]),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const AuthLogo(),
              const SizedBox(height: 40),
              Text(
                S.of(context).forgotTitle,
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
                  S.of(context).forgotSubtitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 15,
                    // color: AppColors.textSecondary,
                    height: 1.4,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Form(
                key: _formKey,
                child: CustomTextField(
                  keyboardType: TextInputType.emailAddress,

                  validator: (value) => value!.isEmpty
                      ? "Email must not be empty"
                      : Utils.isEmail(value.trim())
                      ? null
                      : "Invalid Email format",
                  controller: _emailController,
                  hintText: S.of(context).hintEmail,
                  prefixIcon: Icons.email_outlined,
                ),
              ),
              BlocListener<ForgotPassCubit, ForgotPassState>(
                listenWhen: (previous, current) => !current.op.isNeutral,
                listener: (context, state) {
                  Utils.showToast(
                    context,
                    message: state.message,
                    level: Utils.mapOp(state.op),
                  );
                  if (state.op.isSuccess) {
                    context.pushNamed(
                      RoutePaths.emailVerification,
                      queryParameters: {
                        'email': _emailController.text.trim(),
                        'isPass': '1',
                      },
                    );
                  }
                },
                bloc: _forgotPassCubit,
                child: const SizedBox(height: 40),
              ),
              CustomButton(
                text: S.of(context).sendResetOtpBtn,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _forgotPassCubit.sendOTP(
                      ForgetPasswordRequest(email: _emailController.text),
                    );
                  }
                },
              ),
              const SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Text(
                  S.of(context).backToLogin,
                  style: TextStyle(
                    fontSize: 16,
                    // color: AppColors.textSecondary,
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

  final _forgotPassCubit = ForgotPassCubit();
}
