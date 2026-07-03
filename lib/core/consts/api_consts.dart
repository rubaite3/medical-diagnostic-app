class ApiConsts {
  static final yousefUrl = "https://deep-pangolin-normally.ngrok-free.app";
  static final rubaUrl = "https://----";
  static final serverUrl = yousefUrl;

  static final baseUrl = "$serverUrl/api/v1";

  // Auth
  static final authPrefix = "$baseUrl/auth";
  static final login = "$authPrefix/login";
  static final register = "$authPrefix/register";
  static final refreshToken = "$authPrefix/refresh";
  static final verifyOtp = "$authPrefix/verifyOtp";
  static final resendOtp = "$authPrefix/resendOtp";
  static final forgetPassword = "$authPrefix/forget-password";
  static final resetPassword = "$authPrefix/reset-password";
  static final logout = "$authPrefix/logout";
  static final checkAuth = "$authPrefix/check-auth";

  // Profile
  static final profile = "$authPrefix/profile";
}
