class ApiConsts {
  static final yousefUrl = "https://deep-pangolin-normally.ngrok-free.app";
  static final rubaUrl = "https://enjoyment-tiling-glandular.ngrok-free.dev";
  static final serverUrl =
      yousefUrl; // Change this to yousefUrl when you want to use the other server

  // Auth
  static final baseUrl = "$serverUrl/api/v1/auth";

  // Auth
  static final login = "$baseUrl/login";
  static final register = "$baseUrl/register";
  static final refreshToken = "$baseUrl/refresh";
  static final verifyOtp = "$baseUrl/verifyOtp";
  static final resendOtp = "$baseUrl/resendOtp";
  static final forgetPassword = "$baseUrl/forget-password";
  static final resetPassword = "$baseUrl/reset-password";
  static final logout = "$baseUrl/logout";
  static final checkAuth = "$baseUrl/check-auth";

  // Profile
  static final profile = "$baseUrl/profile";

  // Diagnosis
  static final diagnosisStart = "$baseUrl/diagnosis/start";
  static final diagnosisSearchSymptoms = "$baseUrl/symptoms";
  static final diagnosisSelectSymptoms = "$baseUrl/symptom/select";
  static final diagnosisFollowUpNext = "$baseUrl/follow-up/next";
  static final diagnosisFollowUpAnswer = "$baseUrl/follow-up/answer";
  static final diagnosisReport = "$baseUrl/reports";
  static final diagnosisHistory = "$baseUrl/diagnose/history";
}
