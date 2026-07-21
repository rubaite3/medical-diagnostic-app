import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/password/reset_password_request.dart';
import 'package:medical_diagnostic_app1/generated/l10n.dart';
import '../../controllers/reset_password_cubit/reset_password_cubit.dart';
import '../widgets/auth_logo.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class ResetPasswordScreen extends StatefulWidget {
  final String email;
  const ResetPasswordScreen({super.key, required this.email});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                const AuthLogo(),
                const SizedBox(height: 40),
              Text(
                S.of(context).resetTitle,
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
                    S.of(context).resetSubtitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      // color: AppColors.textSecondary,
                      height: 1.4,
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                CustomTextField(
                  textInputAction: TextInputAction.next,
                  validator: (value) => value!.isEmpty
                      ? "New Password must not be empty"
                      : value.length < 8
                      ? "Password must be 8 chars or more"
                      : null,
                  controller: _passwordController,
                  hintText: S.of(context).hintNewPassword,
                  prefixIcon: Icons.vpn_key_outlined,
                  isPassword: true,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  validator: (value) => value!.isEmpty
                      ? "Confirm Password must not be empty"
                      : value != _passwordController.text
                      ? "Passwords don't match"
                      : null,
                  controller: _confirmPasswordController,
                  hintText: S.of(context).hintConfirmPassword,
                  prefixIcon: Icons.vpn_key_outlined,
                  isPassword: true,
                ),
                const SizedBox(height: 35),
                CustomButton(
                  text: S.of(context).updatePasswordBtn,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _resetPasswordCubit.resetPass(
                        ResetPasswordRequest(
                          email: widget.email,
                          password: _passwordController.text,
                          passwordConfirmation: _confirmPasswordController.text,
                        ),
                      );
                    }
                  },
                ),
                BlocListener<ResetPasswordCubit, ResetPasswordState>(
                  bloc: _resetPasswordCubit,
                  listenWhen: (previous, current) => !current.op.isNeutral,
                  listener: (context, state) {
                    Utils.showToast(
                      context,
                      level: Utils.mapOp(state.op),
                      message: state.message,
                    );
                    if (state.op.isSuccess) {
                      context.goNamed(RoutePaths.login);
                    }
                  },
                  child: const SizedBox(height: 24),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final _resetPasswordCubit = ResetPasswordCubit();

  final _formKey = GlobalKey<FormState>();
}
