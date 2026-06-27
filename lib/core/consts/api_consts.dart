class ApiConsts {
  static final yousefUrl =
      "https://deep-pangolin-normally.ngrok-free.app/api/v1";
  static final serverUrl = yousefUrl;

  // Auth
  static final authPrefix = "$serverUrl/auth";
  static final login = "$authPrefix/login";
  static final register = "$authPrefix/register";
  static final refreshToken = "$authPrefix/refresh";
  static final resendEmailVer = "$authPrefix/resend";
  static final forgetPassword = "$authPrefix/forget-password";
  static final logout = "$authPrefix/logout";

  // Profile
  static final profile = "$authPrefix/profile";
}
