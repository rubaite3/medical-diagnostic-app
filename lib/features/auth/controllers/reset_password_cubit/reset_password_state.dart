part of 'reset_password_cubit.dart';

@freezed
sealed class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    required Operation op,
    required String message,
  }) = _ResetPasswordState;
  factory ResetPasswordState.initial() {
    return ResetPasswordState(op: Operation.neutral, message: "");
  }
}
