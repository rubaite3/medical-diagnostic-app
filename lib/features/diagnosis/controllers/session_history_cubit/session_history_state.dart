part of 'session_history_cubit.dart';

@freezed
sealed class SessionHistoryState with _$SessionHistoryState {
  const factory SessionHistoryState({
    required String statusMessage,
    required Operation op,
    required List<SessionHistoryItem> sessions,
  }) = _SessionHistoryState;

  factory SessionHistoryState.initial() {
    return SessionHistoryState(
      statusMessage: "",
      op: Operation.neutral,
      sessions: [],
    );
  }
}
