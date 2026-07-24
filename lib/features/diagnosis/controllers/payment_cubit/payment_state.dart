part of 'payment_cubit.dart';

@freezed
sealed class PaymentState with _$PaymentState {
  const factory PaymentState({
    required Operation op,
    required String sessionId,
    required String statusMessage,
    required String clientSecret,
  }) = _PaymentState;
  factory PaymentState.initial(String sessionId) {
    return PaymentState(
      sessionId: sessionId,
      op: Operation.neutral,
      statusMessage: "",
      clientSecret: "",
    );
  }
}
