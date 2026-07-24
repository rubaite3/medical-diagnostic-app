part of 'available_llms_cubit.dart';

@freezed
sealed class AvailableLlmsState with _$AvailableLlmsState {
  const factory AvailableLlmsState({
    required Operation op,
    required String message,
    required List<String> availableLLMs,
  }) = _AvailableLlmsState;
  factory AvailableLlmsState.initial() {
    return AvailableLlmsState(
      op: Operation.neutral,
      message: "",
      availableLLMs: [],
    );
  }
}
