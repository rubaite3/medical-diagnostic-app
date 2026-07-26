part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({
    required Auth auth,
    required bool isOnline,
    User? user,
    String? token,
    @Default(false) bool isRecentlyLoggedIn,
    required Operation op,
    required String statusMessage,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
    statusMessage: "",
    auth: Auth.guest,
    isOnline: true,
    op: Operation.neutral,
  );

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
