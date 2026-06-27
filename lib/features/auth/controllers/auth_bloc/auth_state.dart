part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({
    required Auth auth,
    required bool isOnline,
    User? user,
  }) = _AuthState;
  factory AuthState.initial() => AuthState(auth: Auth.guest, isOnline: true);
}
