part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.connectivityToggeled(bool isOnline) =
      _ConnectivityToggeled;
  const factory AuthEvent.authToggeled(User? user) = _AuthToggeled;
  const factory AuthEvent.authLoading() = _AuthLoading;
  const factory AuthEvent.login(LoginRequest loginRequest) = _Login;
  const factory AuthEvent.logout() = _Logout;
  const factory AuthEvent.checkConnectivity() = _CheckConnectivity;
  const factory AuthEvent.register(RegisterRequest registerRequest) = _Register;
  const factory AuthEvent.refreshToken() = _RefreshToken;
  const factory AuthEvent.resendEmailVerify(
    ResendEmailVerificationRequest resendEmailVerificationRequest,
  ) = _ResendEmailVerification;
  const factory AuthEvent.forgotPass(
    ForgetPasswordRequest forgetPasswordRequest,
  ) = _ForgotPass;
  const factory AuthEvent.updateProfile(
    UpdateProfileRequest updateProfileRequest,
  ) = _UpdateProfile;

  const factory AuthEvent.getProfile() = _GetProfile;
}
