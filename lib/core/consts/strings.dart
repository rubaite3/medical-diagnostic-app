class OnboardingStrings {
  static const String title1 = "Smart AI Diagnosis";
  static const String desc1 =
      "Answer an intelligent questionnaire powered by AI to determine your symptoms accurately.";

  static const String title2 = "Connect with a Doctor";
  static const String desc2 =
      "Communicate directly with specialized doctors via phone calls or WhatsApp.";

  static const String title3 = "Comprehensive Medical Record";
  static const String desc3 =
      "View and download encoded diagnostic reports in PDF format for easy future reference.";

  static const String buttonText = "Continue";
}

class AuthStrings {
  // Login
  static const String loginTitle = "Welcome Back";
  static const String loginSubTitle = "Log in to your account";
  static const String loginBtn = "Login";
  static const String forgotPasswordLink = "Forgot Password?";
  static const String dontHaveAccount = "Don’t have an account? ";
  static const String signUpLink = "Sign Up";
  // Sign Up
  static const String signUpTitle = "Create Account";
  static const String signUpSubTitle = "Sign up to get started";
  static const String signUpBtn = "Sign Up";
  static const String alreadyHaveAccount = "Already have an account? ";
  static const String loginLink = "Login";
  static const String termsAgree = "I agree to the Terms & Privacy Policy";

  // Forgot Password
  static const String forgotTitle = "Forgot Password?";
  static const String forgotSubTitle =
      "Don’t worry! Enter your email below to receive a password reset OTP.";
  static const String sendLinkBtn = "Send Reset OTP";
  static const String backToLogin = "Back to Login";

  // Reset Password
  static const String resetTitle = "Reset Password";
  static const String resetSubTitle =
      "Enter your new password below and confirm it to update your account.";
  static const String updatePasswordBtn = "Update Password";
  static const String successMessage = "Reset link sent successfully.";

  // Email Verification OTP
  static const String otpTitle = "Verify Email";
  static const String otpSubTitle = "Enter the 6-digit code sent to";
  static const String otpBtn = "Verify";
  static const String otpResend = "Resend code in ";
  static const String otpResendActive = "Resend code";
  static const String otpSuccess = "Email verified successfully!";

  // Hints
  static const String hintFullName = "Full Name";
  static const String hintEmail = "Email Address";
  static const String hintPassword = "Password";
  static const String hintNewPassword = "New Password";
  static const String hintConfirmPassword = "Confirm New Password";
  // Auth Additional Strings
  static const String confirmPasswordHint = "Confirm Password";
  static const String orContinueWith = "Or continue with";
  static const String googleSignIn = "Google";
}

class PatientProfileStrings {
  static const String patientProfileTitle = " Medical Profile";
  static const String patientProfileSubtitle =
      "Please complete your medical info accurately";
  static const String birthDateHint = "Birth Date";
  static const String ageHint = "Age";
  static const String genderHint = "Gender";
  static const String activityLevelHint = "Activity Level";
  static const String smokerQuestion = "Are you a smoker?";
  static const String diabetesQuestion = "Do you have diabetes?";
  static const String hypertensionQuestion = "Do you have hypertension?";
  static const String pregnantQuestion = "Are you currently pregnant?";
  static const String saveProfileButton = "Save Medical Profile";
  static const String resetProfileButton = "Reset Medical Profile";
}

class HomeStrings {
  static const String welcome = "Welcome, ";
  static const String intro =
      "How are you feeling today? Let's start your health assessment.";
  static const String startAssessment = "Start Diagnosis";
  static const String navHome = "Home";
  static const String navProfile = "Profile";
  static const String navSettings = "Settings";
}
class SettingsStrings {
  static const String settingsTitle = "Settings";
  static const String accountSettings = "Account settings";
  static const String accountLogin = "Account login";
  static const String language = "Language";
  static const String support = "Support";
  static const String feedback = "Feedback";
  static const String appUpdates = "App Updates";
  static const String aboutVitalia = "About Vitalia";
  static const String safetyInfo = "Safety information";
  static const String logout = "Log out";
  static const String version = "Version 4.4.2 (2010356790)";

  // Account Screen
  static const String accountTitle = "Account";
  static const String signedUpWithGoogle = "You have signed up with Google:";
  static const String userIdLabel = "User ID:";
  static const String deleteAccount = "Delete your account and data";
  static const String deleteAccountConfirm = "Are you sure you want to delete your account?";

  // Language Screen
  static const String changeLanguage = "Change language";

  // App Updates Screen
  static const String updatesTitle = "Changes to your Vitalia app";
  static const String updatesDesc = "We've made a few updates to improve your experience and continue providing you with the best possible health assessment experience.";
  static const String whatIsNew = "What's new";
  static const String historyBack = "Your assessment history is back. You can now access your previous health assessments directly in the app.";
  static const String languagesAdded = "Romanian and Swahili are available again. You can now use the app in English, German, French, Spanish, Portuguese, Romanian or Swahili.";
  static const String questionsFeedback = "Questions or feedback?";
  static const String contactSupport = "We'd love to hear from you. Contact us at support@vitalia.com.";
  static const String readMore = "Read more";

}

  class DiagnosisStrings {
  // --- Baseline Step-by-Step ---
  static const String genderTitle = "What is your gender?";
  static const String genderSubtitle = "This helps us provide gender-specific medical analysis.";
  
  static const String activityTitle = "What is your activity level?";
  static const String activitySubtitle = "Select the option that best describes your daily movement.";
  
  static const String smokerTitle = "Do you smoke?";
  static const String smokerSubtitle = "Smoking status is a key factor in many health conditions.";
  
  static const String diabetesTitle = "Do you have diabetes?";
  static const String diabetesSubtitle = "Please indicate if you have been diagnosed with diabetes.";
  
  static const String hypertensionTitle = "Do you have hypertension?";
  static const String hypertensionSubtitle = "High blood pressure can affect various symptoms.";
  
  static const String pregnantTitle = "Are you pregnant?";
  static const String pregnantSubtitle = "Pregnancy changes how we evaluate certain symptoms.";

  static const String nextBtn = "Next";
  static const String finishBaselineBtn = "Start Assessment";

  // --- Symptom Search ---
  static const String symptomSearchTitle = "Select Your Symptoms";
  static const String symptomSearchSubtitle =
      "Search and add all symptoms you are currently experiencing.";
  static const String symptomSearchHint = "Search for a symptom...";
  static const String selectedSymptomsLabel = "Selected Symptoms";
  static const String noSymptomsFound = "No symptoms found. Try a different search.";
  static const String noSymptomsSelected = "No symptoms selected yet.";
  static const String continueBtn = "Continue";
  static const String addSymptomBtn = "Add";
  static const String removeSymptomBtn = "Remove";

  // --- Symptom Questions ---
  static const String symptomQuestionsTitle = "Symptom Details";
  static const String symptomQuestionsSubtitle =
      "Please answer the following questions about your symptom.";
  static const String nextSymptomBtn = "Next";
  static const String submitAnswersBtn = "Submit & Continue";

  // --- Follow-Up Questions ---
  static const String followUpTitle = "Follow-Up Questions";
  static const String followUpSubtitle =
      "Answer these questions to help us refine your diagnosis.";
  static const String followUpProgress = "Question";
  static const String submitFollowUpBtn = "Next";

  // --- Screen 6: Preliminary Results ---
  static const String preliminaryResultsTitle = "Preliminary Results";
  static const String preliminaryResultsSubtitle =
      "Based on your symptoms, here are the most probable conditions.";
  static const String probabilityLabel = "Probability";
  static const String viewFullReportBtn = "View Full Report";
  static const String startNewDiagnosisBtn = "Start New Diagnosis";

  // --- Screen 7: Payment ---
  static const String paymentTitle = "Unlock Full Report";
  static const String paymentSubtitle =
      "Get your detailed medical report with personalized recommendations.";
  static const String paymentFeature1 = "Detailed disease analysis";
  static const String paymentFeature2 = "Personalized medical recommendations";
  static const String paymentFeature3 = "Downloadable PDF report";
  static const String paymentFeature4 = "Doctor consultation suggestions";
  static const String paymentAmount = " 4.99 ";
  static const String paymentBtn = "Pay with Stripe";
  static const String paymentSecure = "Secured by Stripe";
  static const String paymentCancelAnytime = "One-time payment, no subscription";

  // --- Screen 8: Full Report ---
  static const String fullReportTitle = "Full Diagnostic Report";
  static const String fullReportSubtitle =
      "Your comprehensive health analysis and recommendations.";
  static const String downloadReportBtn = "Download PDF";
  static const String shareReportBtn = "Share Report";
  static const String recommendationsLabel = "Recommendations";
  static const String diagnosisDetailsLabel = "Diagnosis Details";
  static const String consultDoctorLabel = "Consult a Doctor";

  // --- General ---
  static const String backBtn = "Back";
  static const String cancelBtn = "Cancel";
  static const String retryBtn = "Retry";
  static const String errorGeneral = "Something went wrong. Please try again.";
  static const String loadingText = "Please wait...";
  
  static const String genderMale = "Male";
  static const String genderFemale = "Female";
  static const String activitySedentary = "Sedentary (Low Activity)";
  static const String activityModerate = "Moderate Activity";
  static const String activityActive = "Highly Active";
  static const String yes = "Yes";
  static const String no = "No";
  }