// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Vitalia`
  String get appTitle {
    return Intl.message(
      'Vitalia',
      name: 'appTitle',
      desc: 'App title',
      args: [],
    );
  }

  /// `Smart AI Diagnosis`
  String get onboardingTitle1 {
    return Intl.message(
      'Smart AI Diagnosis',
      name: 'onboardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Answer an intelligent questionnaire powered by AI to determine your symptoms accurately.`
  String get onboardingDesc1 {
    return Intl.message(
      'Answer an intelligent questionnaire powered by AI to determine your symptoms accurately.',
      name: 'onboardingDesc1',
      desc: '',
      args: [],
    );
  }

  /// `Connect with a Doctor`
  String get onboardingTitle2 {
    return Intl.message(
      'Connect with a Doctor',
      name: 'onboardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Communicate directly with specialized doctors via phone calls or WhatsApp.`
  String get onboardingDesc2 {
    return Intl.message(
      'Communicate directly with specialized doctors via phone calls or WhatsApp.',
      name: 'onboardingDesc2',
      desc: '',
      args: [],
    );
  }

  /// `Comprehensive Medical Record`
  String get onboardingTitle3 {
    return Intl.message(
      'Comprehensive Medical Record',
      name: 'onboardingTitle3',
      desc: '',
      args: [],
    );
  }

  /// `View and download encoded diagnostic reports in PDF format for easy future reference.`
  String get onboardingDesc3 {
    return Intl.message(
      'View and download encoded diagnostic reports in PDF format for easy future reference.',
      name: 'onboardingDesc3',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get onboardingButton {
    return Intl.message(
      'Continue',
      name: 'onboardingButton',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back`
  String get loginTitle {
    return Intl.message('Welcome Back', name: 'loginTitle', desc: '', args: []);
  }

  /// `Log in to your account`
  String get loginSubtitle {
    return Intl.message(
      'Log in to your account',
      name: 'loginSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginBtn {
    return Intl.message('Login', name: 'loginBtn', desc: '', args: []);
  }

  /// `Forgot Password?`
  String get forgotPasswordLink {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPasswordLink',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? `
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have an account? ',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUpLink {
    return Intl.message('Sign Up', name: 'signUpLink', desc: '', args: []);
  }

  /// `Create Account`
  String get signUpTitle {
    return Intl.message(
      'Create Account',
      name: 'signUpTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sign up to get started`
  String get signUpSubtitle {
    return Intl.message(
      'Sign up to get started',
      name: 'signUpSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUpBtn {
    return Intl.message('Sign Up', name: 'signUpBtn', desc: '', args: []);
  }

  /// `Already have an account? `
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account? ',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginLink {
    return Intl.message('Login', name: 'loginLink', desc: '', args: []);
  }

  /// `I agree to the Terms & Privacy Policy`
  String get termsAgree {
    return Intl.message(
      'I agree to the Terms & Privacy Policy',
      name: 'termsAgree',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotTitle {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotTitle',
      desc: '',
      args: [],
    );
  }

  /// `Don't worry! Enter your email below to receive a password reset OTP.`
  String get forgotSubtitle {
    return Intl.message(
      'Don\'t worry! Enter your email below to receive a password reset OTP.',
      name: 'forgotSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Send Reset OTP`
  String get sendResetOtpBtn {
    return Intl.message(
      'Send Reset OTP',
      name: 'sendResetOtpBtn',
      desc: '',
      args: [],
    );
  }

  /// `Back to Login`
  String get backToLogin {
    return Intl.message(
      'Back to Login',
      name: 'backToLogin',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetTitle {
    return Intl.message(
      'Reset Password',
      name: 'resetTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter your new password below and confirm it to update your account.`
  String get resetSubtitle {
    return Intl.message(
      'Enter your new password below and confirm it to update your account.',
      name: 'resetSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Update Password`
  String get updatePasswordBtn {
    return Intl.message(
      'Update Password',
      name: 'updatePasswordBtn',
      desc: '',
      args: [],
    );
  }

  /// `Reset link sent successfully.`
  String get resetSuccessMessage {
    return Intl.message(
      'Reset link sent successfully.',
      name: 'resetSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Verify Email`
  String get otpTitle {
    return Intl.message('Verify Email', name: 'otpTitle', desc: '', args: []);
  }

  /// `Enter the 6-digit code sent to`
  String get otpSubtitle {
    return Intl.message(
      'Enter the 6-digit code sent to',
      name: 'otpSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get otpBtn {
    return Intl.message('Verify', name: 'otpBtn', desc: '', args: []);
  }

  /// `Resend code in `
  String get otpResend {
    return Intl.message(
      'Resend code in ',
      name: 'otpResend',
      desc: '',
      args: [],
    );
  }

  /// `Resend code`
  String get otpResendActive {
    return Intl.message(
      'Resend code',
      name: 'otpResendActive',
      desc: '',
      args: [],
    );
  }

  /// `Email verified successfully!`
  String get otpSuccess {
    return Intl.message(
      'Email verified successfully!',
      name: 'otpSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get hintFullName {
    return Intl.message('Full Name', name: 'hintFullName', desc: '', args: []);
  }

  /// `Email Address`
  String get hintEmail {
    return Intl.message('Email Address', name: 'hintEmail', desc: '', args: []);
  }

  /// `Password`
  String get hintPassword {
    return Intl.message('Password', name: 'hintPassword', desc: '', args: []);
  }

  /// `New Password`
  String get hintNewPassword {
    return Intl.message(
      'New Password',
      name: 'hintNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get hintConfirmPassword {
    return Intl.message(
      'Confirm New Password',
      name: 'hintConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPasswordHint {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPasswordHint',
      desc: '',
      args: [],
    );
  }

  /// `Or continue with`
  String get orContinueWith {
    return Intl.message(
      'Or continue with',
      name: 'orContinueWith',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get googleSignIn {
    return Intl.message('Google', name: 'googleSignIn', desc: '', args: []);
  }

  /// `Medical Profile`
  String get patientProfileTitle {
    return Intl.message(
      'Medical Profile',
      name: 'patientProfileTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please complete your medical info accurately`
  String get patientProfileSubtitle {
    return Intl.message(
      'Please complete your medical info accurately',
      name: 'patientProfileSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Birth Date`
  String get birthDateHint {
    return Intl.message(
      'Birth Date',
      name: 'birthDateHint',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get ageHint {
    return Intl.message('Age', name: 'ageHint', desc: '', args: []);
  }

  /// `Occupation`
  String get occupationHint {
    return Intl.message(
      'Occupation',
      name: 'occupationHint',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get genderHint {
    return Intl.message('Gender', name: 'genderHint', desc: '', args: []);
  }

  /// `Activity Level`
  String get activityLevelHint {
    return Intl.message(
      'Activity Level',
      name: 'activityLevelHint',
      desc: '',
      args: [],
    );
  }

  /// `Are you a smoker?`
  String get smokerQuestion {
    return Intl.message(
      'Are you a smoker?',
      name: 'smokerQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Do you have diabetes?`
  String get diabetesQuestion {
    return Intl.message(
      'Do you have diabetes?',
      name: 'diabetesQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Do you have hypertension?`
  String get hypertensionQuestion {
    return Intl.message(
      'Do you have hypertension?',
      name: 'hypertensionQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Do you drink alcohol?`
  String get alcoholQuestion {
    return Intl.message(
      'Do you drink alcohol?',
      name: 'alcoholQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Are you currently pregnant?`
  String get pregnantQuestion {
    return Intl.message(
      'Are you currently pregnant?',
      name: 'pregnantQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Save Medical Profile`
  String get saveProfileBtn {
    return Intl.message(
      'Save Medical Profile',
      name: 'saveProfileBtn',
      desc: '',
      args: [],
    );
  }

  /// `Reset Medical Profile`
  String get resetProfileBtn {
    return Intl.message(
      'Reset Medical Profile',
      name: 'resetProfileBtn',
      desc: '',
      args: [],
    );
  }

  /// `Welcome, `
  String get welcome {
    return Intl.message('Welcome, ', name: 'welcome', desc: '', args: []);
  }

  /// `How are you feeling today? Let's start your health assessment.`
  String get homeIntro {
    return Intl.message(
      'How are you feeling today? Let\'s start your health assessment.',
      name: 'homeIntro',
      desc: '',
      args: [],
    );
  }

  /// `Start Diagnosis`
  String get startDiagnosis {
    return Intl.message(
      'Start Diagnosis',
      name: 'startDiagnosis',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get navHome {
    return Intl.message('Home', name: 'navHome', desc: '', args: []);
  }

  /// `Profile`
  String get navProfile {
    return Intl.message('Profile', name: 'navProfile', desc: '', args: []);
  }

  /// `Settings`
  String get navSettings {
    return Intl.message('Settings', name: 'navSettings', desc: '', args: []);
  }

  /// `Settings`
  String get settingsTitle {
    return Intl.message('Settings', name: 'settingsTitle', desc: '', args: []);
  }

  /// `Account settings`
  String get accountSettings {
    return Intl.message(
      'Account settings',
      name: 'accountSettings',
      desc: '',
      args: [],
    );
  }

  /// `Account login`
  String get accountLogin {
    return Intl.message(
      'Account login',
      name: 'accountLogin',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Support`
  String get support {
    return Intl.message('Support', name: 'support', desc: '', args: []);
  }

  /// `Feedback`
  String get feedback {
    return Intl.message('Feedback', name: 'feedback', desc: '', args: []);
  }

  /// `App Updates`
  String get appUpdates {
    return Intl.message('App Updates', name: 'appUpdates', desc: '', args: []);
  }

  /// `About Vitalia`
  String get aboutVitalia {
    return Intl.message(
      'About Vitalia',
      name: 'aboutVitalia',
      desc: '',
      args: [],
    );
  }

  /// `Safety information`
  String get safetyInfo {
    return Intl.message(
      'Safety information',
      name: 'safetyInfo',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logout {
    return Intl.message('Log out', name: 'logout', desc: '', args: []);
  }

  /// `Version 4.4.2 (2010356790)`
  String get version {
    return Intl.message(
      'Version 4.4.2 (2010356790)',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get accountTitle {
    return Intl.message('Account', name: 'accountTitle', desc: '', args: []);
  }

  /// `You have signed up with Email:`
  String get signedUpWithGoogle {
    return Intl.message(
      'You have signed up with Email:',
      name: 'signedUpWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `User ID:`
  String get userIdLabel {
    return Intl.message('User ID:', name: 'userIdLabel', desc: '', args: []);
  }

  /// `Delete your account and data`
  String get deleteAccount {
    return Intl.message(
      'Delete your account and data',
      name: 'deleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete your account?`
  String get deleteAccountConfirm {
    return Intl.message(
      'Are you sure you want to delete your account?',
      name: 'deleteAccountConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Change language`
  String get changeLanguage {
    return Intl.message(
      'Change language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Changes to your Vitalia app`
  String get updatesTitle {
    return Intl.message(
      'Changes to your Vitalia app',
      name: 'updatesTitle',
      desc: '',
      args: [],
    );
  }

  /// `We've made a few updates to improve your experience and continue providing you with the best possible health assessment experience.`
  String get updatesDesc {
    return Intl.message(
      'We\'ve made a few updates to improve your experience and continue providing you with the best possible health assessment experience.',
      name: 'updatesDesc',
      desc: '',
      args: [],
    );
  }

  /// `What's new`
  String get whatIsNew {
    return Intl.message('What\'s new', name: 'whatIsNew', desc: '', args: []);
  }

  /// `Your assessment history is back. You can now access your previous health assessments directly in the app.`
  String get historyBack {
    return Intl.message(
      'Your assessment history is back. You can now access your previous health assessments directly in the app.',
      name: 'historyBack',
      desc: '',
      args: [],
    );
  }

  /// `Romanian and Swahili are available again. You can now use the app in English, German, French, Spanish, Portuguese, Romanian or Swahili.`
  String get languagesAdded {
    return Intl.message(
      'Romanian and Swahili are available again. You can now use the app in English, German, French, Spanish, Portuguese, Romanian or Swahili.',
      name: 'languagesAdded',
      desc: '',
      args: [],
    );
  }

  /// `Questions or feedback?`
  String get questionsFeedback {
    return Intl.message(
      'Questions or feedback?',
      name: 'questionsFeedback',
      desc: '',
      args: [],
    );
  }

  /// `We'd love to hear from you. Contact us at support@vitalia.com.`
  String get contactSupport {
    return Intl.message(
      'We\'d love to hear from you. Contact us at support@vitalia.com.',
      name: 'contactSupport',
      desc: '',
      args: [],
    );
  }

  /// `Read more`
  String get readMore {
    return Intl.message('Read more', name: 'readMore', desc: '', args: []);
  }

  /// `What is your gender?`
  String get diagnosisGenderTitle {
    return Intl.message(
      'What is your gender?',
      name: 'diagnosisGenderTitle',
      desc: '',
      args: [],
    );
  }

  /// `This helps us provide gender-specific medical analysis.`
  String get diagnosisGenderSubtitle {
    return Intl.message(
      'This helps us provide gender-specific medical analysis.',
      name: 'diagnosisGenderSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `What is your activity level?`
  String get diagnosisActivityTitle {
    return Intl.message(
      'What is your activity level?',
      name: 'diagnosisActivityTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select the option that best describes your daily movement.`
  String get diagnosisActivitySubtitle {
    return Intl.message(
      'Select the option that best describes your daily movement.',
      name: 'diagnosisActivitySubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Do you smoke?`
  String get diagnosisSmokerTitle {
    return Intl.message(
      'Do you smoke?',
      name: 'diagnosisSmokerTitle',
      desc: '',
      args: [],
    );
  }

  /// `Smoking status is a key factor in many health conditions.`
  String get diagnosisSmokerSubtitle {
    return Intl.message(
      'Smoking status is a key factor in many health conditions.',
      name: 'diagnosisSmokerSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `What is your date of birth?`
  String get diagnosisBirthDateTitle {
    return Intl.message(
      'What is your date of birth?',
      name: 'diagnosisBirthDateTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your age helps us provide more accurate assessments.`
  String get diagnosisBirthDateSubtitle {
    return Intl.message(
      'Your age helps us provide more accurate assessments.',
      name: 'diagnosisBirthDateSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Tap to select your birth date`
  String get diagnosisBirthDateHint {
    return Intl.message(
      'Tap to select your birth date',
      name: 'diagnosisBirthDateHint',
      desc: '',
      args: [],
    );
  }

  /// `You must select your birth date!`
  String get diagMustEnterBirthDate {
    return Intl.message(
      'You must select your birth date!',
      name: 'diagMustEnterBirthDate',
      desc: '',
      args: [],
    );
  }

  /// `What is your occupation?`
  String get diagnosisOccupationTitle {
    return Intl.message(
      'What is your occupation?',
      name: 'diagnosisOccupationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your occupation helps us understand your daily activity and environment.`
  String get diagnosisOccupationSubtitle {
    return Intl.message(
      'Your occupation helps us understand your daily activity and environment.',
      name: 'diagnosisOccupationSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `e.g. Teacher, Engineer, Student`
  String get diagnosisOccupationHint {
    return Intl.message(
      'e.g. Teacher, Engineer, Student',
      name: 'diagnosisOccupationHint',
      desc: '',
      args: [],
    );
  }

  /// `You must enter your occupation!`
  String get diagMustEnterOccupation {
    return Intl.message(
      'You must enter your occupation!',
      name: 'diagMustEnterOccupation',
      desc: '',
      args: [],
    );
  }

  /// `Do you drink alcohol?`
  String get diagnosisAlcoholTitle {
    return Intl.message(
      'Do you drink alcohol?',
      name: 'diagnosisAlcoholTitle',
      desc: '',
      args: [],
    );
  }

  /// `Alcohol consumption can influence several health conditions.`
  String get diagnosisAlcoholSubtitle {
    return Intl.message(
      'Alcohol consumption can influence several health conditions.',
      name: 'diagnosisAlcoholSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Do you have diabetes?`
  String get diagnosisDiabetesTitle {
    return Intl.message(
      'Do you have diabetes?',
      name: 'diagnosisDiabetesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please indicate if you have been diagnosed with diabetes.`
  String get diagnosisDiabetesSubtitle {
    return Intl.message(
      'Please indicate if you have been diagnosed with diabetes.',
      name: 'diagnosisDiabetesSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Do you have hypertension?`
  String get diagnosisHypertensionTitle {
    return Intl.message(
      'Do you have hypertension?',
      name: 'diagnosisHypertensionTitle',
      desc: '',
      args: [],
    );
  }

  /// `High blood pressure can affect various symptoms.`
  String get diagnosisHypertensionSubtitle {
    return Intl.message(
      'High blood pressure can affect various symptoms.',
      name: 'diagnosisHypertensionSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Are you pregnant?`
  String get diagnosisPregnantTitle {
    return Intl.message(
      'Are you pregnant?',
      name: 'diagnosisPregnantTitle',
      desc: '',
      args: [],
    );
  }

  /// `Pregnancy changes how we evaluate certain symptoms.`
  String get diagnosisPregnantSubtitle {
    return Intl.message(
      'Pregnancy changes how we evaluate certain symptoms.',
      name: 'diagnosisPregnantSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get diagnosisNextBtn {
    return Intl.message('Next', name: 'diagnosisNextBtn', desc: '', args: []);
  }

  /// `Start Assessment`
  String get diagnosisFinishBaselineBtn {
    return Intl.message(
      'Start Assessment',
      name: 'diagnosisFinishBaselineBtn',
      desc: '',
      args: [],
    );
  }

  /// `Select Your Symptoms`
  String get symptomSearchTitle {
    return Intl.message(
      'Select Your Symptoms',
      name: 'symptomSearchTitle',
      desc: '',
      args: [],
    );
  }

  /// `Search and add all symptoms you are currently experiencing.`
  String get symptomSearchSubtitle {
    return Intl.message(
      'Search and add all symptoms you are currently experiencing.',
      name: 'symptomSearchSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Search for a symptom...`
  String get symptomSearchHint {
    return Intl.message(
      'Search for a symptom...',
      name: 'symptomSearchHint',
      desc: '',
      args: [],
    );
  }

  /// `Selected Symptoms`
  String get selectedSymptomsLabel {
    return Intl.message(
      'Selected Symptoms',
      name: 'selectedSymptomsLabel',
      desc: '',
      args: [],
    );
  }

  /// `No symptoms found. Try a different search.`
  String get noSymptomsFound {
    return Intl.message(
      'No symptoms found. Try a different search.',
      name: 'noSymptomsFound',
      desc: '',
      args: [],
    );
  }

  /// `No symptoms selected yet.`
  String get noSymptomsSelected {
    return Intl.message(
      'No symptoms selected yet.',
      name: 'noSymptomsSelected',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueBtn {
    return Intl.message('Continue', name: 'continueBtn', desc: '', args: []);
  }

  /// `Symptom Details`
  String get symptomQuestionsTitle {
    return Intl.message(
      'Symptom Details',
      name: 'symptomQuestionsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please answer the following questions about your symptom.`
  String get symptomQuestionsSubtitle {
    return Intl.message(
      'Please answer the following questions about your symptom.',
      name: 'symptomQuestionsSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get nextSymptomBtn {
    return Intl.message('Next', name: 'nextSymptomBtn', desc: '', args: []);
  }

  /// `Submit & Continue`
  String get submitAnswersBtn {
    return Intl.message(
      'Submit & Continue',
      name: 'submitAnswersBtn',
      desc: '',
      args: [],
    );
  }

  /// `Follow-Up Questions`
  String get followUpTitle {
    return Intl.message(
      'Follow-Up Questions',
      name: 'followUpTitle',
      desc: '',
      args: [],
    );
  }

  /// `Answer these questions to help us refine your diagnosis.`
  String get followUpSubtitle {
    return Intl.message(
      'Answer these questions to help us refine your diagnosis.',
      name: 'followUpSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Question`
  String get followUpProgress {
    return Intl.message(
      'Question',
      name: 'followUpProgress',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get submitFollowUpBtn {
    return Intl.message('Next', name: 'submitFollowUpBtn', desc: '', args: []);
  }

  /// `Preliminary Results`
  String get preliminaryResultsTitle {
    return Intl.message(
      'Preliminary Results',
      name: 'preliminaryResultsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Based on your symptoms, here are the most probable conditions.`
  String get preliminaryResultsSubtitle {
    return Intl.message(
      'Based on your symptoms, here are the most probable conditions.',
      name: 'preliminaryResultsSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Probability`
  String get probabilityLabel {
    return Intl.message(
      'Probability',
      name: 'probabilityLabel',
      desc: '',
      args: [],
    );
  }

  /// `View Full Report`
  String get viewFullReportBtn {
    return Intl.message(
      'View Full Report',
      name: 'viewFullReportBtn',
      desc: '',
      args: [],
    );
  }

  /// `Start New Diagnosis`
  String get startNewDiagnosisBtn {
    return Intl.message(
      'Start New Diagnosis',
      name: 'startNewDiagnosisBtn',
      desc: '',
      args: [],
    );
  }

  /// `Unlock Full Report`
  String get paymentTitle {
    return Intl.message(
      'Unlock Full Report',
      name: 'paymentTitle',
      desc: '',
      args: [],
    );
  }

  /// `Get your detailed medical report with personalized recommendations.`
  String get paymentSubtitle {
    return Intl.message(
      'Get your detailed medical report with personalized recommendations.',
      name: 'paymentSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Detailed disease analysis`
  String get paymentFeature1 {
    return Intl.message(
      'Detailed disease analysis',
      name: 'paymentFeature1',
      desc: '',
      args: [],
    );
  }

  /// `Personalized medical recommendations`
  String get paymentFeature2 {
    return Intl.message(
      'Personalized medical recommendations',
      name: 'paymentFeature2',
      desc: '',
      args: [],
    );
  }

  /// `Downloadable PDF report`
  String get paymentFeature3 {
    return Intl.message(
      'Downloadable PDF report',
      name: 'paymentFeature3',
      desc: '',
      args: [],
    );
  }

  /// `Doctor consultation suggestions`
  String get paymentFeature4 {
    return Intl.message(
      'Doctor consultation suggestions',
      name: 'paymentFeature4',
      desc: '',
      args: [],
    );
  }

  /// `4.99`
  String get paymentAmount {
    return Intl.message('4.99', name: 'paymentAmount', desc: '', args: []);
  }

  /// `Pay with Stripe`
  String get paymentBtn {
    return Intl.message(
      'Pay with Stripe',
      name: 'paymentBtn',
      desc: '',
      args: [],
    );
  }

  /// `Secured by Stripe`
  String get paymentSecure {
    return Intl.message(
      'Secured by Stripe',
      name: 'paymentSecure',
      desc: '',
      args: [],
    );
  }

  /// `One-time payment, no subscription`
  String get paymentCancelAnytime {
    return Intl.message(
      'One-time payment, no subscription',
      name: 'paymentCancelAnytime',
      desc: '',
      args: [],
    );
  }

  /// `Full Diagnostic Report`
  String get fullReportTitle {
    return Intl.message(
      'Full Diagnostic Report',
      name: 'fullReportTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your comprehensive health analysis and recommendations.`
  String get fullReportSubtitle {
    return Intl.message(
      'Your comprehensive health analysis and recommendations.',
      name: 'fullReportSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Download PDF`
  String get downloadReportBtn {
    return Intl.message(
      'Download PDF',
      name: 'downloadReportBtn',
      desc: '',
      args: [],
    );
  }

  /// `Downloading...`
  String get downloadingReportBtn {
    return Intl.message(
      'Downloading...',
      name: 'downloadingReportBtn',
      desc: '',
      args: [],
    );
  }

  /// `Share Report`
  String get shareReportBtn {
    return Intl.message(
      'Share Report',
      name: 'shareReportBtn',
      desc: '',
      args: [],
    );
  }

  /// `Recommendations`
  String get recommendationsLabel {
    return Intl.message(
      'Recommendations',
      name: 'recommendationsLabel',
      desc: '',
      args: [],
    );
  }

  /// `Diagnosis Details`
  String get diagnosisDetailsLabel {
    return Intl.message(
      'Diagnosis Details',
      name: 'diagnosisDetailsLabel',
      desc: '',
      args: [],
    );
  }

  /// `Consult a Doctor`
  String get consultDoctorLabel {
    return Intl.message(
      'Consult a Doctor',
      name: 'consultDoctorLabel',
      desc: '',
      args: [],
    );
  }

  /// `Please consult a qualified healthcare professional for further evaluation.`
  String get consultDoctorDefault {
    return Intl.message(
      'Please consult a qualified healthcare professional for further evaluation.',
      name: 'consultDoctorDefault',
      desc: '',
      args: [],
    );
  }

  /// `Diagnoses`
  String get diagnosesLabel {
    return Intl.message(
      'Diagnoses',
      name: 'diagnosesLabel',
      desc: '',
      args: [],
    );
  }

  /// `No diagnoses available.`
  String get noDiagnosesAvailable {
    return Intl.message(
      'No diagnoses available.',
      name: 'noDiagnosesAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get patientLabel {
    return Intl.message('Patient', name: 'patientLabel', desc: '', args: []);
  }

  /// `Completed At`
  String get completedAtLabel {
    return Intl.message(
      'Completed At',
      name: 'completedAtLabel',
      desc: '',
      args: [],
    );
  }

  /// `Session ID`
  String get sessionIdLabel {
    return Intl.message(
      'Session ID',
      name: 'sessionIdLabel',
      desc: '',
      args: [],
    );
  }

  /// `View Preview`
  String get viewPreviewBtn {
    return Intl.message(
      'View Preview',
      name: 'viewPreviewBtn',
      desc: '',
      args: [],
    );
  }

  /// `Session History`
  String get sessionHistoryTitle {
    return Intl.message(
      'Session History',
      name: 'sessionHistoryTitle',
      desc: '',
      args: [],
    );
  }

  /// `No completed sessions yet.`
  String get noSessionsYet {
    return Intl.message(
      'No completed sessions yet.',
      name: 'noSessionsYet',
      desc: '',
      args: [],
    );
  }

  /// `View Report`
  String get viewReport {
    return Intl.message('View Report', name: 'viewReport', desc: '', args: []);
  }

  /// `Notifications`
  String get notificationsTitle {
    return Intl.message(
      'Notifications',
      name: 'notificationsTitle',
      desc: '',
      args: [],
    );
  }

  /// `No notifications yet.`
  String get noNotifications {
    return Intl.message(
      'No notifications yet.',
      name: 'noNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Mark as read`
  String get markAsRead {
    return Intl.message('Mark as read', name: 'markAsRead', desc: '', args: []);
  }

  /// `Mark as unread`
  String get markAsUnread {
    return Intl.message(
      'Mark as unread',
      name: 'markAsUnread',
      desc: '',
      args: [],
    );
  }

  /// `Mark all as read`
  String get markAllAsRead {
    return Intl.message(
      'Mark all as read',
      name: 'markAllAsRead',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get deleteNotification {
    return Intl.message(
      'Delete',
      name: 'deleteNotification',
      desc: '',
      args: [],
    );
  }

  /// `Delete all`
  String get deleteAllNotifications {
    return Intl.message(
      'Delete all',
      name: 'deleteAllNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete all notifications?`
  String get deleteAllNotificationsConfirm {
    return Intl.message(
      'Are you sure you want to delete all notifications?',
      name: 'deleteAllNotificationsConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Conversation`
  String get conversationLabel {
    return Intl.message(
      'Conversation',
      name: 'conversationLabel',
      desc: '',
      args: [],
    );
  }

  /// `Confidence`
  String get confidenceLabel {
    return Intl.message(
      'Confidence',
      name: 'confidenceLabel',
      desc: '',
      args: [],
    );
  }

  /// `Specialist`
  String get specialistLabel {
    return Intl.message(
      'Specialist',
      name: 'specialistLabel',
      desc: '',
      args: [],
    );
  }

  /// `Advice`
  String get adviceLabel {
    return Intl.message('Advice', name: 'adviceLabel', desc: '', args: []);
  }

  /// `Back`
  String get backBtn {
    return Intl.message('Back', name: 'backBtn', desc: '', args: []);
  }

  /// `Cancel`
  String get cancelBtn {
    return Intl.message('Cancel', name: 'cancelBtn', desc: '', args: []);
  }

  /// `Retry`
  String get retryBtn {
    return Intl.message('Retry', name: 'retryBtn', desc: '', args: []);
  }

  /// `Something went wrong. Please try again.`
  String get errorGeneral {
    return Intl.message(
      'Something went wrong. Please try again.',
      name: 'errorGeneral',
      desc: '',
      args: [],
    );
  }

  /// `Please wait...`
  String get loadingText {
    return Intl.message(
      'Please wait...',
      name: 'loadingText',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get genderMale {
    return Intl.message('Male', name: 'genderMale', desc: '', args: []);
  }

  /// `Female`
  String get genderFemale {
    return Intl.message('Female', name: 'genderFemale', desc: '', args: []);
  }

  /// `Sedentary (Low Activity)`
  String get activitySedentary {
    return Intl.message(
      'Sedentary (Low Activity)',
      name: 'activitySedentary',
      desc: '',
      args: [],
    );
  }

  /// `Moderate Activity`
  String get activityModerate {
    return Intl.message(
      'Moderate Activity',
      name: 'activityModerate',
      desc: '',
      args: [],
    );
  }

  /// `Highly Active`
  String get activityActive {
    return Intl.message(
      'Highly Active',
      name: 'activityActive',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message('Yes', name: 'yes', desc: '', args: []);
  }

  /// `No`
  String get no {
    return Intl.message('No', name: 'no', desc: '', args: []);
  }

  /// `Delete account feature is not available in the current API`
  String get accountDeleteUnavailable {
    return Intl.message(
      'Delete account feature is not available in the current API',
      name: 'accountDeleteUnavailable',
      desc: '',
      args: [],
    );
  }

  /// `User ID copied`
  String get accountUserIdCopied {
    return Intl.message(
      'User ID copied',
      name: 'accountUserIdCopied',
      desc: '',
      args: [],
    );
  }

  /// `Account created! check your email`
  String get authAccountCreated {
    return Intl.message(
      'Account created! check your email',
      name: 'authAccountCreated',
      desc: '',
      args: [],
    );
  }

  /// `Logged in successfully!`
  String get authLoggedInSuccess {
    return Intl.message(
      'Logged in successfully!',
      name: 'authLoggedInSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Logged out successfully!`
  String get authLoggedOut {
    return Intl.message(
      'Logged out successfully!',
      name: 'authLoggedOut',
      desc: '',
      args: [],
    );
  }

  /// `You are offline!`
  String get authOffline {
    return Intl.message(
      'You are offline!',
      name: 'authOffline',
      desc: '',
      args: [],
    );
  }

  /// `Internet was restored!`
  String get authOnlineRestored {
    return Intl.message(
      'Internet was restored!',
      name: 'authOnlineRestored',
      desc: '',
      args: [],
    );
  }

  /// `Profile Updated!`
  String get authProfileUpdated {
    return Intl.message(
      'Profile Updated!',
      name: 'authProfileUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Session expired, Please login`
  String get authSessionExpired {
    return Intl.message(
      'Session expired, Please login',
      name: 'authSessionExpired',
      desc: '',
      args: [],
    );
  }

  /// `Answer submitted`
  String get diagAnswerSubmitted {
    return Intl.message(
      'Answer submitted',
      name: 'diagAnswerSubmitted',
      desc: '',
      args: [],
    );
  }

  /// `Answers submitted`
  String get diagAnswersSubmitted {
    return Intl.message(
      'Answers submitted',
      name: 'diagAnswersSubmitted',
      desc: '',
      args: [],
    );
  }

  /// `Generating report...`
  String get diagGeneratingReport {
    return Intl.message(
      'Generating report...',
      name: 'diagGeneratingReport',
      desc: '',
      args: [],
    );
  }

  /// `Loaded`
  String get diagLoaded {
    return Intl.message('Loaded', name: 'diagLoaded', desc: '', args: []);
  }

  /// `Loading next step...`
  String get diagLoadingNextStep {
    return Intl.message(
      'Loading next step...',
      name: 'diagLoadingNextStep',
      desc: '',
      args: [],
    );
  }

  /// `Loading questions...`
  String get diagLoadingQuestions {
    return Intl.message(
      'Loading questions...',
      name: 'diagLoadingQuestions',
      desc: '',
      args: [],
    );
  }

  /// `You must Choose an activity level!`
  String get diagMustChooseActivity {
    return Intl.message(
      'You must Choose an activity level!',
      name: 'diagMustChooseActivity',
      desc: '',
      args: [],
    );
  }

  /// `You must Choose a gender!`
  String get diagMustChooseGender {
    return Intl.message(
      'You must Choose a gender!',
      name: 'diagMustChooseGender',
      desc: '',
      args: [],
    );
  }

  /// `No questions available for this symptom.`
  String get diagNoQuestionsAvailable {
    return Intl.message(
      'No questions available for this symptom.',
      name: 'diagNoQuestionsAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Please select an answer.`
  String get diagPleaseSelectAnswer {
    return Intl.message(
      'Please select an answer.',
      name: 'diagPleaseSelectAnswer',
      desc: '',
      args: [],
    );
  }

  /// `Report ready`
  String get diagReportReady {
    return Intl.message(
      'Report ready',
      name: 'diagReportReady',
      desc: '',
      args: [],
    );
  }

  /// `Search completed`
  String get diagSearchCompleted {
    return Intl.message(
      'Search completed',
      name: 'diagSearchCompleted',
      desc: '',
      args: [],
    );
  }

  /// `Searching...`
  String get diagSearching {
    return Intl.message(
      'Searching...',
      name: 'diagSearching',
      desc: '',
      args: [],
    );
  }

  /// `Please select at least one symptom.`
  String get diagSelectAtLeastOneSymptom {
    return Intl.message(
      'Please select at least one symptom.',
      name: 'diagSelectAtLeastOneSymptom',
      desc: '',
      args: [],
    );
  }

  /// `Session started`
  String get diagSessionStarted {
    return Intl.message(
      'Session started',
      name: 'diagSessionStarted',
      desc: '',
      args: [],
    );
  }

  /// `Starting diagnosis...`
  String get diagStarting {
    return Intl.message(
      'Starting diagnosis...',
      name: 'diagStarting',
      desc: '',
      args: [],
    );
  }

  /// `Submitting...`
  String get diagSubmitting {
    return Intl.message(
      'Submitting...',
      name: 'diagSubmitting',
      desc: '',
      args: [],
    );
  }

  /// `Submitting answers...`
  String get diagSubmittingAnswers {
    return Intl.message(
      'Submitting answers...',
      name: 'diagSubmittingAnswers',
      desc: '',
      args: [],
    );
  }

  /// `Some Error occurred.`
  String get errorGeneric {
    return Intl.message(
      'Some Error occurred.',
      name: 'errorGeneric',
      desc: '',
      args: [],
    );
  }

  /// `No results available.`
  String get prelimNoResults {
    return Intl.message(
      'No results available.',
      name: 'prelimNoResults',
      desc: '',
      args: [],
    );
  }

  /// `Failed to capture image`
  String get profileImageCaptureFailed {
    return Intl.message(
      'Failed to capture image',
      name: 'profileImageCaptureFailed',
      desc: '',
      args: [],
    );
  }

  /// `Failed to pick image`
  String get profileImagePickFailed {
    return Intl.message(
      'Failed to pick image',
      name: 'profileImagePickFailed',
      desc: '',
      args: [],
    );
  }

  /// `No changes`
  String get profileNoChanges {
    return Intl.message(
      'No changes',
      name: 'profileNoChanges',
      desc: '',
      args: [],
    );
  }

  /// `Choose from Gallery`
  String get profileChooseFromGallery {
    return Intl.message(
      'Choose from Gallery',
      name: 'profileChooseFromGallery',
      desc: '',
      args: [],
    );
  }

  /// `Take a Photo`
  String get profileTakePhoto {
    return Intl.message(
      'Take a Photo',
      name: 'profileTakePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Remove Photo`
  String get profileRemovePhoto {
    return Intl.message(
      'Remove Photo',
      name: 'profileRemovePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Account deleted successfully`
  String get settingsAccountDeleted {
    return Intl.message(
      'Account deleted successfully',
      name: 'settingsAccountDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Deleting account...`
  String get settingsDeletingAccount {
    return Intl.message(
      'Deleting account...',
      name: 'settingsDeletingAccount',
      desc: '',
      args: [],
    );
  }

  /// `Symptoms Submitted successfully`
  String get symptomsSubmitted {
    return Intl.message(
      'Symptoms Submitted successfully',
      name: 'symptomsSubmitted',
      desc: '',
      args: [],
    );
  }

  /// `of`
  String get keyword_of {
    return Intl.message('of', name: 'keyword_of', desc: '', args: []);
  }

  /// `These are preliminary results based on AI analysis. Please consult a doctor for a confirmed diagnosis.`
  String get disclaimerMessage {
    return Intl.message(
      'These are preliminary results based on AI analysis. Please consult a doctor for a confirmed diagnosis.',
      name: 'disclaimerMessage',
      desc: '',
      args: [],
    );
  }

  /// `Some error occurred`
  String get someErrorOccurred {
    return Intl.message(
      'Some error occurred',
      name: 'someErrorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Choose LLM`
  String get chooseLlm {
    return Intl.message('Choose LLM', name: 'chooseLlm', desc: '', args: []);
  }

  /// `Refresh`
  String get refresh {
    return Intl.message('Refresh', name: 'refresh', desc: '', args: []);
  }

  /// `Failed to load LLMs`
  String get failedToLoadLlm {
    return Intl.message(
      'Failed to load LLMs',
      name: 'failedToLoadLlm',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message('Retry', name: 'retry', desc: '', args: []);
  }

  /// `No LLMs available`
  String get noLlmsAvailable {
    return Intl.message(
      'No LLMs available',
      name: 'noLlmsAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message('Submit', name: 'submit', desc: '', args: []);
  }

  /// `stripe`
  String get stripeBrand {
    return Intl.message('stripe', name: 'stripeBrand', desc: '', args: []);
  }

  /// `Terms and conditions`
  String get termsAndConditions {
    return Intl.message(
      'Terms and conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Third-party software`
  String get thirdPartySoftware {
    return Intl.message(
      'Third-party software',
      name: 'thirdPartySoftware',
      desc: '',
      args: [],
    );
  }

  /// `Medical quality`
  String get medicalQuality {
    return Intl.message(
      'Medical quality',
      name: 'medicalQuality',
      desc: '',
      args: [],
    );
  }

  /// `Vitalia GmbH`
  String get companyName {
    return Intl.message(
      'Vitalia GmbH',
      name: 'companyName',
      desc: '',
      args: [],
    );
  }

  /// `Neue Grünstraße 17\n10179 Berlin\nGermany`
  String get companyAddress {
    return Intl.message(
      'Neue Grünstraße 17\n10179 Berlin\nGermany',
      name: 'companyAddress',
      desc: '',
      args: [],
    );
  }

  /// `support@vitalia.com`
  String get supportEmail {
    return Intl.message(
      'support@vitalia.com',
      name: 'supportEmail',
      desc: '',
      args: [],
    );
  }

  /// `This section provides important safety information regarding the use of the application. Please read carefully.`
  String get safetyInfoBody {
    return Intl.message(
      'This section provides important safety information regarding the use of the application. Please read carefully.',
      name: 'safetyInfoBody',
      desc: '',
      args: [],
    );
  }

  /// `Session Preview`
  String get sessionPreview {
    return Intl.message(
      'Session Preview',
      name: 'sessionPreview',
      desc: '',
      args: [],
    );
  }

  /// `Enter session id...`
  String get enterSessionId {
    return Intl.message(
      'Enter session id...',
      name: 'enterSessionId',
      desc: '',
      args: [],
    );
  }

  /// `Email must not be empty`
  String get emailEmpty {
    return Intl.message(
      'Email must not be empty',
      name: 'emailEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email format`
  String get invalidEmail {
    return Intl.message(
      'Invalid email format',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password must not be empty`
  String get passwordEmpty {
    return Intl.message(
      'Password must not be empty',
      name: 'passwordEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters`
  String get passwordTooShort {
    return Intl.message(
      'Password must be at least 8 characters',
      name: 'passwordTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Passwords must match`
  String get passwordsMustMatch {
    return Intl.message(
      'Passwords must match',
      name: 'passwordsMustMatch',
      desc: '',
      args: [],
    );
  }

  /// `Name must not be empty`
  String get nameEmpty {
    return Intl.message(
      'Name must not be empty',
      name: 'nameEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password must not be empty`
  String get confirmPasswordEmpty {
    return Intl.message(
      'Confirm password must not be empty',
      name: 'confirmPasswordEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Medical History`
  String get medicalHistory {
    return Intl.message(
      'Medical History',
      name: 'medicalHistory',
      desc: '',
      args: [],
    );
  }

  /// `Not logged in`
  String get notLoggedIn {
    return Intl.message(
      'Not logged in',
      name: 'notLoggedIn',
      desc: '',
      args: [],
    );
  }

  /// `Download failed`
  String get downloadFailed {
    return Intl.message(
      'Download failed',
      name: 'downloadFailed',
      desc: '',
      args: [],
    );
  }

  /// `Failed to download report`
  String get failedToDownloadReport {
    return Intl.message(
      'Failed to download report',
      name: 'failedToDownloadReport',
      desc: '',
      args: [],
    );
  }

  /// `Invalid request`
  String get invalidRequest {
    return Intl.message(
      'Invalid request',
      name: 'invalidRequest',
      desc: '',
      args: [],
    );
  }

  /// `Access denied`
  String get accessDenied {
    return Intl.message(
      'Access denied',
      name: 'accessDenied',
      desc: '',
      args: [],
    );
  }

  /// `The requested information could not be found`
  String get notFound {
    return Intl.message(
      'The requested information could not be found',
      name: 'notFound',
      desc: '',
      args: [],
    );
  }

  /// `Conflict occurred`
  String get conflictOccurred {
    return Intl.message(
      'Conflict occurred',
      name: 'conflictOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected error occurred`
  String get unexpectedError {
    return Intl.message(
      'Unexpected error occurred',
      name: 'unexpectedError',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection detected, please try again.`
  String get noInternet {
    return Intl.message(
      'No internet connection detected, please try again.',
      name: 'noInternet',
      desc: '',
      args: [],
    );
  }

  /// `The connection has timed out, please try again.`
  String get connectionTimeout {
    return Intl.message(
      'The connection has timed out, please try again.',
      name: 'connectionTimeout',
      desc: '',
      args: [],
    );
  }
  /// `Blood Group`
  String get bloodGroupHint {
    return Intl.message(
      'Blood Group',
      name: 'bloodGroupHint',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get user {
    return Intl.message('User', name: 'user', desc: '', args: []);
  }

  String get reportStatusReviewed {
    return Intl.message(
      'Reviewed',
      name: 'reportStatusReviewed',
      desc: '',
      args: [],
    );
  }

  String get reportStatusUnderReview {
    return Intl.message(
      'Under Review',
      name: 'reportStatusUnderReview',
      desc: '',
      args: [],
    );
  }

  String get reportStatusSubtitle {
    return Intl.message(
      'Report Status',
      name: 'reportStatusSubtitle',
      desc: '',
      args: [],
    );
  }

  String get stepPaymentSuccess {
    return Intl.message(
      'Payment Successful',
      name: 'stepPaymentSuccess',
      desc: '',
      args: [],
    );
  }

  String get stepAiAnalysis {
    return Intl.message(
      'AI Analysis',
      name: 'stepAiAnalysis',
      desc: '',
      args: [],
    );
  }

  String get stepDoctorReview {
    return Intl.message(
      'Doctor Review',
      name: 'stepDoctorReview',
      desc: '',
      args: [],
    );
  }

  String get stepDoctorReviewInProgress {
    return Intl.message(
      'Doctor Review in Progress',
      name: 'stepDoctorReviewInProgress',
      desc: '',
      args: [],
    );
  }

  String get stepReceivePdf {
    return Intl.message(
      'Receive PDF',
      name: 'stepReceivePdf',
      desc: '',
      args: [],
    );
  }

  String get doctorInCharge {
    return Intl.message(
      'Doctor in Charge',
      name: 'doctorInCharge',
      desc: '',
      args: [],
    );
  }

  String get noDoctorAssigned {
    return Intl.message(
      'No Doctor Assigned',
      name: 'noDoctorAssigned',
      desc: '',
      args: [],
    );
  }

  String get doctorAvailable {
    return Intl.message(
      'Doctor Available',
      name: 'doctorAvailable',
      desc: '',
      args: [],
    );
  }

  String get expectedReviewTime {
    return Intl.message(
      'Expected Review Time',
      name: 'expectedReviewTime',
      desc: '',
      args: [],
    );
  }

  String get lastLogin {
    return Intl.message(
      'Last Login',
      name: 'lastLogin',
      desc: '',
      args: [],
    );
  }

  String? get mockDoctorName => null;

  String? get mockDoctorSpecialist => null;

  String get mockExpectedTime {
    return Intl.message(
      'Expected Time',
      name: 'mockExpectedTime',
      desc: '',
      args: [],
    );
  }

  String get mockLastLogin {
    return Intl.message(
      'Last Login',
      name: 'mockLastLogin',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'ko'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
