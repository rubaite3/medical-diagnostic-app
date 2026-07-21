import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:medical_diagnostic_app1/core/enums/enums.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/auth_repo.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/email_verification/resend_email_verification_request.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/email_verification/verify_email_request.dart';

import '../../../../core/controllers/loader_cubit/loader_cubit.dart';

part 'email_verification_state.dart';
part 'email_verification_cubit.freezed.dart';

class EmailVerificationCubit extends Cubit<EmailVerificationState> {
  EmailVerificationCubit(this._authRepo)
    : super(EmailVerificationState.initial());

  Future<void> verify(VerifyEmailRequest verifyEmailRequest) async {
    GetIt.instance<LoaderCubit>().show();

    final response = await _authRepo.verifyOTP(verifyEmailRequest);

    switch (response) {
      case Right():
        {
          emit(
            state.copyWith(
              message: "OTP verified successfully!",
              op: Operation.success,
            ),
          );
        }
      case Left(value: final l):
        {
          emit(state.copyWith(message: l.errorMessage, op: Operation.failure));
          emit(state.copyWith(message: "", op: Operation.neutral));
        }
    }

    GetIt.instance<LoaderCubit>().hide();
  }

  Future<void> resend(
    ResendEmailVerificationRequest resendEmailVerificationRequest,
  ) async {
    final response = await _authRepo.resendOTP(resendEmailVerificationRequest);

    switch (response) {
      case Right():
        {
          emit(state.copyWith(message: "OTP resent!", op: Operation.success));
          emit(state.copyWith(message: "", op: Operation.neutral));
        }
      case Left(value: final l):
        {
          emit(state.copyWith(message: l.errorMessage, op: Operation.failure));
          emit(state.copyWith(message: "", op: Operation.neutral));
        }
    }
  }

  final AuthRepo _authRepo;
}
