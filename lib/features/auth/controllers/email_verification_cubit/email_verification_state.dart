part of 'email_verification_cubit.dart';

@freezed
sealed class EmailVerificationState with _$EmailVerificationState {
  const factory EmailVerificationState({
    required Operation op,
    required String message,
  }) = _EmailVerificationState;
  factory EmailVerificationState.initial() {
    return EmailVerificationState(op: Operation.neutral, message: "");
  }
}
