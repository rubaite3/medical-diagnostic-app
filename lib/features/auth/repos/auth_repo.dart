import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:medical_diagnostic_app1/core/api/app_error.dart';
import 'package:medical_diagnostic_app1/core/api/app_response.dart';
import 'package:medical_diagnostic_app1/core/api/dio_client.dart';
import 'package:medical_diagnostic_app1/core/consts/api_consts.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/email_verification/resend_email_verification_request.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/general/login_request.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/general/register_request.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/password/forget_password_request.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/profile/update_profile_request.dart';

import 'requests/general/refresh_token_request.dart';

class AuthRepo {
  Future<Either<AppError, AppResponse>> login(LoginRequest loginRequest) async {
    final response = await dioInstance.post(
      ApiConsts.login,
      data: loginRequest,
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> register(
    RegisterRequest registerRequest,
  ) async {
    final response = await dioInstance.post(
      ApiConsts.register,
      data: registerRequest,
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> refreshToken(
    RefreshTokenRequest refreshTokenRequest,
  ) async {
    final response = await dioInstance.post(
      ApiConsts.refreshToken,
      data: refreshTokenRequest,
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> logout() async {
    final response = await dioInstance.post(ApiConsts.logout);
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> resendEmailVerification(
    ResendEmailVerificationRequest resendEmailVerificationRequest,
  ) async {
    final response = await dioInstance.post(
      ApiConsts.resendEmailVer,
      data: resendEmailVerificationRequest,
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> forgotPassword(
    ForgetPasswordRequest forgetPasswordRequest,
  ) async {
    final response = await dioInstance.post(
      ApiConsts.forgetPassword,
      data: forgetPasswordRequest,
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> viewProfile() async {
    final response = await dioInstance.get(ApiConsts.profile);
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> updateProfile(
    UpdateProfileRequest updateProfileRequest,
  ) async {
    final response = await dioInstance.patch(
      ApiConsts.profile,
      data: updateProfileRequest.toFormData(),
    );
    return Utils.mapStatusCodeToResponse(response);
  }
}
