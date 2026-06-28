part of 'forgot_pass_cubit.dart';

@freezed
sealed class ForgotPassState with _$ForgotPassState {
  const factory ForgotPassState({
    required String message,
    required Operation op,
  }) = _ForgotPassState;
  factory ForgotPassState.initial() {
    return ForgotPassState(message: "", op: Operation.neutral);
  }
}
