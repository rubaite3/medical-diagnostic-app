import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/consts/strings.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/core/theme/colors.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/auth_repo.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/email_verification/resend_email_verification_request.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/email_verification/verify_email_request.dart';
import '../../controllers/email_verification_cubit/email_verification_cubit.dart';
import '../widgets/custom_button.dart';

class EmailVerificationScreen extends StatefulWidget {
  final String email;
  final bool isPass;

  const EmailVerificationScreen({
    super.key,
    required this.email,
    this.isPass = false,
  });

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  void initState() {
    super.initState();
    _startResendTimer(true);
  }

  void _startResendTimer(bool isInit) {
    if (!isInit) {
      _emailVerificationCubit.resend(
        ResendEmailVerificationRequest(email: widget.email),
      );
    }
    setState(() => _canResend = false);
    _secondsRemaining = 30;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining == 0) {
        timer.cancel();
        setState(() => _canResend = true);
      } else {
        setState(() => _secondsRemaining--);
      }
    });
  }

  void _onOtpChanged(int index, String value) {
    setState(() {
      _verifyButtonActivated = !_controllers.any(
        (element) => element.text.isEmpty,
      );
    });
    if (value.length == 1 && index < 5) {
      _focusNodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (var c in _controllers) {
      c.dispose();
    }
    for (var f in _focusNodes) {
      f.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: AppColors.medicalLight,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.email_rounded,
                  size: 40,
                  color: AppColors.medical,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                AuthStrings.otpTitle,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                AuthStrings.otpSubTitle,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: AppColors.medicalLight,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  widget.email,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColors.medicalDark,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(6, (index) {
                    return SizedBox(
                      width: 50,
                      height: 56,
                      child: TextField(
                        controller: _controllers[index],
                        focusNode: _focusNodes[index],
                        onChanged: (v) => _onOtpChanged(index, v),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),

                        decoration: InputDecoration(
                          counterText: '',
                          filled: true,
                          fillColor: AppColors.dotInactive.withAlpha(100),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: AppColors.medical,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 32),
              CustomButton(
                text: AuthStrings.otpBtn,
                onPressed: !_verifyButtonActivated
                    ? null
                    : () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        final code = _controllers.map((c) => c.text).join();
                        _emailVerificationCubit.verify(
                          VerifyEmailRequest(otp: code, email: widget.email),
                        );
                      },
              ),
              BlocListener<EmailVerificationCubit, EmailVerificationState>(
                bloc: _emailVerificationCubit,
                listener: (context, state) {
                  Utils.showToast(
                    context,
                    level: Utils.mapOp(state.op),
                    message: state.message,
                  );
                  if (state.message.contains("v")) {
                    if (widget.isPass) {
                      context.pushNamed(
                        RoutePaths.resetPass,
                        queryParameters: {'email': widget.email},
                      );
                    } else {
                      context.goNamed(RoutePaths.login);
                    }
                  }
                },
                listenWhen: (previous, current) => !current.op.isNeutral,
                child: const SizedBox(height: 24),
              ),
              GestureDetector(
                onTap: _canResend ? (() => _startResendTimer(false)) : null,
                child: Text(
                  _canResend
                      ? AuthStrings.otpResendActive
                      : '${AuthStrings.otpResend}$_secondsRemaining',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: _canResend
                        ? AppColors.medical
                        : AppColors.textSecondary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final _emailVerificationCubit = EmailVerificationCubit(AuthRepo());
  final List<TextEditingController> _controllers = List.generate(
    6,
    (_) => TextEditingController(),
  );
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());
  Timer? _timer;
  int _secondsRemaining = 30;
  bool _canResend = false;
  bool _verifyButtonActivated = false;
}
