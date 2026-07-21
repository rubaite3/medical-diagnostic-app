import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:medical_diagnostic_app1/core/enums/enums.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/auth_repo.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/password/forget_password_request.dart';

import '../../../../core/controllers/loader_cubit/loader_cubit.dart';

part 'forgot_pass_state.dart';
part 'forgot_pass_cubit.freezed.dart';

class ForgotPassCubit extends Cubit<ForgotPassState> {
  ForgotPassCubit() : super(ForgotPassState.initial());

  Future<void> sendOTP(ForgetPasswordRequest forgetPasswordRequest) async {
    GetIt.instance<LoaderCubit>().show();

    final response = await _authRepo.forgotPassword(forgetPasswordRequest);

    switch (response) {
      case Right():
        {
          emit(
            state.copyWith(
              message: "Check your email for OTP",
              op: Operation.success,
            ),
          );
          emit(state.copyWith(message: "", op: Operation.neutral));
        }
      case Left(value: final l):
        {
          emit(state.copyWith(message: l.errorMessage, op: Operation.failure));
          emit(state.copyWith(message: "", op: Operation.neutral));
        }
    }

    GetIt.instance<LoaderCubit>().hide();
  }

  final _authRepo = AuthRepo();
}
